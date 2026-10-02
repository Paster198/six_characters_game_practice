.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x6

    if-ne p2, p1, :cond_a

    .line 210
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    iget p1, p1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$index:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->closeKeyboardOnUiThread(I)V
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$300(I)V

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
