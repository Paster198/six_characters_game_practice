.class Lcom/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;
.super Landroid/os/Handler;
.source "AsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/http/AsyncHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponderHandler"
.end annotation


# instance fields
.field private final mResponder:Lcom/loopj/android/http/AsyncHttpResponseHandler;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/AsyncHttpResponseHandler;Landroid/os/Looper;)V
    .registers 3

    .line 504
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 505
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;->mResponder:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 510
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;->mResponder:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
