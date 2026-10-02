.class public Lcz/msebera/android/httpclient/concurrent/BasicFuture;
.super Ljava/lang/Object;
.source "BasicFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lcz/msebera/android/httpclient/concurrent/Cancellable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Lcz/msebera/android/httpclient/concurrent/Cancellable;"
    }
.end annotation


# instance fields
.field private final callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/concurrent/FutureCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile cancelled:Z

.field private volatile completed:Z

.field private volatile ex:Ljava/lang/Exception;

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/concurrent/FutureCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/concurrent/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    return-void
.end method

.method private getResult()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    if-nez v0, :cond_7

    .line 72
    iget-object v0, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->result:Ljava/lang/Object;

    return-object v0

    .line 70
    :cond_7
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public cancel()Z
    .registers 2

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .registers 3

    .line 141
    monitor-enter p0

    .line 142
    :try_start_1
    iget-boolean p1, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->completed:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 143
    monitor-exit p0

    return p1

    :cond_8
    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->completed:Z

    .line 146
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->cancelled:Z

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 148
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_19

    .line 149
    iget-object v0, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    if-eqz v0, :cond_18

    .line 150
    invoke-interface {v0}, Lcz/msebera/android/httpclient/concurrent/FutureCallback;->cancelled()V

    :cond_18
    return p1

    :catchall_19
    move-exception p1

    .line 148
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public completed(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 110
    monitor-enter p0

    .line 111
    :try_start_1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->completed:Z

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    .line 112
    monitor-exit p0

    return p1

    :cond_8
    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->completed:Z

    .line 115
    iput-object p1, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->result:Ljava/lang/Object;

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_19

    .line 118
    iget-object v1, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    if-eqz v1, :cond_18

    .line 119
    invoke-interface {v1, p1}, Lcz/msebera/android/httpclient/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_18
    return v0

    :catchall_19
    move-exception p1

    .line 117
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public failed(Ljava/lang/Exception;)Z
    .registers 4

    .line 125
    monitor-enter p0

    .line 126
    :try_start_1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->completed:Z

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    .line 127
    monitor-exit p0

    return p1

    :cond_8
    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->completed:Z

    .line 130
    iput-object p1, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 132
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_19

    .line 133
    iget-object v1, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    if-eqz v1, :cond_18

    .line 134
    invoke-interface {v1, p1}, Lcz/msebera/android/httpclient/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    :cond_18
    return v0

    :catchall_19
    move-exception p1

    .line 132
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    monitor-enter p0

    .line 77
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->completed:Z

    if-nez v0, :cond_9

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 80
    :cond_9
    invoke-direct {p0}, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->getResult()Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public declared-synchronized get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_1
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gtz p3, :cond_12

    move-wide v2, v0

    goto :goto_16

    .line 88
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 90
    :goto_16
    iget-boolean v4, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->completed:Z

    if-eqz v4, :cond_20

    .line 91
    invoke-direct {p0}, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->getResult()Ljava/lang/Object;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_48

    monitor-exit p0

    return-object p1

    :cond_20
    if-lez p3, :cond_42

    move-wide v4, p1

    .line 96
    :goto_23
    :try_start_23
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 97
    iget-boolean p3, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->completed:Z

    if-eqz p3, :cond_30

    .line 98
    invoke-direct {p0}, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->getResult()Ljava/lang/Object;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_48

    monitor-exit p0

    return-object p1

    .line 100
    :cond_30
    :try_start_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sub-long v4, p1, v4

    cmp-long p3, v4, v0

    if-lez p3, :cond_3c

    goto :goto_23

    .line 102
    :cond_3c
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 93
    :cond_42
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :catchall_48
    move-exception p1

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public isCancelled()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .registers 2

    .line 65
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/concurrent/BasicFuture;->completed:Z

    return v0
.end method
