.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

.field final synthetic val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;Lorg/cocos2dx/lib/Cocos2dxEditBox;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 193
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1e

    const/16 p1, 0x42

    if-ne p2, p1, :cond_1e

    .line 196
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getInputType()I

    move-result p1

    const/high16 p2, 0x20000

    and-int/2addr p1, p2

    if-eq p1, p2, :cond_1e

    .line 197
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    iget p1, p1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$index:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->closeKeyboardOnUiThread(I)V
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$300(I)V

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method
