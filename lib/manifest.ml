(* Generation manifests and reports. *)

type item = {
  name : string;              (* target theorem name *)
  source_name : string;
  aliases : string list;
  hash : string;
  status : string;            (* exact_native | transport_required | generalization_required | pending_mapping | error *)
  shard : string;
  src_file : string;
  src_line : int;
  classes : string list;
  bridges : string list;
  notes : string list;
  var_views : (string * string) list;
  error : string;
  statement : string;
  source : string;            (* HOL Light statement (pretty-printed typed source IR) *)
}

let json_of_item (i : item) : Yojson.Safe.t =
  `Assoc [ ("name", `String i.name); ("source_name", `String i.source_name);
           ("aliases", `List (List.map (fun s -> `String s) i.aliases));
           ("hash", `String i.hash); ("status", `String i.status); ("shard", `String i.shard);
           ("src_file", `String i.src_file); ("src_line", `Int i.src_line);
           ("classes", `List (List.map (fun s -> `String s) (List.sort compare i.classes)));
           ("bridges", `List (List.map (fun s -> `String s) (List.sort compare i.bridges)));
           ("notes", `List (List.map (fun s -> `String s) (List.sort compare i.notes)));
           ("var_views", `Assoc (List.map (fun (k, v) -> (k, `String v)) i.var_views));
           ("error", `String i.error);
           ("source", `String i.source);
           ("statement", `String i.statement) ]

let write_manifest file (header : (string * Yojson.Safe.t) list) (items : item list) =
  let items = List.sort (fun a b -> compare a.name b.name) items in
  let j = `Assoc (header @ [ ("items", `List (List.map json_of_item items)) ]) in
  let oc = open_out file in
  output_string oc (Yojson.Safe.pretty_to_string j);
  output_char oc '\n';
  close_out oc

(* count occurrences of a key in a list *)
let histogram (l : string list) : (string * int) list =
  let tbl = Hashtbl.create 64 in
  List.iter (fun k -> Hashtbl.replace tbl k (1 + (try Hashtbl.find tbl k with Not_found -> 0))) l;
  let l = Hashtbl.fold (fun k v acc -> (k, v) :: acc) tbl [] in
  List.sort (fun (a, x) (b, y) -> if x <> y then compare y x else compare a b) l

let write_report file (profile : string) (header_lines : string list) (items : item list) =
  let oc = open_out file in
  let p fmt = Printf.fprintf oc fmt in
  p "# hol2mg statement translation report: profile `%s`\n\n" profile;
  List.iter (fun l -> p "%s\n" l) header_lines;
  p "\n## Status counts\n\n| status | count |\n|---|---|\n";
  List.iter (fun (k, v) -> p "| %s | %d |\n" k v) (histogram (List.map (fun i -> i.status) items));
  p "\n## Public statements per shard\n\n| shard | public | pending | error |\n|---|---|---|---|\n";
  let shards = List.sort_uniq compare (List.map (fun i -> i.shard) items) in
  List.iter (fun s ->
    let l = List.filter (fun i -> i.shard = s) items in
    let cnt f = List.length (List.filter f l) in
    p "| %s | %d | %d | %d |\n" s
      (cnt (fun i -> i.status = "exact_native" || i.status = "transport_required" || i.status = "generalization_required"))
      (cnt (fun i -> i.status = "pending_mapping")) (cnt (fun i -> i.status = "error"))) shards;
  p "\n## Top blockers (pending_mapping reasons)\n\n| count | reason |\n|---|---|\n";
  let reasons = List.filter_map (fun i -> if i.status = "pending_mapping" then Some i.error else None) items in
  List.iteri (fun k (r, n) -> if k < 60 then p "| %d | %s |\n" n r) (histogram reasons);
  let errs = List.filter (fun i -> i.status = "error") items in
  if errs <> [] then begin
    p "\n## Internal errors\n\n";
    List.iter (fun i -> p "- `%s`: %s\n" i.source_name i.error) errs
  end;
  p "\n## Bridges referenced\n\n";
  List.iter (fun (k, v) -> p "- %s (%d)\n" k v) (histogram (List.concat_map (fun i -> i.bridges) items));
  close_out oc
