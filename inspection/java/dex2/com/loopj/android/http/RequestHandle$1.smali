.class Lcom/loopj/android/http/RequestHandle$1;
.super Ljava/lang/Object;
.source "RequestHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/RequestHandle;

.field final synthetic val$_request:Lcom/loopj/android/http/AsyncHttpRequest;

.field final synthetic val$mayInterruptIfRunning:Z


# direct methods
.method constructor <init>(Lcom/loopj/android/http/RequestHandle;Lcom/loopj/android/http/AsyncHttpRequest;Z)V
    .registers 4

    .line 55
    iput-object p1, p0, Lcom/loopj/android/http/RequestHandle$1;->this$0:Lcom/loopj/android/http/RequestHandle;

    iput-object p2, p0, Lcom/loopj/android/http/RequestHandle$1;->val$_request:Lcom/loopj/android/http/AsyncHttpRequest;

    iput-boolean p3, p0, Lcom/loopj/android/http/RequestHandle$1;->val$mayInterruptIfRunning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/loopj/android/http/RequestHandle$1;->val$_request:Lcom/loopj/android/http/AsyncHttpRequest;

    iget-boolean v1, p0, Lcom/loopj/android/http/RequestHandle$1;->val$mayInterruptIfRunning:Z

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpRequest;->cancel(Z)Z

    return-void
.end method
