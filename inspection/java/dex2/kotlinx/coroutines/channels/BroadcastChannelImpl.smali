.class public final Lkotlinx/coroutines/channels/BroadcastChannelImpl;
.super Lkotlinx/coroutines/channels/BufferedChannel;
.source "BroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/BroadcastChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered;,
        Lkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberConflated;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/BufferedChannel<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/BroadcastChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,414:1\n15#2:415\n15#2:416\n15#2:420\n15#2:423\n15#2:429\n15#2:430\n15#2:436\n15#2:439\n15#2:440\n15#2:441\n766#3:417\n857#3,2:418\n1855#3,2:421\n1747#3,3:424\n1855#3,2:427\n1855#3,2:431\n766#3:433\n857#3,2:434\n1855#3,2:437\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl\n*L\n166#1:415\n188#1:416\n213#1:420\n237#1:423\n279#1:429\n331#1:430\n343#1:436\n355#1:439\n382#1:440\n394#1:441\n189#1:417\n189#1:418,2\n226#1:421,2\n242#1:424,3\n251#1:427,2\n333#1:431,2\n338#1:433\n338#1:434,2\n346#1:437,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\n\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u000245B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0017\u0010\u001f\u001a\u00020\n2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0010\u00a2\u0006\u0002\u0008\"J\u0012\u0010#\u001a\u00020\n2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u000e\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%H\u0016J\u001e\u0010&\u001a\u00020\'2\n\u0010(\u001a\u0006\u0012\u0002\u0008\u00030\u00132\u0008\u0010)\u001a\u0004\u0018\u00010\rH\u0014J\u0016\u0010*\u001a\u00020\'2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000%H\u0002J\u0019\u0010,\u001a\u00020\'2\u0006\u0010)\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010-J\u0008\u0010.\u001a\u00020/H\u0016J&\u00100\u001a\u0008\u0012\u0004\u0012\u00020\'012\u0006\u0010)\u001a\u00028\u0000H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00082\u00103R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00060\u000fj\u0002`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R6\u0010\u0011\u001a*\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0013\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0012j\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0013\u0012\u0006\u0012\u0004\u0018\u00010\r`\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\u00028\u00008F\u00a2\u0006\u000c\u0012\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0019\u0010\u001c\u001a\u0004\u0018\u00018\u00008F\u00a2\u0006\u000c\u0012\u0004\u0008\u001d\u0010\u0019\u001a\u0004\u0008\u001e\u0010\u001b\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00066"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/BroadcastChannelImpl;",
        "E",
        "Lkotlinx/coroutines/channels/BufferedChannel;",
        "Lkotlinx/coroutines/channels/BroadcastChannel;",
        "capacity",
        "",
        "(I)V",
        "getCapacity",
        "()I",
        "isClosedForSend",
        "",
        "()Z",
        "lastConflatedElement",
        "",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Lkotlinx/coroutines/internal/ReentrantLock;",
        "onSendInternalResult",
        "Ljava/util/HashMap;",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "Lkotlin/collections/HashMap;",
        "subscribers",
        "",
        "value",
        "getValue$annotations",
        "()V",
        "getValue",
        "()Ljava/lang/Object;",
        "valueOrNull",
        "getValueOrNull$annotations",
        "getValueOrNull",
        "cancelImpl",
        "cause",
        "",
        "cancelImpl$kotlinx_coroutines_core",
        "close",
        "openSubscription",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "registerSelectForSend",
        "",
        "select",
        "element",
        "removeSubscriber",
        "s",
        "send",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toString",
        "",
        "trySend",
        "Lkotlinx/coroutines/channels/ChannelResult;",
        "trySend-JP2dKIU",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "SubscriberBuffered",
        "SubscriberConflated",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final capacity:I

