(* hol2mg command-line driver. *)

open Hol

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
      Rewrite.rules := reg.Registry.rewrite_rules;
      Hashtbl.iter (fun _ es -> List.iter (fun (e : Registry.const_entry) ->
        match e.Registry.c_result, e.Registry.c_template with
        | (Registry.RMetaFun _ | Registry.RMetaPred _), t ->
            (match Mg.strip_app t [] with (Mg.Cst c, _) -> Hashtbl.replace Rewrite.meta_consts c () | _ -> ())
        | _ -> ()) es) reg.Registry.consts;
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
                          (match ad.Elab.ad_result with
                           | Registry.RMetaFun _ | Registry.RMetaPred _ -> Hashtbl.replace Rewrite.meta_consts ad.Elab.ad_target ()
                           | _ -> ());
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
      let thms = if only = [] then ex.theorems else List.filter (fun t -> List.mem t.name only || List.exists (fun a -> List.mem a only) t.aliases) ex.theorems in
      List.iter (fun (th : thm_record) ->
        (try check_sequent th.seq with Type_error m -> prerr_endline ("type error in " ^ th.name ^ ": " ^ m));
        let src_file, src_line = (try Hashtbl.find srcindex th.name with Not_found -> ("", 0)) in
        let shard = if src_file = "" then "misc" else shard_of_file src_file in
        let base = { Manifest.name = sanitize_thm_name th.name; source_name = th.name; aliases = th.aliases; hash = th.hash;
                     status = ""; shard; src_file; src_line; classes = []; bridges = []; notes = []; var_views = [];
                     error = ""; statement = "" } in
        let verbose = List.mem "--verbose" args in
        if verbose then (prerr_string (th.name ^ " "); flush stderr);
        let item =
          (try
             ignore (Unix.alarm (match opt "--timeout" with Some s -> int_of_string s | None -> 10));
             let r = Elab.elab_sequent reg th.seq in
             ignore (Unix.alarm 0);
             let st = if Hashtbl.mem known base.Manifest.name then "native_reuse" else status_of_classes r.Elab.classes in
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
      (* write shards *)
      (try Unix.mkdir out_dir 0o755 with Unix.Unix_error (Unix.EEXIST, _, _) -> ());
      let shards = List.sort_uniq compare (List.map (fun i -> i.Manifest.shard) items) in
      let meta = ex.meta in
      let hol_commit = (match Yojson.Safe.Util.member "hol_light_commit" meta with `String s -> s | _ -> "?") in
      let public i = (match i.Manifest.status with "exact_native" | "transport_required" | "generalization_required" | "native_reuse" -> true | _ -> false) in
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
            else Printf.fprintf oc "Theorem %s : %s.\nAdmitted.\n\n" i.Manifest.name i.Manifest.statement) l;
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
      let manifest_file = (match opt "--manifest" with Some f -> f | None -> Filename.concat out_dir (profile ^ ".manifest.json")) in
      let header = [ ("schema", `Int 1); ("profile", `String profile); ("hol_light_commit", `String hol_commit);
                     ("auto_definitions", `List (List.map (fun ((ad : Elab.auto_def), (d : thm_record)) ->
                        `Assoc [ ("hol", `String ad.Elab.ad_hol); ("target", `String ad.Elab.ad_target); ("hash", `String d.hash);
                                 ("type", `String (Mg.string_of_mty ad.Elab.ad_type)); ("definition", `String (Mg.to_string ad.Elab.ad_body));
                                 ("notes", `List (List.map (fun s -> `String s) ad.Elab.ad_notes)) ]) auto_defs));
                     ("auto_type_definitions", `List (List.map (fun (at : Elab.auto_tydef) ->
                        `Assoc [ ("hol", `String at.Elab.at_hol); ("target", `String at.Elab.at_target); ("definition", `String (Mg.to_string at.Elab.at_body)) ]) auto_tydefs));
                     ("auto_definition_failures", `List (List.map (fun (c, m) -> `List [ `String c; `String m ]) (List.rev !auto_failed)));
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
        (List.length (List.filter (fun i -> i.Manifest.status = "error") items)) out_dir
  | _ -> prerr_endline usage; exit 2
