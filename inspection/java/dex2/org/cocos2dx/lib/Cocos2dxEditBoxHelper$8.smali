.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->setVisible(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 322
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->val$index:I

    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 325
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mEditBoxArray:Landroid/util/SparseArray;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$400()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->val$index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    if-eqz v0, :cond_19

    .line 327
    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->val$visible:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    goto :goto_16

    :cond_14
    const/16 v1, 0x8

    :goto_16
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setVisibility(I)V

    :cond_19
    return-void
.end method
