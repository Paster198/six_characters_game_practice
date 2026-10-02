.class public final Lkotlinx/coroutines/ExecutorsKt;
.super Ljava/lang/Object;
.source "Executors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0011\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u00a2\u0006\u0002\u0008\u0003\u001a\u0011\u0010\u0000\u001a\u00020\u0004*\u00020\u0005H\u0007\u00a2\u0006\u0002\u0008\u0003\u001a\n\u0010\u0006\u001a\u00020\u0002*\u00020\u0001*\u0010\u0008\u0007\u0010\u0007\"\u00020\u00042\u00020\u0004B\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "asCoroutineDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Ljava/util/concurrent/Executor;",
        "from",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "Ljava/util/concurrent/ExecutorService;",
        "asExecutor",
        "CloseableCoroutineDispatcher",
        "Lkotlinx/coroutines/ExperimentalCoroutinesApi;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic CloseableCoroutineDispatcher$annotations()V
    .registers 0

    return-void
.end method

.method public static final asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;
    .registers 2

    .line 108
    instance-of v0, p0, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_13

    :cond_12
    return-object v0

    :cond_13
    :goto_13
    new-instance v0, Lkotlinx/coroutines/DispatcherExecutor;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/DispatcherExecutor;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;)V

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static final from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 2

    .line 100
    instance-of v0, p0, Lkotlinx/coroutines/DispatcherExecutor;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/DispatcherExecutor;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_11

    iget-object v0, v0, Lkotlinx/coroutines/DispatcherExecutor;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    if-nez v0, :cond_10

    goto :goto_11

    :cond_10
    return-object v0

    :cond_11
    :goto_11
    new-instance v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public static final from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .registers 2

    .line 70
    new-instance v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    check-cast v0, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    return-object v0
.end method
