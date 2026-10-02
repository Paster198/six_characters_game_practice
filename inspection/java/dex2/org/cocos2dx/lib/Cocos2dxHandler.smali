.class public Lorg/cocos2dx/lib/Cocos2dxHandler;
.super Landroid/os/Handler;
.source "Cocos2dxHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;
    }
.end annotation


# static fields
.field public static final HANDLER_SHOW_DIALOG:I = 0x1


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/cocos2dx/lib/Cocos2dxActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private showDialog(Landroid/os/Message;)V
    .registers 4

    .line 73
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 74
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;

    .line 75
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;->titile:Ljava/lang/String;

    .line 76
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object p1, p1, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;->message:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxHandler$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxHandler$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxHandler;)V

    .line 78
    const-string v1, "Ok"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    return-void

    .line 67
    :cond_6
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxHandler;->showDialog(Landroid/os/Message;)V

    return-void
.end method
