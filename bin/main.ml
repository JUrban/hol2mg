(* hol2mg command-line driver. *)

open Hol

let rec mkdir_p d =
  if d <> "" && d <> "." && d <> "/" && not (Sys.file_exists d) then begin
    mkdir_p (Filename.dirname d);
    (try Unix.mkdir d 0o755 with Unix.Unix_error (Unix.EEXIST, _, _) -> ())
  end

let usage = "hol2mg translate --export FILE --sig FILE --mappings F1,F2 --out DIR --profile NAME [--srcindex FILE] [--only N1,N2] [--manifest FILE] [--report FILE]"

let args = Array.to_list Sys.argv

exception Timeout
let () = Printexc.record_backtrace true
let () = Sys.set_signal Sys.sigalrm (Sys.Signal_handle (fun _ -> raise Timeout))

let opt name =
  let rec go = function
    | k :: v :: _ when k = name -> Some v
    | _ :: r -> go r
    | [] -> None
  in
  go args

let req name = match opt name with Some v -> v | None -> (prerr_endline ("missing " ^ name ^ "\n" ^ usage); exit 2)

let read_srcindex file : (string, string * int) Hashtbl.t =
  let tbl = Hashtbl.create 4096 in
  (match file with
   | None -> ()
   | Some f ->
       let j = Yojson.Safe.from_file f in
       (match Yojson.Safe.Util.member "index" j with
        | `Assoc l ->
            List.iter (fun (k, v) ->
              match v with
              | `List [ `String file; `Int line ] -> Hashtbl.replace tbl k (file, line)
              | _ -> ()) l
        | _ -> ()));
  tbl

let shard_of_file f =
  let b = Filename.basename f in
  let b = (try Filename.chop_extension b with _ -> b) in
  String.map (fun c -> if Mg.is_name_char c then c else '_') b

let used_thm_names : (string, unit) Hashtbl.t = Hashtbl.create 4096

let sanitize_thm_name s =
  let s = String.map (fun c -> if Mg.is_name_char c then c else '_') s in
  let s = if s = "" || (s.[0] >= '0' && s.[0] <= '9') then "thm_" ^ s else s in
  let cands = [ s; s ^ "_thm"; s ^ "_hl" ] @ List.init 50 (fun i -> s ^ "_hl" ^ string_of_int (i + 2)) in
  let n = List.find (fun c -> not (Mg.is_reserved c) && not (Hashtbl.mem used_thm_names c)) cands in
  Hashtbl.replace used_thm_names n (); n

let status_of_classes classes =
  if List.mem "generalization" classes then "generalization_required"
  else if List.mem "native_isomorphism" classes || List.mem "opaque" classes then "transport_required"
  else "exact_native"

