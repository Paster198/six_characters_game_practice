.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$2;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->removeEditBox(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 226
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mEditBoxArray:Landroid/util/SparseArray;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$400()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$2;->val$index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    if-eqz v0, :cond_27

    .line 228
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mEditBoxArray:Landroid/util/SparseArray;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$400()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$2;->val$index:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 229
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$100()Lorg/cocos2dx/lib/ResizeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/ResizeLayout;->removeView(Landroid/view/View;)V

    .line 230
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remove EditBox"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method
