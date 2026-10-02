.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$15;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->closeKeyboard(I)V
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

    .line 439
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$15;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 442
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$15;->val$index:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->closeKeyboardOnUiThread(I)V
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$300(I)V

    return-void
.end method
