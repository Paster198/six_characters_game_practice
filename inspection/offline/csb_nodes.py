"""Read CocoStudio FlatBuffers trees using the public Cocos2d-x v3 schema.
https://raw.githubusercontent.com/cocos2d/cocos2d-x/v3/cocos/editor-support/cocostudio/CSParseBinary_generated.h
"""
import struct
import zipfile


class Csb:
    def __init__(self, data): self.data = data
    def u32(self, pos): return struct.unpack_from('<I', self.data, pos)[0]
    def i32(self, pos): return struct.unpack_from('<i', self.data, pos)[0]
    def u16(self, pos): return struct.unpack_from('<H', self.data, pos)[0]
    def field(self, table, index):
        vt = table-self.i32(table)
        if index >= self.u16(vt): return 0
        offset = self.u16(vt+index)
        return table+offset if offset else 0
    def ptr(self, table, index):
        p = self.field(table,index)
        return p+self.u32(p) if p else 0
    def string(self, table, index):
        p=self.ptr(table,index)
        return self.data[p+4:p+4+self.u32(p)].decode() if p else ''
    def byte(self, table, index, default):
        p=self.field(table,index)
        return self.data[p] if p else default
    def nodes(self):
        yield from self.walk(self.ptr(self.u32(0),10))
    def walk(self, node, parent=''):
        typ=self.string(node,4)
        opt=self.ptr(self.ptr(node,8),4)
        # All concrete option tables start with their base WidgetOptions.
        widget=opt if typ == "Node" else self.ptr(opt,4)
        name=self.string(widget,4)
        path=parent+'/'+name
        yield {'path':path,'type':typ,'node':node,'widget':widget,
               'visible':self.byte(widget,12,1),'touch':self.byte(widget,34,0)}
        vec=self.ptr(node,6)
        if vec:
            for i in range(self.u32(vec)):
                p=vec+4+i*4
                yield from self.walk(p+self.u32(p),path)


if __name__=='__main__':
    with zipfile.ZipFile('arcaea.apk') as z:
        for path in ['assets/layouts/mainmenu/MainMenu.csb','assets/layouts/topbar/TopBar.csb']:
            data=z.read(path)
            print(path,len(data))
            for node in Csb(data).nodes():print(node)