.field private lastConflatedElement:Ljava/lang/Object;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final onSendInternalResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private subscribers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 143
    iput p1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->capacity:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_2d

    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    goto :goto_2d

    .line 147
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BroadcastChannel capacity must be positive or Channel.CONFLATED, but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " was specified"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_2d
    :goto_2d
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 157
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->subscribers:Ljava/util/List;

    .line 160
    # getter for: Lkotlinx/coroutines/channels/BroadcastChannelKt;->NO_ELEMENT:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/channels/BroadcastChannelKt;->access$getNO_ELEMENT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lastConflatedElement:Ljava/lang/Object;

    .line 325
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->onSendInternalResult:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getLock$p(Lkotlinx/coroutines/channels/BroadcastChannelImpl;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    .line 139
    iget-object p0, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static final synthetic access$getOnSendInternalResult$p(Lkotlinx/coroutines/channels/BroadcastChannelImpl;)Ljava/util/HashMap;
    .registers 1

    .line 139
    iget-object p0, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->onSendInternalResult:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$removeSubscriber(Lkotlinx/coroutines/channels/BroadcastChannelImpl;Lkotlinx/coroutines/channels/ReceiveChannel;)V
    .registers 2

    .line 139
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->removeSubscriber(Lkotlinx/coroutines/channels/ReceiveChannel;)V

    return-void
.end method

.method public static synthetic getValue$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getValueOrNull$annotations()V
    .registers 0

    return-void
.end method

.method private final removeSubscriber(Lkotlinx/coroutines/channels/ReceiveChannel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;)V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 416
    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 189
    :try_start_7
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->subscribers:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 417
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 418
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/channels/BufferedChannel;

    if-eq v4, p1, :cond_16

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 419
    :cond_29
    check-cast v2, Ljava/util/List;

    .line 189
    iput-object v2, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->subscribers:Ljava/util/List;

    .line 190
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_33

    .line 416
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_33
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method


# virtual methods
.method public cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z
    .registers 5

    .line 343
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 436
    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 346
    :try_start_7
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->subscribers:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 437
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 346
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    goto :goto_f

    .line 348
    :cond_1f
    # getter for: Lkotlinx/coroutines/channels/BroadcastChannelKt;->NO_ELEMENT:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/channels/BroadcastChannelKt;->access$getNO_ELEMENT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lastConflatedElement:Ljava/lang/Object;

    .line 350
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->cancelImpl$kotlinx_coroutines_core(Ljava/lang/Throwable;)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_2d

    .line 436
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_2d
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public close(Ljava/lang/Throwable;)Z
    .registers 7

    .line 331
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 430
    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 333
    :try_start_7
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->subscribers:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 431
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 333
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->close(Ljava/lang/Throwable;)Z

    goto :goto_f

    .line 338
    :cond_1f
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->subscribers:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 433
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 434
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 338
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/BufferedChannel;->hasElements$kotlinx_coroutines_core()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 434
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 435
    :cond_45
    check-cast v2, Ljava/util/List;

    .line 338
    iput-object v2, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->subscribers:Ljava/util/List;

    .line 340
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->close(Ljava/lang/Throwable;)Z

    move-result p1
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_51

    .line 430
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_51
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final getCapacity()I
    .registers 2

    .line 143
    iget v0, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->capacity:I

    return v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 440
    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 384
    :try_start_7
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->isClosedForSend()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 385
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1c

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This broadcast channel is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    :cond_1c
    throw v1

    .line 388
    :cond_1d
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lastConflatedElement:Ljava/lang/Object;

    # getter for: Lkotlinx/coroutines/channels/BroadcastChannelKt;->NO_ELEMENT:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/channels/BroadcastChannelKt;->access$getNO_ELEMENT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v1, v2, :cond_2b

    .line 390
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lastConflatedElement:Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_37

    .line 440
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 388
    :cond_2b
    :try_start_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No value"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v1

    .line 440
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final getValueOrNull()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 441
    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 396
    :try_start_7
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->isClosedForReceive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    goto :goto_1a

    .line 398
    :cond_f
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lastConflatedElement:Ljava/lang/Object;

    # getter for: Lkotlinx/coroutines/channels/BroadcastChannelKt;->NO_ELEMENT:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/channels/BroadcastChannelKt;->access$getNO_ELEMENT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v1, v3, :cond_18

    goto :goto_1a

    .line 400
    :cond_18
    iget-object v2, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lastConflatedElement:Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1e

    .line 441
    :goto_1a
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catchall_1e
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public isClosedForSend()Z
    .registers 3

    .line 355
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 439
    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 355
    :try_start_7
    invoke-super {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 439
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_f
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public openSubscription()Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 415
    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 169
    :try_start_7
    iget v1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->capacity:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    new-instance v1, Lkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberConflated;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberConflated;-><init>(Lkotlinx/coroutines/channels/BroadcastChannelImpl;)V

    :goto_11
    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel;

    goto :goto_1a

    :cond_14
    new-instance v1, Lkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered;-><init>(Lkotlinx/coroutines/channels/BroadcastChannelImpl;)V

    goto :goto_11

    .line 174
    :goto_1a
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->isClosedForSend()Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lastConflatedElement:Ljava/lang/Object;

    # getter for: Lkotlinx/coroutines/channels/BroadcastChannelKt;->NO_ELEMENT:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/channels/BroadcastChannelKt;->access$getNO_ELEMENT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v2, v3, :cond_35

    .line 175
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->close(Ljava/lang/Throwable;)Z

    .line 176
    check-cast v1, Lkotlinx/coroutines/channels/ReceiveChannel;
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_54

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 180
    :cond_35
    :try_start_35
    iget-object v2, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lastConflatedElement:Ljava/lang/Object;

    # getter for: Lkotlinx/coroutines/channels/BroadcastChannelKt;->NO_ELEMENT:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/channels/BroadcastChannelKt;->access$getNO_ELEMENT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-eq v2, v3, :cond_44

    .line 181
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_44
    iget-object v2, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->subscribers:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->subscribers:Ljava/util/List;
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_54

    .line 415
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    check-cast v1, Lkotlinx/coroutines/channels/ReceiveChannel;

    return-object v1

    :catchall_54
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 429
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 280
    :try_start_8
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->onSendInternalResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 283
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_35

    .line 284
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 286
    :cond_17
    :try_start_17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_35

    .line 429
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 289
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$registerSelectForSend$2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, p1, v2}, Lkotlinx/coroutines/channels/BroadcastChannelImpl$registerSelectForSend$2;-><init>(Lkotlinx/coroutines/channels/BroadcastChannelImpl;Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :catchall_35
    move-exception v0

    move-object p1, v0

    .line 429
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;

    iget v1, v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;-><init>(Lkotlinx/coroutines/channels/BroadcastChannelImpl;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p2, v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 212
    iget v2, v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3c

    if-ne v2, v3, :cond_34

    iget-object p1, v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;->L$1:Ljava/lang/Object;

    iget-object v4, v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_80

    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 213
    iget-object p2, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 420
    check-cast p2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 215
    :try_start_46
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->isClosedForSend()Z

    move-result v2

    if-nez v2, :cond_99

    .line 217
    iget v2, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->capacity:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_53

    iput-object p1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lastConflatedElement:Ljava/lang/Object;

    .line 219
    :cond_53
    iget-object v2, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->subscribers:Ljava/util/List;
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_9e

    .line 420
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 226
    check-cast v2, Ljava/lang/Iterable;

    .line 421
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    move-object v4, p0

    :goto_62
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 230
    iput-object v4, v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl$send$1;->label:I

    invoke-virtual {v2, p2, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->sendBroadcast$kotlinx_coroutines_core(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7d

    return-object v1

    :cond_7d
    move-object v5, v2

    move-object v2, p2

    move-object p2, v5

    :goto_80
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_94

    .line 233
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->isClosedForSend()Z

    move-result p2

    if-nez p2, :cond_8f

    goto :goto_94

    :cond_8f
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_94
    :goto_94
    move-object p2, v2

    goto :goto_62

    .line 235
    :cond_96
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 215
    :cond_99
    :try_start_99
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_9e

    :catchall_9e
    move-exception p1

    .line 420
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lastConflatedElement:Ljava/lang/Object;

    # getter for: Lkotlinx/coroutines/channels/BroadcastChannelKt;->NO_ELEMENT:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/channels/BroadcastChannelKt;->access$getNO_ELEMENT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v1, v2, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CONFLATED_ELEMENT="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lastConflatedElement:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    :cond_25
    const-string v1, ""

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    const-string v1, "BROADCAST=<"

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    invoke-super {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    const-string v1, ">; SUBSCRIBERS="

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->subscribers:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, ";"

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v1, "<"

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const-string v1, ">"

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v9, 0x38

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 423
    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 239
    :try_start_7
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->isClosedForSend()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_72

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 242
    :cond_15
    :try_start_15
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->subscribers:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 424
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_27

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_47

    .line 425
    :cond_27
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 242
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel;->shouldSendSuspend$kotlinx_coroutines_core()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 243
    sget-object p1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    move-result-object p1
    :try_end_43
    .catchall {:try_start_15 .. :try_end_43} :catchall_72

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 245
    :cond_47
    :goto_47
    :try_start_47
    iget v1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->capacity:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4e

    iput-object p1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->lastConflatedElement:Ljava/lang/Object;

    .line 251
    :cond_4e
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->subscribers:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 427
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 251
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 253
    :cond_66
    sget-object p1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6e
    .catchall {:try_start_47 .. :try_end_6e} :catchall_72

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_72
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
