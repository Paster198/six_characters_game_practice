import sys,bisect
sys.path.insert(0,'inspection/native');import analyze as a
seen=set()
for loc,start,_ in a.calls([0xc9cc78]):
 if start in seen:continue
 seen.add(start)
 end=a.funcs[bisect.bisect_right(a.funcs,start)]
 if end-start>1800:continue
 ins=list(a.md.disasm(a.read(start,end-start),start))
 if any('#0x2d]' in i.op_str for i in ins) and any('#0x10]' in i.op_str for i in ins):
  print('\nFUNC',hex(start));a.dis(start,end-start)
