import sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'native'))
from analyze import *

name=straddr('13MainMenuScene')
print('name',hex(name) if name else None)
for p in refs(name):
 ti=p-8
 print('rtti',hex(ti))
 for rp in refs(ti):
  vt=rp+8
  # RTTI has non-vtable references; inspect just those with offset-to-top nearby.
  top=struct.unpack('<q',read(vt-16,8))[0]
  if -0x800<top<=0:
   print('vtable',hex(vt),'offset',top)
   for k in range(0,0x60,8):print(hex(k),hex(ptr(vt+k)))
