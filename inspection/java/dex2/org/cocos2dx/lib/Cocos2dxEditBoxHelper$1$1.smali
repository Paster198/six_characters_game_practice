.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 130
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 142
    new-instance p2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 143
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object p1

    new-instance p3, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;

    invoke-direct {p3, p0, p2}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