let () =
  match args with
  | _ :: "translate" :: _ ->
      let export_file = req "--export" and sig_file = req "--sig" and mappings = req "--mappings"
      and out_dir = req "--out" and profile = req "--profile" in
      let only = (match opt "--only" with Some s -> String.split_on_char ',' s | None -> []) in
      Mg.load_signature sig_file;
      (match opt "--notations" with
       | Some f -> Mg.load_notation_table f
       | None ->
           let f = (try Filename.chop_extension sig_file with _ -> sig_file) ^ ".notations.json" in
           if Sys.file_exists f then Mg.load_notation_table f);
      Mg.declare_notation "In" (Mg.Infix (":e", 500, Mg.NoneA));
      Mg.declare_notation "Subq" (Mg.Infix ("c=", 500, Mg.NoneA));
      (* names declared by the native prelude modules are reserved too *)
      let natives = (match opt "--native" with
        | Some l -> String.split_on_char ',' l
        | None -> List.filter Sys.file_exists [ "mglib/native/prelude.mg"; "mglib/native/finseq.mg"; "mglib/native/order.mg" ]) in
      List.iter Mg.load_signature_names natives;
      let ex = read_export export_file in
      let reg = Registry.load (String.split_on_char ',' mappings) ex.type_constructors in
      Emptycase.rules := List.map (fun (l, r, _) -> (l, r)) reg.Registry.empty_rules;
      (* empty-carrier generalizations must be provable (docs/DESIGN.md §21.5) *)
      Emptycase.justify := (fun p body -> (try ignore (Emptyproof.prove body); true with
        | Emptyproof.Cannot m -> (if Sys.getenv_opt "HOL2MG_DEBUG_EMPTY" <> None then prerr_endline ("emptycase withdrawn for " ^ p ^ ": " ^ m)); false
        | _ -> false));
      Rewrite.rules := reg.Registry.rewrite_rules;
      (* hand-mapped constants have unknown Megalodon arities: no eta through them *)
      let srcindex = read_srcindex (opt "--srcindex") in
      (* names of theorems whose proposition Megalodon reported as already known (two-pass reuse) *)
      let known = Hashtbl.create 64 in
      (match opt "--known-props" with
       | Some f when Sys.file_exists f ->
           let ic = open_in f in
           (try while true do let l = String.trim (input_line ic) in if l <> "" then Hashtbl.replace known l () done with End_of_file -> ());
           close_in ic
       | _ -> ());
      let items = ref [] in
      (* ---- source-IR gate (B1): every exported sequent, definition, axiom and type definition is
         re-typechecked; failures are fatal (exit 3 after the manifest is written) and the affected
         items are quarantined with status source_type_error / not used for automatic definitions. ---- *)
      let source_errors = ref [] in
      let gate kind name f = (try f () with Hol.Type_error m ->
        source_errors := (kind, name, m) :: !source_errors;
        prerr_endline (Printf.sprintf "source-IR type error [%s %s]: %s" kind name m)) in
      List.iter (fun (t : thm_record) -> gate "theorem" t.name (fun () -> check_sequent t.seq)) ex.theorems;
      List.iter (fun (t : thm_record) -> gate "definition" t.name (fun () -> check_sequent t.seq)) ex.basic_definitions;
      List.iter (fun (t : thm_record) -> gate "axiom" t.name (fun () -> check_sequent t.seq)) ex.axioms;
      List.iter (fun (t : type_definition) -> gate "type_definition" t.td_name (fun () ->
        Hol.check_term_bool "nonemptiness theorem" t.td_nonempty; Hol.check_term_bool "bijection theorem" t.td_bij)) ex.type_definitions;
      let source_errors = List.rev !source_errors in
      let has_source_error kind name = List.exists (fun (k, n, _) -> k = kind && n = name) source_errors in
      let ex = { ex with basic_definitions = List.filter (fun (t : thm_record) -> not (has_source_error "definition" t.name)) ex.basic_definitions;
                         type_definitions = List.filter (fun (t : type_definition) -> not (has_source_error "type_definition" t.td_name)) ex.type_definitions } in
      (* ---- automatic native definitions (constants by new_definition, types by new_type_definition) ---- *)
      let auto_defs = ref [] and auto_tydefs = ref [] and auto_failed = ref [] in
      let order = ref [] in
      let thm_by_name = Hashtbl.create 4096 in
      List.iter (fun (t : thm_record) -> Hashtbl.replace thm_by_name t.name t) ex.theorems;
      let builtin = [ "T"; "F"; "COND"; "GABS"; "GEQ"; "GSPEC"; "SETSPEC"; "PASSOC"; "!"; "?"; "?!"; "@"; "="; "/\\"; "\\/"; "==>"; "~";
                      "NUMERAL"; "BIT0"; "BIT1"; "_0"; "IN"; "INSERT"; "EMPTY"; "LET"; "LET_END"; "one"; "ONE_ONE"; "ONTO"; "TYPE_DEFINITION" ] in
      let name_map = reg.Registry.names in
      let valid_name c = c <> "" && (let ch = c.[0] in (ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z') || ch = '_') && String.for_all Mg.is_name_char c in
      let target_of c = (match List.assoc_opt c name_map with Some t -> Some t | None -> if valid_name c then Some c else None) in
      let with_alarm f = (try ignore (Unix.alarm 10); let r = f () in ignore (Unix.alarm 0); Ok r with
        | Elab.Not_definitional m -> ignore (Unix.alarm 0); Error m
        | Elab.Unsupported m -> ignore (Unix.alarm 0); Error m
        | Elab.Elab_error m -> ignore (Unix.alarm 0); Error ("elab: " ^ m)
        | Timeout -> Error "timeout"
        | Failure m -> ignore (Unix.alarm 0); Error ("failure: " ^ m)
        | Not_found -> ignore (Unix.alarm 0); Error "Not_found"
        | Invalid_argument m -> ignore (Unix.alarm 0); Error ("invalid_argument: " ^ m)) in
      if not (List.mem "--no-auto" args) then begin
        (* an override applies only when its scheme matches the constant's generic type *)
        let override_for c = (match Hashtbl.find_opt reg.Registry.consts c, List.assoc_opt c ex.constants with
          | Some es, Some ty ->
              List.find_opt (fun (e : Registry.const_entry) ->
                e.Registry.c_override <> None && Registry.tymatch e.Registry.c_scheme ty [] <> None) es
          | _ -> None) in
        let has_override c = override_for c <> None in
        let pending_defs = ref (List.filter (fun (d : thm_record) ->
          d.name <> "" && (not (Hashtbl.mem reg.Registry.consts d.name) || has_override d.name) && not (List.mem d.name builtin)) ex.basic_definitions) in
        let pending_tys = ref (List.filter (fun (t : type_definition) -> not (Hashtbl.mem reg.Registry.types t.td_name)) ex.type_definitions) in
        let last_err = Hashtbl.create 64 in
        let progress = ref true in
        while !progress do
          progress := false;
          pending_tys := List.filter (fun (t : type_definition) ->
            match target_of t.td_name with
            | None -> Hashtbl.replace last_err t.td_name "symbolic type name; needs a hand mapping"; false
            | Some tg ->
                let tg = if Mg.is_reserved tg then tg ^ "_hl" else tg in
                (match with_alarm (fun () ->
                         let at = Elab.elab_tydef reg t.td_name tg t.td_abs t.td_rep t.td_nonempty in
                         let arity = (try List.assoc t.td_name ex.type_constructors with Not_found -> at.Elab.at_arity) in
                         if arity <> at.Elab.at_arity then raise (Elab.Not_definitional (Printf.sprintf "type arity %d but %d type variables found" arity at.Elab.at_arity));
                         at) with
                 | Ok at -> Elab.register_auto_tydef reg at; Hashtbl.replace Mg.sig_names tg (); auto_tydefs := at :: !auto_tydefs; order := `T at :: !order; progress := true; false
                 | Error m -> Hashtbl.replace last_err t.td_name m; true)) !pending_tys;
          pending_defs := List.filter (fun (d : thm_record) ->
            let c = d.name in
            match target_of c with
            | None -> Hashtbl.replace last_err c "symbolic constant name; needs a hand mapping"; false
            | Some tg ->
                let tg = if Mg.is_reserved tg then tg ^ "_hl" else tg in
                (match List.assoc_opt c ex.constants, dest_eq d.seq.concl with
                 | Some scheme, Some (_, _, rhs) ->
                     let names = (match Hashtbl.find_opt thm_by_name c with
                       | Some t -> Elab.arg_names_of_theorem t.seq.concl
                       | None -> (match Hashtbl.find_opt thm_by_name (c ^ "_DEF") with Some t -> Elab.arg_names_of_theorem t.seq.concl | None -> [])) in
                     let gen () =
                       (match override_for c with
                        | Some e ->
                            let params, args, body = Option.get e.Registry.c_override in
                            (* the target name is the head of the entry's template *)
                            let tg = (match Mg.strip_app e.Registry.c_template [] with (Mg.Cst t, _) | (Mg.Var t, _) -> t | _ -> tg) in
                            Elab.elab_definition_override reg c tg e.Registry.c_scheme params args body
                        | _ -> Elab.elab_definition reg c tg scheme rhs names) in
                     (match with_alarm gen with
                      | Ok ad ->
                          if not (has_override c) then Elab.register_auto reg ad;
                          Hashtbl.replace Rewrite.meta_consts ad.Elab.ad_target (Rewrite.arity_of_mty ad.Elab.ad_type);
                          Hashtbl.replace Mg.sig_names tg ();
                          auto_defs := (ad, d) :: !auto_defs; order := `D ad :: !order; progress := true; false
                      | Error m -> Hashtbl.replace last_err c m; true)
                 | _ -> Hashtbl.replace last_err c "no constant type or not an equation"; false)) !pending_defs
        done;
        List.iter (fun (t : type_definition) -> auto_failed := (t.td_name, (try Hashtbl.find last_err t.td_name with Not_found -> "?")) :: !auto_failed) !pending_tys;
        List.iter (fun (d : thm_record) -> auto_failed := (d.name, (try Hashtbl.find last_err d.name with Not_found -> "?")) :: !auto_failed) !pending_defs;
        Hashtbl.iter (fun c m -> if not (List.mem_assoc c !auto_failed) && not (List.exists (fun ((ad : Elab.auto_def), _) -> ad.Elab.ad_hol = c) !auto_defs)
                                    && not (List.exists (fun (at : Elab.auto_tydef) -> at.Elab.at_hol = c) !auto_tydefs) then auto_failed := (c, m) :: !auto_failed) last_err
      end;
      let auto_tydefs = List.rev !auto_tydefs in
      let auto_defs = List.rev !auto_defs in
      let np_asts : (string, Mg.tm) Hashtbl.t = Hashtbl.create 4096 in
      let thms = if only = [] then ex.theorems else List.filter (fun t -> List.mem t.name only || List.exists (fun a -> List.mem a only) t.aliases) ex.theorems in
      List.iter (fun (th : thm_record) ->
        let src_file, src_line = (try Hashtbl.find srcindex th.name with Not_found -> ("", 0)) in
        let shard = if src_file = "" then "misc" else shard_of_file src_file in
        let base = { Manifest.name = sanitize_thm_name th.name; source_name = th.name; aliases = th.aliases; hash = th.hash;
                     status = ""; shard; src_file; src_line; classes = []; bridges = []; notes = []; var_views = [];
                     error = ""; statement = ""; literal = ""; cert_status = "source_typed"; cert_error = ""; bridge = ""; literal_proved = false; proof_imported = false; natively_proved = false; proof_leaves = []; proof_error = "";
                     source = String.concat ", " (List.map Hol.string_of_tm th.seq.hyps) ^ (if th.seq.hyps = [] then "" else " |- ") ^ Hol.string_of_tm th.seq.concl } in
        let verbose = List.mem "--verbose" args in
        if verbose then (prerr_string (th.name ^ " "); flush stderr);
        let item =
          if has_source_error "theorem" th.name then
            { base with Manifest.status = "source_type_error";
                        error = (let (_, _, m) = List.find (fun (k, n, _) -> k = "theorem" && n = th.name) source_errors in m) }
          else
          (try
             ignore (Unix.alarm (match opt "--timeout" with Some s -> int_of_string s | None -> 10));
             Emptycase.withdrawn := [];
             let r = Elab.elab_sequent reg th.seq in
             ignore (Unix.alarm 0);
             let r = if !Emptycase.withdrawn = [] then r else { r with Elab.notes = ("generalization_withdrawn:" ^ String.concat "," (List.rev !Emptycase.withdrawn)) :: r.Elab.notes } in
             let st = if Hashtbl.mem known base.Manifest.name then "native_reuse" else status_of_classes r.Elab.classes in
              Hashtbl.replace np_asts base.Manifest.name r.Elab.statement;
             { base with Manifest.status = st; classes = r.Elab.classes;
               bridges = r.Elab.bridges; notes = r.Elab.notes; var_views = r.Elab.var_views;
               statement = Mg.to_string r.Elab.statement }
           with
           | Timeout ->
               if List.mem "--verbose" args then prerr_endline ("\nTIMEOUT in " ^ th.name ^ ":\n" ^ Printexc.get_backtrace ());
               { base with Manifest.status = "error"; error = "timeout" }
           | Elab.Unsupported m -> ignore (Unix.alarm 0); { base with Manifest.status = "pending_mapping"; error = m }
           | Elab.Elab_error m -> { base with Manifest.status = "error"; error = "elab: " ^ m }
           | Hol.Type_error m -> { base with Manifest.status = "error"; error = "type: " ^ m }
           | Mg.Parse_error m -> { base with Manifest.status = "error"; error = "template: " ^ m }
           | Failure m -> { base with Manifest.status = "error"; error = "failure: " ^ m }
           | Not_found -> { base with Manifest.status = "error"; error = "Not_found" }
           | Invalid_argument m -> { base with Manifest.status = "error"; error = "invalid_argument: " ^ m })
        in
        ignore (Unix.alarm 0);
        items := item :: !items) thms;
      let items = List.rev !items in
      let public i = (match i.Manifest.status with "exact_native" | "transport_required" | "generalization_required" | "native_reuse" -> true | _ -> false) in
      let np_self : (string, string) Hashtbl.t = Hashtbl.create 512 in
      (* native proof synthesis (docs/DESIGN.md 23): God1-style declarative proofs for the
         public theorems the bounded prover can close; they use the native context only.
         Self-contained proofs (no premises) also replace Admitted in the public shards
         (status natively_proved). *)
      (match opt "--native-proofs" with
       | None -> ()
       | Some npdir ->
           mkdir_p npdir;
           (* named leaves of the recorded HOL proofs guide premise selection; a fixpoint over
              rounds ensures a native proof cites only theorems that are themselves natively
              proved (docs/DESIGN.md 23.5 N2b) *)
           let leaves : (string, string list) Hashtbl.t = Hashtbl.create 2048 in
           (try
              let f = open_in ("generated/internal/" ^ profile ^ ".leaves.json") in
              let n = in_channel_length f in
              let txt = really_input_string f n in close_in f;
              (match Yojson.Safe.from_string txt with
               | `Assoc l -> List.iter (function (k, `List v) -> Hashtbl.replace leaves k (List.filter_map (function `String s -> Some s | _ -> None) v) | _ -> ()) l
               | _ -> ())
            with _ -> ());
           let by_source : (string, string) Hashtbl.t = Hashtbl.create 4096 in
           List.iter (fun i -> Hashtbl.replace by_source i.Manifest.source_name i.Manifest.name) items;
           let np_proved : (string, string) Hashtbl.t = Hashtbl.create 512 in  (* name -> proof text *)
           let pubs = List.filter (fun i -> public i && i.Manifest.status <> "native_reuse") items in
           let changed = ref true in
           while !changed do
             changed := false;
             List.iter (fun i ->
               if not (Hashtbl.mem np_proved i.Manifest.name) then
                 match Hashtbl.find_opt np_asts i.Manifest.name with
                 | None -> ()
                 | Some ast ->
                     let prem = (match Hashtbl.find_opt leaves i.Manifest.source_name with
                       | None -> []
                       | Some ls ->
                           List.filter_map (fun l ->
                             match Hashtbl.find_opt by_source l with
                             | Some n when n <> i.Manifest.name && Hashtbl.mem np_proved n ->
                                 (match Hashtbl.find_opt np_asts n with Some a -> Some (n, a) | None -> None)
                             | _ -> None) ls) in
                     (match (try Nativeproof.prove ~premises:prem ast with _ -> None) with
                      | None -> ()
                      | Some pf -> Hashtbl.replace np_proved i.Manifest.name pf; changed := true)) pubs
           done;
           Hashtbl.iter (fun n _ ->
             match Hashtbl.find_opt np_asts n with
             | Some ast -> (match (try Nativeproof.prove ast with _ -> None) with
                            | Some pf -> Hashtbl.replace np_self n pf | None -> ())
             | None -> ()) np_proved;
           let n_ok = ref 0 and n_try = ref 0 in
           List.iter (fun s ->
             let l = List.filter (fun i -> i.Manifest.shard = s && public i && i.Manifest.status <> "native_reuse") items in
             let l = List.sort (fun a b -> compare (a.Manifest.src_line, a.Manifest.name) (b.Manifest.src_line, b.Manifest.name)) l in
             let outs = List.filter_map (fun i ->
               match Hashtbl.find_opt np_asts i.Manifest.name with
               | None -> None
               | Some _ ->
                   incr n_try;
                   (match Hashtbl.find_opt np_proved i.Manifest.name with
                    | None -> None
                    | Some pf ->
                        incr n_ok;
                        Some (Printf.sprintf "// HOL Light: %s / %s\nTheorem %s : %s.\n%s\nQed.\n\n"
                                i.Manifest.src_file i.Manifest.source_name i.Manifest.name i.Manifest.statement pf))) l in
             if outs <> [] then begin
               let oc = open_out (Filename.concat npdir (s ^ ".mg")) in
               Printf.fprintf oc "// Native proofs generated by hol2mg (docs/DESIGN.md 23).\n// They use only the native context: God1 + native prelude + public definitions.\n\n";
               List.iter (output_string oc) outs; close_out oc
             end) (List.sort_uniq compare (List.map (fun i -> i.Manifest.shard) pubs));
           Printf.eprintf "native proofs: %d of %d public theorems\n" !n_ok !n_try);
      let items = List.map (fun i -> if Hashtbl.mem np_self i.Manifest.name then { i with Manifest.natively_proved = true } else i) items in
      (* write shards *)
      mkdir_p out_dir;
      let shards = List.sort_uniq compare (List.map (fun i -> i.Manifest.shard) items) in
      let meta = ex.meta in
      let hol_commit = (match Yojson.Safe.Util.member "hol_light_commit" meta with `String s -> s | _ -> "?") in
      List.iter (fun s ->
        let l = List.filter (fun i -> i.Manifest.shard = s && public i) items in
        let l = List.sort (fun a b -> compare (a.Manifest.src_line, a.Manifest.name) (b.Manifest.src_line, b.Manifest.name)) l in
        if l <> [] then begin
          let oc = open_out (Filename.concat out_dir (s ^ ".mg")) in
          Printf.fprintf oc "// Generated by hol2mg from HOL Light %s, profile %s, shard %s.\n" hol_commit profile s;
          Printf.fprintf oc "// Do not edit: regenerate from the exporter, mapping registry, or overrides.\n";
          Printf.fprintf oc "// Statements are admitted imports; none is a new axiom.\n\n";
          List.iter (fun i ->
            Printf.fprintf oc "// HOL Light: %s%s / %s\n" i.Manifest.src_file (if i.Manifest.src_line > 0 then ":" ^ string_of_int i.Manifest.src_line else "") i.Manifest.source_name;
            if List.length i.Manifest.aliases > 1 then Printf.fprintf oc "// Aliases: %s\n" (String.concat " " i.Manifest.aliases);
            Printf.fprintf oc "// Source hash: md5:%s\n// Status: %s%s\n" i.Manifest.hash i.Manifest.status
              (if i.Manifest.bridges <> [] then " (bridges: " ^ String.concat ", " (List.sort compare i.Manifest.bridges) ^ ")" else "");
            if i.Manifest.status = "native_reuse" then
              Printf.fprintf oc "// Reuse: this proposition is already a theorem of the target library.\n// Theorem %s : %s.\n\n" i.Manifest.name i.Manifest.statement
            else (match Hashtbl.find_opt np_self i.Manifest.name with
              | Some pf -> Printf.fprintf oc "Theorem %s : %s.\n%s\nQed.\n\n" i.Manifest.name i.Manifest.statement pf
              | None -> Printf.fprintf oc "Theorem %s : %s.\nAdmitted.\n\n" i.Manifest.name i.Manifest.statement)) l;
          close_out oc
        end) shards;

      (* auto definitions shard (checked before the theorem shards) *)
      let def_file = Filename.concat out_dir "_definitions.mg" in
      let order = List.rev !order in
      if order <> [] then begin
        let oc = open_out def_file in
        Printf.fprintf oc "// Generated by hol2mg from HOL Light %s, profile %s: automatic native definitions.\n" hol_commit profile;
        Printf.fprintf oc "// Constants: the translated new_definition right-hand side with the type-variable carriers as\n// leading set parameters.  Types: new_type_definition subtypes as separations.  Status auto_definition: review pending.\n\n";
        List.iter (function
          | `D (ad : Elab.auto_def) ->
              let d = List.assoc ad auto_defs in
              let src_file, src_line = (try Hashtbl.find srcindex ad.Elab.ad_hol with Not_found -> ("", 0)) in
              Printf.fprintf oc "// HOL Light: %s%s / %s   (hash md5:%s)\n" src_file (if src_line > 0 then ":" ^ string_of_int src_line else "") ad.Elab.ad_hol d.hash;
              Printf.fprintf oc "Definition %s : %s :=\n  %s.\n\n" ad.Elab.ad_target (Mg.string_of_mty ad.Elab.ad_type) (Mg.to_string ad.Elab.ad_body)
          | `T (at : Elab.auto_tydef) ->
              Printf.fprintf oc "// HOL Light type definition %s (abs %s, rep %s) as a subtype of %s\n" at.Elab.at_hol at.Elab.at_abs at.Elab.at_rep (Hol.string_of_ty at.Elab.at_rep_ty);
              Printf.fprintf oc "Definition %s : %s :=\n  %s.\n\n" at.Elab.at_target (Mg.string_of_mty at.Elab.at_type) (Mg.to_string at.Elab.at_body)) order;
        close_out oc
      end else if Sys.file_exists def_file then Sys.remove def_file;
      let literal_order = ref [] in
      (* ---- literal layer (docs/DESIGN.md §21): private definitions and admitted literal statements ---- *)
      let items = (match opt "--literal-out" with
        | None -> items
        | Some ldir ->
            mkdir_p ldir;
            let an = Literal.analyse ex in
            let oc = open_out (Filename.concat ldir "_literal.mg") in
            Printf.fprintf oc "// hol2mg literal layer (private, docs/DESIGN.md §21.2): syntax-directed interpretation of the\n// HOL Light kernel definitions of profile %s (commit %s).  Checked after mglib/native/*.mg and\n// mglib/literal/model.mg.  Generated; do not edit.\n\n" profile hol_commit;
            let emitted = Hashtbl.create 512 and emitted_tys = Hashtbl.create 16 in
            literal_order := [];
            let pending_tds = ref an.Literal.type_definitions in
            let flush_tds () =
              pending_tds := List.filter (fun ((td : type_definition), arity) ->
                let rho, pred = Literal.dest_tydef_bij td in
                let need = List.filter (fun c -> Hashtbl.find_opt an.Literal.supported c = Some true && not (List.mem_assoc c Literal.primitive_consts)) (Literal.consts_of_tm pred []) in
                let need_tys = List.filter (fun c -> c <> td.td_name && Hashtbl.mem an.Literal.tydefs c) (Literal.tycons_of_tm pred (Literal.tycons_of_ty rho [])) in
                if List.for_all (Hashtbl.mem emitted) need && List.for_all (Hashtbl.mem emitted_tys) need_tys then begin
                  (try
                     let defs = Literal.tydef an.Literal.consts an.Literal.supported an.Literal.tydefs td arity in
                     Printf.fprintf oc "// HOL Light type definition %s (abs %s, rep %s)\n" td.td_name td.td_abs td.td_rep;
                     List.iter (fun (n, mty, body) -> Printf.fprintf oc "Definition %s : %s :=\n  %s.\n" n (Mg.string_of_mty mty) (Mg.to_string body)) defs;
                     Printf.fprintf oc "\n";
                     literal_order := `T (td, arity) :: !literal_order;
                     Hashtbl.replace emitted td.td_abs (); Hashtbl.replace emitted td.td_rep (); Hashtbl.replace emitted_tys td.td_name ()
                   with Literal.Literal_unsupported m ->
                     Hashtbl.replace an.Literal.supported td.td_abs false; Hashtbl.replace an.Literal.supported td.td_rep false;
                     Hashtbl.remove an.Literal.tydefs td.td_name;
                     Hashtbl.replace an.Literal.reasons td.td_abs m; Hashtbl.replace an.Literal.reasons td.td_rep m);
                  false
                end else true) !pending_tds in
            flush_tds ();
            List.iter (fun (c, cty, rhs) ->
              (try
                 let n, mty, body = Literal.definition an.Literal.consts an.Literal.supported an.Literal.tydefs c cty rhs in
                 Printf.fprintf oc "// HOL Light: %s : %s\n" c (Hol.string_of_ty cty);
                 Printf.fprintf oc "Definition %s : %s :=\n  %s.\n\n" n (Mg.string_of_mty mty) (Mg.to_string body);
                 Hashtbl.replace emitted c ();
                 literal_order := `D (c, cty, rhs) :: !literal_order;
                 flush_tds ()
               with Literal.Literal_unsupported m ->
                 Hashtbl.replace an.Literal.supported c false; Hashtbl.replace an.Literal.reasons c m)) an.Literal.definitions;
            close_out oc;
            let by_shard = Hashtbl.create 32 in
            let items = List.map (fun (i : Manifest.item) ->
              let th = Hashtbl.find thm_by_name i.Manifest.source_name in
              if i.Manifest.status = "source_type_error" then i
              else
                let bad = Literal.unsupported_in an th.seq in
                if bad <> [] then
                  { i with Manifest.cert_status = "literal_unsupported";
                           cert_error = String.concat "; " (List.map (fun c -> c ^ (match Hashtbl.find_opt an.Literal.reasons c with Some r -> " (" ^ r ^ ")" | None -> "")) bad) }
                else
                  (try
                     ignore (Unix.alarm 10);
                     let stmt, _, _ = Literal.statement an.Literal.consts an.Literal.supported an.Literal.tydefs th.seq in
                     ignore (Unix.alarm 0);
                     let txt = Mg.to_string stmt in
                     Hashtbl.replace by_shard i.Manifest.shard ((i, txt) :: (try Hashtbl.find by_shard i.Manifest.shard with Not_found -> []));
                     { i with Manifest.literal = txt; cert_status = "literal_emitted" }
                   with
                   | Literal.Literal_unsupported m -> ignore (Unix.alarm 0); { i with Manifest.cert_status = "literal_unsupported"; cert_error = m }
                   | Timeout -> { i with Manifest.cert_status = "literal_unsupported"; cert_error = "timeout" }
                   | Failure m -> ignore (Unix.alarm 0); { i with Manifest.cert_status = "literal_unsupported"; cert_error = "failure: " ^ m })) items in
            Hashtbl.iter (fun shard l ->
              let l = List.sort (fun ((a : Manifest.item), _) ((b : Manifest.item), _) -> compare (a.Manifest.src_line, a.Manifest.name) (b.Manifest.src_line, b.Manifest.name)) l in
              let oc = open_out (Filename.concat ldir (shard ^ ".mg")) in
              Printf.fprintf oc "// hol2mg literal statements (private): shard %s of profile %s.  Each theorem is the literal\n// interpretation of the HOL Light theorem named in the comment; all are admitted source facts.\n\n" shard profile;
              List.iter (fun ((i : Manifest.item), txt) ->
                Printf.fprintf oc "// HOL Light: %s%s / %s   (hash md5:%s)\n" i.Manifest.src_file (if i.Manifest.src_line > 0 then ":" ^ string_of_int i.Manifest.src_line else "") i.Manifest.source_name i.Manifest.hash;
                Printf.fprintf oc "Theorem hlt_%s : %s.\nAdmitted.\n\n" i.Manifest.name txt) l;
              close_out oc) by_shard;
            items) in
      (* ---- certification modules (docs/DESIGN.md §21.3/21.5): literal fact, bridge, derived theorem ---- *)
      let items = (match opt "--cert-out" with
        | None -> items
        | Some cdir ->
            mkdir_p cdir;
            let an = Literal.analyse ex in
            (* native carriers of translated type definitions, usable once hl_ty_<T>_native is proved *)
            Hashtbl.reset Literal.tydef_native;
            (* compatibility theorems available in mglib/literal/compat.mg: name -> statement text *)
            let compat_file = (match opt "--compat" with Some f -> f | None -> "mglib/literal/compat.mg") in
            let carriers_file = "mglib/literal/carriers.mg" in
            let proved = Hashtbl.create 64 in
            List.iter (fun compat_file -> if Sys.file_exists compat_file then begin
              let txt = (if Sys.file_exists compat_file then (let ic = open_in compat_file in
                let n = in_channel_length ic in
                let t = really_input_string ic n in close_in ic; t) else "") in
              let re = Str.regexp "Theorem[ \n]+\([A-Za-z_0-9']+\)[ \n]*:\([^.]*\)\.[ \n]" in
              let pos = ref 0 in
              (try while true do
                 let _ = Str.search_forward re txt !pos in
                 let name = Str.matched_group 1 txt and body = Str.matched_group 2 txt in
                 pos := Str.match_end ();
                 let norm = String.concat " " (List.filter (fun w -> w <> "") (String.split_on_char ' ' (String.map (fun c -> if c = '\n' then ' ' else c) body))) in
                 Hashtbl.replace proved name norm
               done with Not_found -> ())
            end) [ carriers_file; compat_file; "mglib/literal/carriers2.mg"; "mglib/literal/compat2.mg"; "mglib/literal/compat_" ^ profile ^ ".mg" ];
            (* model-soundness theorems (§21.4): hlt_N_model with exactly the literal statement of N discharges hlt_N *)
            let model = Hashtbl.create 64 in
            let model_file = "mglib/literal/model_theorems.mg" in
            if Sys.file_exists model_file then begin
              let ic = open_in model_file in
              let n = in_channel_length ic in
              let txt = really_input_string ic n in close_in ic;
              let re = Str.regexp "Theorem[ \n]+\\(hlt_[A-Za-z_0-9']+_model\\)[ \n]*:\\([^.]*\\)\\.[ \n]" in
              let pos = ref 0 in
              (try while true do
                 let _ = Str.search_forward re txt !pos in
                 let name = Str.matched_group 1 txt and body = Str.matched_group 2 txt in
                 pos := Str.match_end ();
                 let norm = String.concat " " (List.filter (fun w -> w <> "") (String.split_on_char ' ' (String.map (fun c -> if c = '\n' then ' ' else c) body))) in
                 Hashtbl.replace model name norm
               done with Not_found -> ())
            end;
            let lit_proved = Hashtbl.create 64 in
            (* proof import (docs/DESIGN.md 22): recorded kernel proofs of the theorems, by HOL name *)
            let proof_by_name = Hashtbl.create 1024 in
            (match opt "--proofs" with
             | Some f -> List.iter (fun (p : Proofimport.proof) -> Hashtbl.replace proof_by_name p.Proofimport.pname p) (Proofimport.load f)
             | None -> ());
            let import_only = (match Sys.getenv_opt "HOL2MG_IMPORT_ONLY" with Some s -> String.split_on_char ',' s | None -> []) in
            let mg_of_hol = Hashtbl.create 4096 in
            List.iter (fun (i : Manifest.item) -> Hashtbl.replace mg_of_hol i.Manifest.source_name i.Manifest.name) items;
            let thm_name_fn h = (try Hashtbl.find mg_of_hol h with Not_found -> Elab.sanitize_var h) in
            let imported_tbl = Hashtbl.create 64 in
            let import_err : (string, string) Hashtbl.t = Hashtbl.create 16 in
            Hashtbl.reset Literal.tydef_native_k;
            Hashtbl.iter (fun t _ ->
              match Hashtbl.find_opt reg.Registry.types t with
              | Some te when te.Registry.t_arity = 0 && Hashtbl.mem proved ("hl_ty_" ^ Elab.sanitize_var t ^ "_native") && Hashtbl.mem proved ("hl_ty_" ^ Elab.sanitize_var t ^ "_native_nonempty") ->
                  Hashtbl.replace Literal.tydef_native t te.Registry.t_carrier
              | Some te when te.Registry.t_arity > 0 && Hashtbl.mem proved ("hl_ty_" ^ Elab.sanitize_var t ^ "_native") && Hashtbl.mem proved ("hl_ty_" ^ Elab.sanitize_var t ^ "_native_nonempty") ->
                  (* parametrised translated type with proved carrier facts (docs/DESIGN.md 21.9, stage 2) *)
                  Hashtbl.replace Literal.tydef_native_k t te.Registry.t_carrier
              | _ -> ()) an.Literal.tydefs;
            (* expected statements for every registry entry *)
            let compat = Hashtbl.create 256 in
            let stubs = Buffer.create 4096 in
            Hashtbl.iter (fun _ entries ->
              List.iteri (fun idx (e : Registry.const_entry) ->
                let name = Bridge.compat_name e idx in
                match (try Bridge.compat_statement an e with _ -> None) with
                | None -> Hashtbl.replace compat name ("", "no statement (unsupported roles)")
                | Some st ->
                    let txt = Mg.to_string st in
                    let status = (match Hashtbl.find_opt proved name with
                      | Some p when p = txt -> "ok"
                      | Some _ -> "stated differently in compat.mg"
                      | None -> "not in compat.mg") in
                    Hashtbl.replace compat name (txt, status);
                    if status <> "ok" then Buffer.add_string stubs (Printf.sprintf "// %s : %s (%s)\nTheorem %s : %s.\nAdmitted.\n\n" e.Registry.c_hol (Hol.string_of_ty e.Registry.c_scheme) status name txt);
                    (* nested instances at one type variable of multi-parameter entries (IMAGE with a subset-valued function) *)
                    let tvs_all = Literal.tyvars_ordered e.Registry.c_scheme [] in
                    let n_tv = List.length tvs_all in
                    (* type variables that are element types of subset-role arguments: only these have
                       nested instances (sets of subsets, represented by hl_rep2) *)
                    let sub_tvs = (let rec occ a ty = (match ty with
                        | Hol.TyApp ("fun", [ Hol.TyVar b; Hol.TyApp ("bool", []) ]) when b = a -> true
                        | Hol.TyApp (_, args) -> List.exists (occ a) args
                        | _ -> false) in
                      List.filter_map (fun (i, a) -> if occ a e.Registry.c_scheme then Some (i + 1) else None) (List.mapi (fun i a -> (i, a)) tvs_all)) in
                    if n_tv >= 2 && n_tv <= 3 && sub_tvs <> [] then begin
                      let n = n_tv in
                      let rec subsets k = if k > n then [ [] ] else List.concat_map (fun r -> if List.mem k sub_tvs then [ r; k :: r ] else [ r ]) (subsets (k + 1)) in
                      List.iter (fun ks ->
                        let ks = List.sort compare ks in
                        match (if ks = [] then None else (try Bridge.compat_statement_nested_at an e ks with _ -> None)) with
                        | None -> ()
                        | Some st2 ->
                            let name2 = name ^ "_pow" ^ String.concat "" (List.map string_of_int ks) in
                            let txt2 = Mg.to_string st2 in
                            let status2 = (match Hashtbl.find_opt proved name2 with
                              | Some p when p = txt2 -> "ok"
                              | Some _ -> "stated differently in compat.mg"
                              | None -> "not in compat.mg") in
                            Hashtbl.replace compat name2 (txt2, status2);
                            if status2 <> "ok" then Buffer.add_string stubs (Printf.sprintf "// %s : %s, nested at type variables %s (%s)\nTheorem %s : %s.\nAdmitted.\n\n" e.Registry.c_hol (Hol.string_of_ty e.Registry.c_scheme) (String.concat "," (List.map string_of_int ks)) status2 name2 txt2)) (subsets 1)
                    end;
                    (* nested instance (sets of subsets) for the set-theoretic constants *)
                    if n_tv = 1 && sub_tvs <> [] then
                      (match (try Bridge.compat_statement_nested an e with _ -> None) with
                       | None -> ()
                       | Some st2 ->
                           let name2 = name ^ "_pow" in
                           let txt2 = Mg.to_string st2 in
                           let status2 = (match Hashtbl.find_opt proved name2 with
                             | Some p when p = txt2 -> "ok"
                             | Some _ -> "stated differently in compat.mg"
                             | None -> "not in compat.mg") in
                           Hashtbl.replace compat name2 (txt2, status2);
                           if status2 <> "ok" then Buffer.add_string stubs (Printf.sprintf "// %s : %s at A := A -> bool (%s)\nTheorem %s : %s.\nAdmitted.\n\n" e.Registry.c_hol (Hol.string_of_ty e.Registry.c_scheme) status2 name2 txt2))) entries) reg.Registry.consts;
            (* typing lemmas of the literal definitions *)
            let ocu = open_out (Filename.concat cdir "_literal_unfold.mg") in
            Printf.fprintf ocu "// Unfolding lemmas of the literal definitions (generated with proofs; checked right after _literal.mg).\n\n";
            let oc1 = open_out (Filename.concat cdir "_literal_typing.mg") in
            Printf.fprintf oc1 "// Typing lemmas of the literal definitions (generated with proofs; checked after mglib/literal/carriers.mg).\n\n";
            let oc2 = open_out (Filename.concat cdir "_literal_typing2.mg") in
            Printf.fprintf oc2 "// Typing lemmas of the literal definitions whose types mention a parametrised translated type with a\n// native carrier (stage 2, docs/DESIGN.md 21.9): checked after mglib/literal/carriers2.mg.\n\n";
            (* a type mentions a stage-2 translated type *)
            let rec stage2 (ty : Hol.ty) = (match ty with
              | Hol.TyApp (c, args) -> (args <> [] && Hashtbl.mem Literal.tydef_native_k c) || List.exists stage2 args
              | _ -> false) in
            let typing_ok = Hashtbl.create 256 in
            List.iter (function
              | `D (c, cty, rhs) ->
                  let oc = if stage2 cty then oc2 else oc1 in
                  if Hashtbl.find_opt an.Literal.supported c = Some true then
                    (match (try Some (Bridge.typing_lemma an typing_ok c cty rhs) with Bridge.Bridge_unsupported m | Literal.Literal_unsupported m -> prerr_endline ("typing lemma " ^ c ^ ": " ^ m); None | Failure m -> prerr_endline ("typing lemma " ^ c ^ ": failure " ^ m); None) with
                     | Some lemmas ->
                         List.iter (fun (name, st, pf) -> Printf.fprintf oc "Theorem %s : %s.\n%s\nQed.\n\n" name st pf) lemmas; Hashtbl.replace typing_ok c ();
                         (match (try Some (Bridge.unfold_lemma an c cty rhs) with _ -> None) with
                          | Some (un, ust, upf) -> Printf.fprintf ocu "Theorem %s : %s.\n%s\nQed.\n\n" un ust upf
                          | None -> ());
                         (match (try Bridge.spec_lemma an c cty rhs with e -> prerr_endline ("spec lemma " ^ c ^ ": " ^ Printexc.to_string e); None) with
                          | Some (sn, sst, spf) -> Printf.fprintf oc "Theorem %s : %s.\n%s\nQed.\n\n" sn sst spf
                          | None -> ())
                     | None -> ())
              | `T (td, arity) ->
                  let oc = if arity > 0 && Hashtbl.mem Literal.tydef_native_k td.td_name then oc2 else oc1 in
                  (match (try Some (Bridge.tydef_lemmas an proved td arity) with Bridge.Bridge_unsupported m | Literal.Literal_unsupported m -> prerr_endline ("type definition lemmas " ^ td.td_name ^ ": " ^ m); None) with
                   | Some lemmas ->
                       List.iter (fun (name, st, pf) ->
                         if name = "" then Buffer.add_string stubs (Printf.sprintf "// nonemptiness of the carrier of type definition %s (prove in mglib/literal/carriers.mg)\nTheorem hl_ty_%s_nonempty : %s.\nAdmitted.\n\n" td.td_name (Elab.sanitize_var td.td_name) st)
                         else begin
                           Printf.fprintf oc "Theorem %s : %s.\n%s\nQed.\n\n" name st pf;
                           if name = Literal.mg_name_of_const td.td_abs ^ "_in" then Hashtbl.replace typing_ok td.td_abs ()
                           else Hashtbl.replace typing_ok td.td_rep ()
                         end) lemmas
                   | None -> ())) (List.rev !literal_order);
            close_out oc1; close_out oc2; close_out ocu;
            let oc = open_out (Filename.concat cdir "_compat_required.mg") in
            Printf.fprintf oc "// Compatibility theorem statements generated from the mapping registry (docs/DESIGN.md §21.4)\n// that are not yet proved in mglib/literal/compat.mg (or are stated differently there), and\n// carrier nonemptiness theorems missing from mglib/literal/carriers.mg.\n\n%s" (Buffer.contents stubs);
            close_out oc;
            let by_shard = Hashtbl.create 32 in
            let items = List.map (fun (i : Manifest.item) ->
              if i.Manifest.cert_status <> "literal_emitted" then i
              else if not (public i) then begin
                (* a non-public theorem with a literal statement (pending native mapping): import-only entry,
                   its literal fact may be a leaf of imported proofs (docs/DESIGN.md 22) *)
                if i.Manifest.literal <> "" && i.Manifest.shard <> "" then
                  Hashtbl.replace by_shard i.Manifest.shard ((i, None) :: (try Hashtbl.find by_shard i.Manifest.shard with Not_found -> []));
                i
              end else begin
                let th = Hashtbl.find thm_by_name i.Manifest.source_name in
                let res = (try
                    ignore (Unix.alarm 20);
                    let o = Bridge.generate reg an compat typing_ok th.seq in
                    ignore (Unix.alarm 0);
                    let lit_txt = Mg.to_string o.Bridge.lit_stmt in
                    if lit_txt <> i.Manifest.literal then Error ("bridge_mismatch: literal statement differs: " ^ lit_txt)
                    else begin
                      let pre = Mg.to_string o.Bridge.nat_stmt in
                      if pre <> i.Manifest.statement then Error ("bridge_mismatch: derived native statement differs: " ^ pre)
                      else Ok o
                    end
                  with
                  | Bridge.Bridge_unsupported m -> ignore (Unix.alarm 0); Error ("bridge_unsupported: " ^ m)
                  | Literal.Literal_unsupported m -> ignore (Unix.alarm 0); Error ("bridge_unsupported: literal " ^ m)
                  | Elab.Unsupported m | Elab.Elab_error m -> ignore (Unix.alarm 0); Error ("bridge_unsupported: elab " ^ m)
                  | Timeout -> Error "bridge_unsupported: timeout"
                  | Failure m -> ignore (Unix.alarm 0); Error ("bridge_failed: failure " ^ m)
                  | Not_found -> ignore (Unix.alarm 0);
                      let bt = String.concat " | " (List.filteri (fun i _ -> i < 5) (String.split_on_char '\n' (Printexc.get_backtrace ()))) in
                      Error ("bridge_failed: Not_found [" ^ bt ^ "]")
                  | Invalid_argument m -> ignore (Unix.alarm 0); Error ("bridge_failed: invalid_argument " ^ m)
                  | e -> ignore (Unix.alarm 0);
                      let bt = String.concat " | " (List.filteri (fun i _ -> i < 4) (String.split_on_char '\n' (Printexc.get_backtrace ()))) in
                      Error ("bridge_failed: " ^ Printexc.to_string e ^ " [" ^ bt ^ "]")) in
                let entry, i' = (match res with
                  | Ok o -> ((i, Some o), { i with Manifest.cert_status = "bridge_emitted"; bridge = i.Manifest.name ^ "_bridge" })
                  | Error m ->
                      let st = (try String.sub m 0 (String.index m ':') with Not_found -> "bridge_failed") in
                      ((i, None), { i with Manifest.cert_status = (if String.length st > 0 && st.[0] = 'b' then st else "bridge_failed"); cert_error = m })) in
                Hashtbl.replace by_shard i.Manifest.shard (entry :: (try Hashtbl.find by_shard i.Manifest.shard with Not_found -> []));
                i'
              end) items in
            (* proof import (docs/DESIGN.md 22): shards whose imported proofs are large are split into parts
               <shard>_p<k> by cumulative proof size, so that Megalodon checks them in parallel; the manifest
               records the part as the item's shard *)
            let part_of = Hashtbl.create 64 in
            let part_limit = (match Sys.getenv_opt "HOL2MG_PART_NODES" with Some s -> int_of_string s | None -> 40000) in
            let parts_of shard l =
              if Hashtbl.length proof_by_name = 0 then [ (shard, l) ]
              else begin
                let size ((i : Manifest.item), _) = (match Hashtbl.find_opt proof_by_name i.Manifest.source_name with Some (p : Proofimport.proof) -> Array.length p.Proofimport.nodes | None -> 0) in
                let total = List.fold_left (fun n e -> n + size e) 0 l in
                if total <= part_limit then [ (shard, l) ]
                else begin
                  let parts = ref [] and cur = ref [] and acc = ref 0 and k = ref 1 in
                  List.iter (fun e ->
                    if !acc > 0 && !acc + size e > part_limit then begin
                      parts := (Printf.sprintf "%s_p%d" shard !k, List.rev !cur) :: !parts; incr k; cur := []; acc := 0
                    end;
                    cur := e :: !cur; acc := !acc + size e) l;
                  if !cur <> [] then parts := (Printf.sprintf "%s_p%d" shard !k, List.rev !cur) :: !parts;
                  List.rev !parts
                end
              end in
            let by_part = Hashtbl.create 64 in
            Hashtbl.iter (fun shard l ->
              let l = List.sort (fun ((a : Manifest.item), _) ((b : Manifest.item), _) -> compare (a.Manifest.src_line, a.Manifest.name) (b.Manifest.src_line, b.Manifest.name)) l in
              List.iter (fun (part, pl) ->
                List.iter (fun ((i : Manifest.item), _) -> if part <> shard then Hashtbl.replace part_of i.Manifest.name part) pl;
                Hashtbl.replace by_part part pl) (parts_of shard l)) by_shard;
            Hashtbl.iter (fun shard l ->
              let oc = open_out (Filename.concat cdir (shard ^ ".mg")) in
              let declared = Hashtbl.create 64 in
              Printf.fprintf oc "// hol2mg certification module (private): shard %s of profile %s.\n// For each theorem: the admitted literal source fact hlt_N, the checked bridge N_bridge : literal -> native (Qed),\n// and the public statement N derived from them.  Checked after mglib/native/*.mg, mglib/literal/{model,bridge,compat}.mg,\n// _definitions.mg, _literal.mg and _literal_typing.mg.  Generated; do not edit.\n\n" shard profile;
              List.iter (fun ((i : Manifest.item), o) ->
                Printf.fprintf oc "// HOL Light: %s%s / %s   (hash md5:%s)\n" i.Manifest.src_file (if i.Manifest.src_line > 0 then ":" ^ string_of_int i.Manifest.src_line else "") i.Manifest.source_name i.Manifest.hash;
                (* proof import (docs/DESIGN.md 22): independent of the bridge; emits the leaves, hltu_N and, when the
                   literal statement exists, hlt_N by coherence; returns whether hlt_N is Qed *)
                let import_here () =
                  let imported = (match Hashtbl.find_opt proof_by_name i.Manifest.source_name with
                    | Some pr when (import_only = [] || List.mem i.Manifest.source_name import_only) && not (Hashtbl.mem declared ("hltu_" ^ i.Manifest.name)) ->
                        (match Hashtbl.find_opt thm_by_name i.Manifest.source_name with
                         | Some th -> (try Some (Proofimport.import an thm_name_fn pr th.seq)
                                       with Proofimport.Import_unsupported m | Literal.Literal_unsupported m -> prerr_endline ("proof import " ^ i.Manifest.name ^ ": " ^ m); Hashtbl.replace import_err i.Manifest.name m; None
                                          | Failure m -> prerr_endline ("proof import " ^ i.Manifest.name ^ ": failure " ^ m); Hashtbl.replace import_err i.Manifest.name ("failure " ^ m); None)
                         | None -> None)
                    | _ -> None) in
                  (match imported with
                   | Some r ->
                       List.iter (fun (ln, st) -> if not (Hashtbl.mem declared ln) then begin Hashtbl.replace declared ln false; Printf.fprintf oc "Theorem %s : %s.\nAdmitted.\n" ln st end) r.Proofimport.leaf_stmts;
                       let all_proved = List.for_all (fun (ln, _) -> Hashtbl.find declared ln) r.Proofimport.leaf_stmts in
                       Hashtbl.replace declared ("hltu_" ^ i.Manifest.name) all_proved;
                       Hashtbl.replace imported_tbl i.Manifest.name r.Proofimport.leaf_names;
                       (* Megalodon refuses Qed for a proof depending on an admitted leaf: the checked derivation is then admitted *)
                       let ending = if all_proved then "Qed" else "Admitted" in
                       Printf.fprintf oc "%s" (if all_proved then r.Proofimport.uniform else Str.global_replace (Str.regexp_string "\nQed.\n") "\nAdmitted.\n" r.Proofimport.uniform);
                       if i.Manifest.literal <> "" then Printf.fprintf oc "Theorem hlt_%s : %s.\nexact %s.\n%s.\n" i.Manifest.name i.Manifest.literal r.Proofimport.discharge ending;
                       Some all_proved
                   | None -> None) in
                match o with
                | Some o ->
                    let norm_lit = String.concat " " (List.filter (fun w -> w <> "") (String.split_on_char ' ' i.Manifest.literal)) in
                    let proved_model = (match Hashtbl.find_opt model ("hlt_" ^ i.Manifest.name ^ "_model") with Some st -> st = norm_lit | None -> false) in
                    let proved = (match import_here () with
                      | Some all_proved -> all_proved
                      | None ->
                          if proved_model then begin
                            Hashtbl.replace lit_proved i.Manifest.name ();
                            Printf.fprintf oc "Theorem hlt_%s : %s.\nexact hlt_%s_model.\nQed.\n" i.Manifest.name i.Manifest.literal i.Manifest.name
                          end else
                            Printf.fprintf oc "Theorem hlt_%s : %s.\nAdmitted.\n" i.Manifest.name i.Manifest.literal;
                          proved_model) in
                    Printf.fprintf oc "Theorem %s_bridge : (%s) -> (%s).\nexact %s.\nQed.\n" i.Manifest.name i.Manifest.literal i.Manifest.statement o.Bridge.proof;
                    Printf.fprintf oc "Theorem %s : %s.\nexact (%s_bridge hlt_%s).\n%s.\n\n" i.Manifest.name i.Manifest.statement i.Manifest.name i.Manifest.name (if proved then "Qed" else "Admitted")
                | None ->
                    (* not bridged: the literal fact is still emitted when it is proved by an imported proof
                       or by a model theorem (it may be a leaf of other imported proofs) *)
                    (match import_here () with
                     | Some _ -> ()
                     | None ->
                         if i.Manifest.literal <> "" then begin
                           let norm_lit = String.concat " " (List.filter (fun w -> w <> "") (String.split_on_char ' ' i.Manifest.literal)) in
                           let proved_model = (match Hashtbl.find_opt model ("hlt_" ^ i.Manifest.name ^ "_model") with Some st -> st = norm_lit | None -> false) in
                           if proved_model then begin
                             Hashtbl.replace lit_proved i.Manifest.name ();
                             Printf.fprintf oc "Theorem hlt_%s : %s.\nexact hlt_%s_model.\nQed.\n" i.Manifest.name i.Manifest.literal i.Manifest.name
                           end
                         end);
                    if i.Manifest.statement <> "" then
                      Printf.fprintf oc "// not bridged: %s\nTheorem %s : %s.\nAdmitted.\n\n" (String.concat " " (String.split_on_char '\n' i.Manifest.cert_error)) i.Manifest.name i.Manifest.statement
                    else Printf.fprintf oc "// no native statement (%s): literal fact only\n\n" i.Manifest.status) l;
              close_out oc) by_part;
            List.map (fun (i : Manifest.item) ->
              let i = (match Hashtbl.find_opt part_of i.Manifest.name with Some p -> { i with Manifest.shard = p } | None -> i) in
              let i = if Hashtbl.mem lit_proved i.Manifest.name then { i with Manifest.literal_proved = true } else i in
              match Hashtbl.find_opt imported_tbl i.Manifest.name with
              | Some leaves -> { i with Manifest.proof_imported = true; proof_leaves = List.sort compare leaves }
              | None -> (match Hashtbl.find_opt import_err i.Manifest.name with Some m -> { i with Manifest.proof_error = m } | None -> i)) items) in
      let manifest_file = (match opt "--manifest" with Some f -> f | None -> Filename.concat out_dir (profile ^ ".manifest.json")) in
      let header = [ ("schema", `Int 1); ("profile", `String profile); ("hol_light_commit", `String hol_commit);
                     ("auto_definitions", `List (List.map (fun ((ad : Elab.auto_def), (d : thm_record)) ->
                        `Assoc [ ("hol", `String ad.Elab.ad_hol); ("target", `String ad.Elab.ad_target); ("hash", `String d.hash);
                                 ("type", `String (Mg.string_of_mty ad.Elab.ad_type)); ("definition", `String (Mg.to_string ad.Elab.ad_body));
                                 ("notes", `List (List.map (fun s -> `String s) ad.Elab.ad_notes)) ]) auto_defs));
                     ("auto_type_definitions", `List (List.map (fun (at : Elab.auto_tydef) ->
                        `Assoc [ ("hol", `String at.Elab.at_hol); ("target", `String at.Elab.at_target); ("definition", `String (Mg.to_string at.Elab.at_body)) ]) auto_tydefs));
                     ("auto_definition_failures", `List (List.map (fun (c, m) -> `List [ `String c; `String m ]) (List.rev !auto_failed)));
                     ("source_type_errors", `List (List.map (fun (k, n, m) -> `Assoc [ ("kind", `String k); ("name", `String n); ("error", `String m) ]) source_errors));
                     ("mapping_files", `List (List.map (fun (f, d) -> `List [ `String f; `String d ]) reg.Registry.files));
                     ("signature", `String (Filename.basename sig_file)) ] in
      Manifest.write_manifest manifest_file header items;
      let report_file = (match opt "--report" with Some f -> f | None -> Filename.concat out_dir (profile ^ ".report.md")) in
      let n = List.length items and np = List.length (List.filter public items) in
      Manifest.write_report report_file profile
        [ Printf.sprintf "- HOL Light commit: `%s`" hol_commit;
          Printf.sprintf "- theorems: %d discovered, %d public" n np;
          Printf.sprintf "- automatic definitions: %d constants and %d types generated, %d not generated (%s)" (List.length auto_defs) (List.length auto_tydefs) (List.length !auto_failed)
            (String.concat "; " (List.map (fun (c, m) -> c ^ ": " ^ m) (List.filteri (fun i _ -> i < 12) (List.rev !auto_failed))));
          Printf.sprintf "- theorems using automatic definitions: %d" (List.length (List.filter (fun i -> List.exists (fun s -> String.length s > 5 && String.sub s 0 5 = "auto:") i.Manifest.notes) items));
          Printf.sprintf "- mapping files: %s" (String.concat ", " (List.map fst reg.Registry.files)) ] items;
      Printf.printf "hol2mg: %d theorems, %d public (%d pending, %d errors); shards in %s\n" n np
        (List.length (List.filter (fun i -> i.Manifest.status = "pending_mapping") items))
        (List.length (List.filter (fun i -> i.Manifest.status = "error") items)) out_dir;
      if source_errors <> [] then begin
        Printf.eprintf "hol2mg: %d source-IR type error(s); the run is not valid (use --allow-source-errors to override)\n" (List.length source_errors);
        if not (List.mem "--allow-source-errors" args) then exit 3
      end
  | _ -> prerr_endline usage; exit 2
