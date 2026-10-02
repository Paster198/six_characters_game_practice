#include "practice_scene.h"
#include <assert.h>
#include <stdint.h>
#include <string.h>
#include <math.h>
#include <stdio.h>

template<class T> void put(void* object, size_t off, T value) {
    memcpy(static_cast<char*>(object)+off, &value, sizeof value);
}
template<class T> T get(void* object, size_t off) {
    T value; memcpy(&value, static_cast<char*>(object)+off, sizeof value); return value;
}
struct alignas(8) Note { char bytes[0x80]{}; };
struct alignas(8) TreeNode { uintptr_t left=0, right=0, parent=0; char black[8]{};
    int key=0; int padding=0; uintptr_t first=0,last=0,capacity=0; };
struct alignas(8) Tree { uintptr_t first=0,root=0,size=0; };
static_assert(offsetof(TreeNode, first)==0x28, "wrong vector offset");
int main() {
    constexpr uintptr_t base=0x10000000;
    alignas(8) char model[0x158]{};
    put(model, 0, base+0x1b7cd48);
    Note camera, later, lanes, other;
    auto set=[&](Note& n,int time,int type,int dir,float duration){
        put(&n,0,base+0x1a7daf0);put(&n,0x18,time);put(&n,0x64,type);
        put(&n,0x68,duration);put(&n,0x6c,dir);
    };
    set(camera,1000,5,1,1000.f);set(later,3000,5,0,1000.f);
    set(lanes,1200,6,1,1000.f);set(other,1700,4,1,1.f);
    uintptr_t a[]={uintptr_t(&camera),uintptr_t(&lanes)};
    uintptr_t b[]={uintptr_t(&other)};
    uintptr_t c[]={uintptr_t(&later)};
    TreeNode left,root,right;Tree tree;
    auto vec=[](TreeNode& n,uintptr_t* v,size_t len){n.first=uintptr_t(v);n.last=n.first+len*8;n.capacity=n.last;};
    vec(left,a,2);vec(root,b,1);vec(right,c,1);
    root.left=uintptr_t(&left);root.right=uintptr_t(&right);root.parent=uintptr_t(&tree.root);
    left.parent=right.parent=uintptr_t(&root);
    tree.first=uintptr_t(&left);tree.root=uintptr_t(&root);tree.size=3;
    uintptr_t groups[]={uintptr_t(&tree)};
    put(model,0x88,uintptr_t(groups));put(model,0x90,uintptr_t(groups+1));
    assert(practice_scene::restoreSceneControls(model,1500,base)==2);
    assert(get<int>(model,0x54)==1000 && get<int>(model,0x58)==1);
    assert(fabs(get<float>(model,0x60)-1.25f)<0.00001);
    assert(get<float>(model,0x64)==get<float>(model,0x60));
    assert(fabs(get<float>(model,0x74)-0.3f)<0.00001);
    assert(practice_scene::restoreSceneControls(model,3500,base)==2);
    assert(get<int>(model,0x54)==3000 && get<int>(model,0x58)==0);
    assert(fabs(get<float>(model,0x60)-1.25f)<0.00001);
    assert(get<float>(model,0x74)==1.f);
    assert(practice_scene::restoreSceneControls(model,0,base)==0);
    assert(get<float>(model,0x60)==1.f && get<float>(model,0x74)==0.f);
    assert(get<int>(model,0x54)==-1073741824);
    put(model,0,uintptr_t(0));assert(practice_scene::restoreSceneControls(model,0,base)==-1);
    put(model,0,base+0x1b7cd48);
    put(model,0x90,uintptr_t(groups)-8);assert(practice_scene::restoreSceneControls(model,0,base)==-1);
    puts("practice_scene ABI tree traversal and enwiden state tests passed");
}
