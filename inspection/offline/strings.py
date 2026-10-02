from pathlib import Path
for row in Path('inspection/native-strings.txt').read_text(encoding='utf8').splitlines():
 a,_,s=row.partition('\t')
 if not s or len(s)>120 or s.startswith(('ZN','NSt','ZZ','_Z')):continue
 if any(x in s.lower() for x in ['offline','login','token','logged','lastuser','last_user','network','account']): print(row)
