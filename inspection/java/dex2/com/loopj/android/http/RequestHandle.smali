.class public Lcom/loopj/android/http/RequestHandle;
.super Ljava/lang/Object;
.source "RequestHandle.java"


# instance fields
.field private final request:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/loopj/android/http/AsyncHttpRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/loopj/android/http/AsyncHttpRequest;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/AsyncHttpRequest;

    if-eqz v0, :cond_28

    .line 54
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_23

    .line 55
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/loopj/android/http/RequestHandle$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/loopj/android/http/RequestHandle$1;-><init>(Lcom/loopj/android/http/RequestHandle;Lcom/loopj/android/http/AsyncHttpRequest;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1

    .line 65
    :cond_23
    invoke-virtual {v0, p1}, Lcom/loopj/android/http/AsyncHttpRequest;->cancel(Z)Z

    move-result p1

    return p1

    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/AsyncHttpRequest;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_c
    invoke-virtual {v0}, Lcom/loopj/android/http/AsyncHttpRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/AsyncHttpRequest;

    if-eqz v0, :cond_13

    .line 89
    invoke-virtual {v0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public isFinished()Z
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/AsyncHttpRequest;

    if-eqz v0, :cond_13

    .line 79
    invoke-virtual {v0}, Lcom/loopj/android/http/AsyncHttpRequest;->isDone()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/loopj/android/http/RequestHandle;
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/AsyncHttpRequest;

    if-eqz v0, :cond_d

    .line 118
    invoke-virtual {v0, p1}, Lcom/loopj/android/http/AsyncHttpRequest;->setRequestTag(Ljava/lang/Object;)Lcom/loopj/android/http/AsyncHttpRequest;

    :cond_d
    return-object p0
.end method

.method public shouldBeGarbageCollected()Z
    .registers 3

    .line 93
    invoke-virtual {p0}, Lcom/loopj/android/http/RequestHandle;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/loopj/android/http/RequestHandle;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_17

    .line 95
    iget-object v1, p0, Lcom/loopj/android/http/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_17
    return v0
.end method
