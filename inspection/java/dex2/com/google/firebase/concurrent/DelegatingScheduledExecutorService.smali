.class Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;
.super Ljava/lang/Object;
.source "DelegatingScheduledExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final delegate:Ljava/util/concurrent/ExecutorService;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    .line 34
    iput-object p2, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic lambda$schedule$0(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V
    .registers 2

    .line 116
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    .line 117
    invoke-interface {p1, p0}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;->set(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 119
    invoke-interface {p1, p0}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$schedule$3(Ljava/util/concurrent/Callable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V
    .registers 2

    .line 136
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    .line 137
    invoke-interface {p1, p0}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;->set(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 139
    invoke-interface {p1, p0}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$scheduleAtFixedRate$6(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V
    .registers 2

    .line 156
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 158
    invoke-interface {p1, p0}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;->setException(Ljava/lang/Throwable;)V

    .line 159
    throw p0
.end method

.method static synthetic lambda$scheduleWithFixedDelay$9(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V
    .registers 2

    .line 177
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 179
    invoke-interface {p1, p0}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;->setException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isShutdown()Z
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$schedule$1$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$schedule$2$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)Ljava/util/concurrent/ScheduledFuture;
    .registers 8

    .line 111
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p5}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$schedule$4$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/util/concurrent/Callable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda9;-><init>(Ljava/util/concurrent/Callable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$schedule$5$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)Ljava/util/concurrent/ScheduledFuture;
    .registers 8

    .line 131
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p5}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda10;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/util/concurrent/Callable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$scheduleAtFixedRate$7$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V
    .registers 5

    .line 153
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$scheduleAtFixedRate$8$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)Ljava/util/concurrent/ScheduledFuture;
    .registers 10

    .line 0
    move-object v0, p1

    .line 151
    iget-object p1, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p7

    move-object p7, p6

    move-wide p5, p4

    move-wide p3, p2

    new-instance p2, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v0, v1}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    invoke-interface/range {p1 .. p7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$scheduleWithFixedDelay$10$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V
    .registers 5

    .line 174
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$scheduleWithFixedDelay$11$com-google-firebase-concurrent-DelegatingScheduledExecutorService(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)Ljava/util/concurrent/ScheduledFuture;
    .registers 10

    .line 0
    move-object v0, p1

    .line 172
    iget-object p1, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p7

    move-object p7, p6

    move-wide p5, p4

    move-wide p3, p2

    new-instance p2, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0, v1}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;)V

    invoke-interface/range {p1 .. p7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Resolver;)V

    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda8;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda8;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Resolver;)V

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda5;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Resolver;)V

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    new-instance v1, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda7;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService$$ExternalSyntheticLambda7;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Resolver;)V

    return-object v0
.end method

.method public shutdown()V
    .registers 3

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shutting down is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shutting down is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledExecutorService;->delegate:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
