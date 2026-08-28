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

let sanitize_thm_name s =
  let s = String.map (fun c -> if Mg.is_name_char c then c else '_') s in
  if Mg.is_reserved s then s ^ "_hl" else s

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
        | None -> List.filter Sys.file_exists [ "mglib/native/prelude.mg"; "mglib/native/finseq.mg" ]) in
      List.iter Mg.load_signature_names natives;
      let ex = read_export export_file in
      let reg = Registry.load (String.split_on_char ',' mappings) ex.type_constructors in
      Emptycase.rules := List.map (fun (l, r, _) -> (l, r)) reg.Registry.empty_rules;
      Rewrite.rules := reg.Registry.rewrite_rules;
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
      let manifest_file = (match opt "--manifest" with Some f -> f | None -> Filename.concat out_dir (profile ^ ".manifest.json")) in
      let header = [ ("schema", `Int 1); ("profile", `String profile); ("hol_light_commit", `String hol_commit);
                     ("mapping_files", `List (List.map (fun (f, d) -> `List [ `String f; `String d ]) reg.Registry.files));
                     ("signature", `String (Filename.basename sig_file)) ] in
      Manifest.write_manifest manifest_file header items;
      let report_file = (match opt "--report" with Some f -> f | None -> Filename.concat out_dir (profile ^ ".report.md")) in
      let n = List.length items and np = List.length (List.filter public items) in
      Manifest.write_report report_file profile
        [ Printf.sprintf "- HOL Light commit: `%s`" hol_commit;
          Printf.sprintf "- theorems: %d discovered, %d public" n np;
          Printf.sprintf "- mapping files: %s" (String.concat ", " (List.map fst reg.Registry.files)) ] items;
      Printf.printf "hol2mg: %d theorems, %d public (%d pending, %d errors); shards in %s\n" n np
        (List.length (List.filter (fun i -> i.Manifest.status = "pending_mapping") items))
        (List.length (List.filter (fun i -> i.Manifest.status = "error") items)) out_dir
  | _ -> prerr_endline usage; exit 2
