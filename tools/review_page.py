#!/usr/bin/env python3
"""Side-by-side statement review page (design §13.5).
Usage: tools/review_page.py PROFILE  -> generated/reports/PROFILE.review.html
Reads generated/public/PROFILE/PROFILE.manifest.json and generated/internal/PROFILE.jsonl (HOL display).
"""
import json, html, sys, os, collections

def main(prof):
    here = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    man = json.load(open(f'{here}/generated/public/{prof}/{prof}.manifest.json'))
    disp = {}
    for line in open(f'{here}/generated/internal/{prof}.jsonl'):
        r = json.loads(line)
        if r['kind'] == 'theorem': disp[r['name']] = r['display']
    items = man['items']
    counts = collections.Counter(i['status'] for i in items)
    out = [f"""<title>hol2mg review: {prof}</title>
<style>
body{{font-family:system-ui,sans-serif;margin:1em 2em;background:#fafafa;color:#222}}
table{{border-collapse:collapse;width:100%}} td,th{{border:1px solid #ccc;padding:4px 6px;vertical-align:top;font-size:13px}}
pre{{white-space:pre-wrap;margin:0;font-size:12px}} .st-exact_native{{background:#e6ffe6}} .st-transport_required{{background:#fff8e0}}
.st-generalization_required{{background:#e8f0ff}} .st-native_reuse{{background:#eee}} .st-pending_mapping{{background:#ffe6e6}} .st-error{{background:#f99}}
.meta{{color:#555;font-size:11px}} input{{width:30em}}
</style>
<h1>hol2mg statement review: profile {html.escape(prof)}</h1>
<p>HOL Light commit {man.get('hol_light_commit','')}; mapping files: {html.escape(', '.join(f for f,_ in man.get('mapping_files',[])))}.</p>
<p>{' · '.join(f'{k}: {v}' for k,v in sorted(counts.items()))}</p>
<p><input id="q" placeholder="filter by name / shard / status / text" oninput="flt()"> <label><input type="checkbox" id="pend" onchange="flt()" style="width:auto"> only pending/error</label></p>
<script>
function flt(){{var q=document.getElementById('q').value.toLowerCase();var p=document.getElementById('pend').checked;
for(const tr of document.querySelectorAll('tr.item')){{var t=tr.textContent.toLowerCase();var st=tr.dataset.st;
tr.style.display=((!q||t.includes(q))&&(!p||st=='pending_mapping'||st=='error'))?'':'none';}}}}
</script>
<table><tr><th>source</th><th>HOL Light statement</th><th>native Megalodon statement</th><th>status / mappings / notes</th></tr>"""]
    for i in sorted(items, key=lambda i: (i['shard'], i['src_line'], i['name'])):
        st = i['status']
        info = [f"<b>{html.escape(st)}</b>"]
        if i['classes']: info.append('classes: ' + html.escape(', '.join(i['classes'])))
        if i['bridges']: info.append('bridges: ' + html.escape(', '.join(i['bridges'])))
        if i['notes']: info.append('notes: ' + html.escape(', '.join(i['notes'])))
        if i['var_views']: info.append('views: ' + html.escape(', '.join(f'{k}={v}' for k,v in i['var_views'].items())))
        if i['error']: info.append('<span style="color:#a00">' + html.escape(i['error']) + '</span>')
        src = f"<b>{html.escape(i['source_name'])}</b><br><span class=meta>{html.escape(i['src_file'])}:{i['src_line']}<br>{i['hash'][:12]}</span>"
        if i['aliases'] and len(i['aliases']) > 1: src += '<br><span class=meta>aliases: ' + html.escape(' '.join(i['aliases'])) + '</span>'
        out.append(f'<tr class="item st-{st}" data-st="{st}"><td>{src}</td><td><pre>{html.escape(disp.get(i["source_name"],""))}</pre></td>'
                   f'<td><pre>{html.escape(i["statement"])}</pre></td><td class=meta>{"<br>".join(info)}</td></tr>')
    out.append('</table>')
    ad = man.get('auto_definitions', [])
    if ad:
        out.append(f'<h2>Automatic definitions ({len(ad)})</h2><table><tr><th>HOL constant</th><th>Megalodon definition</th></tr>')
        for d in ad:
            out.append(f'<tr><td>{html.escape(d["hol"])}</td><td><pre>Definition {html.escape(d["target"])} : {html.escape(d["type"])} :=\n  {html.escape(d["definition"])}.</pre></td></tr>')
        out.append('</table>')
    af = man.get('auto_definition_failures', [])
    if af:
        out.append('<h2>Not auto-defined</h2><ul>' + ''.join(f'<li>{html.escape(c)}: {html.escape(m)}</li>' for c, m in af) + '</ul>')
    os.makedirs(f'{here}/generated/reports', exist_ok=True)
    path = f'{here}/generated/reports/{prof}.review.html'
    open(path, 'w').write('\n'.join(out))
    print('wrote', path, len(items), 'items')

if __name__ == '__main__':
    main(sys.argv[1])
