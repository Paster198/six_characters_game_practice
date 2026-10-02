.class public Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "HttpRequestFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final callable:Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;",
            "Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable<",
            "TV;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 48
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    .line 49
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->callable:Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3

    .line 58
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->callable:Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->cancel()V

    if-eqz p1, :cond_c

    .line 60
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->abort()V

    .line 62
    :cond_c
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public endedTime()J
    .registers 3

    .line 83
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 84
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->callable:Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->getEnded()J

    move-result-wide v0

    return-wide v0

    .line 86
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task is not done yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestDuration()J
    .registers 5

    .line 95
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 96
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->endedTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->startedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 98
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task is not done yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scheduledTime()J
    .registers 3

    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->callable:Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->getScheduled()J

    move-result-wide v0

    return-wide v0
.end method

.method public startedTime()J
    .registers 3

    .line 76
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->callable:Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestTaskCallable;->getStarted()J

    move-result-wide v0

    return-wide v0
.end method

.method public taskDuration()J
    .registers 5

    .line 106
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 107
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->endedTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->scheduledTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 109
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task is not done yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpRequestFutureTask;->request:Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
