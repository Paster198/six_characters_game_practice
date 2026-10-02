.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 158
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    if-eqz p2, :cond_38

    .line 163
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object p1

    new-instance p2, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$1;

    invoke-direct {p2, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;)V

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 169
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setSelection(I)V

    .line 170
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$100()Lorg/cocos2dx/lib/ResizeLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/ResizeLayout;->setEnableForceDoLayout(Z)V

    .line 171
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setSoftKeyboardShown(Z)V

    .line 172
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "edit box get focus"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 174
    :cond_38
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setVisibility(I)V

    .line 177
    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->val$editBox:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-virtual {p2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 178
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object p2

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$2;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 184
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$100()Lorg/cocos2dx/lib/ResizeLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/ResizeLayout;->setEnableForceDoLayout(Z)V

    .line 185
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "edit box lose focus"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
