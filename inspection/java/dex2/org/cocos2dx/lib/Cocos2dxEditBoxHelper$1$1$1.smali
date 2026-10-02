.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 146
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    iget v0, v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$index:I

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->val$text:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->__editBoxEditingChanged(ILjava/lang/String;)V

    return-void
.end method
