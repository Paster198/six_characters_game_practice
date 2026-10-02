.class Lorg/cocos2dx/lib/Cocos2dxHelper$2;
.super Ljava/lang/Object;
.source "Cocos2dxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxHelper;->setEditTextDialogResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bytesUTF8:[B


# direct methods
.method constructor <init>([B)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 448
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxHelper$2;->val$bytesUTF8:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 451
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxHelper$2;->val$bytesUTF8:[B

    # invokes: Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetEditTextDialogResult([B)V
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$300([B)V

    return-void
.end method
