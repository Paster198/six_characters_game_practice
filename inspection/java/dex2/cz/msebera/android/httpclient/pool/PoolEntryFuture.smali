.class abstract Lcz/msebera/android/httpclient/pool/PoolEntryFuture;
.super Ljava/lang/Object;
.source "PoolEntryFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
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

.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/Lock;Lcz/msebera/android/httpclient/concurrent/FutureCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/Lock;",
            "Lcz/msebera/android/httpclient/concurrent/FutureCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    .line 55
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    .line 56
    iput-object p2, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    return-void
.end method


# virtual methods
.method public await(Ljava/util/Date;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 131
    :try_start_5
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->cancelled:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_30

    const-string v1, "Operation interrupted"

    if-nez v0, :cond_2a

    if-eqz p1, :cond_14

    .line 136
    :try_start_d
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    move-result p1

    goto :goto_1a

    .line 138
    :cond_14
    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->await()V

    const/4 p1, 0x1

    .line 141
    :goto_1a
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->cancelled:Z
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_30

    if-nez v0, :cond_24

    .line 146
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 142
    :cond_24
    :try_start_24
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_2a
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p1

    .line 146
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public cancel(Z)Z
    .registers 3

    .line 61
    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 63
    :try_start_5
    iget-boolean p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->completed:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_27

    if-eqz p1, :cond_10

    .line 74
    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return p1

    :cond_10
    const/4 p1, 0x1

    .line 66
    :try_start_11
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->completed:Z

    .line 67
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->cancelled:Z

    .line 68
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    if-eqz v0, :cond_1c

    .line 69
    invoke-interface {v0}, Lcz/msebera/android/httpclient/concurrent/FutureCallback;->cancelled()V

    .line 71
    :cond_1c
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_27

    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_27
    move-exception p1

    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .registers 4
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

    .line 91
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 93
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 6
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

    .line 101
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    .line 104
    :try_start_b
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->completed:Z

    if-eqz v1, :cond_17

    .line 105
    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->result:Ljava/lang/Object;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_2d
    .catchall {:try_start_b .. :try_end_11} :catchall_2b

    .line 121
    :goto_11
    iget-object p2, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 107
    :cond_17
    :try_start_17
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->result:Ljava/lang/Object;

    .line 108
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->completed:Z

    .line 109
    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    if-eqz p1, :cond_28

    .line 110
    iget-object p2, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->result:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    .line 112
    :cond_28
    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->result:Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2a} :catch_2d
    .catchall {:try_start_17 .. :try_end_2a} :catchall_2b

    goto :goto_11

    :catchall_2b
    move-exception p1

    goto :goto_40

    :catch_2d
    move-exception p1

    .line 114
    :try_start_2e
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->completed:Z

    const/4 p2, 0x0

    .line 115
    iput-object p2, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->result:Ljava/lang/Object;

    .line 116
    iget-object p2, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->callback:Lcz/msebera/android/httpclient/concurrent/FutureCallback;

    if-eqz p2, :cond_3a

    .line 117
    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    .line 119
    :cond_3a
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_2b

    .line 121
    :goto_40
    iget-object p2, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected abstract getPoolEntry(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public isCancelled()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->completed:Z

    return v0
.end method

.method public wakeup()V
    .registers 3

    .line 152
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 154
    :try_start_5
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 156
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
