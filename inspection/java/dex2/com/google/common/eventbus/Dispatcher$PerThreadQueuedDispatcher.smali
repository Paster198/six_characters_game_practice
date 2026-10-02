.class final Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;
.super Lcom/google/common/eventbus/Dispatcher;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PerThreadQueuedDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;
    }
.end annotation


# instance fields
.field private final dispatching:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Queue<",
            "Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Lcom/google/common/eventbus/Dispatcher;-><init>()V

    .line 79
    new-instance v0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$1;

    invoke-direct {v0, p0}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$1;-><init>(Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;)V

    iput-object v0, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->queue:Ljava/lang/ThreadLocal;

    .line 88
    new-instance v0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$2;

    invoke-direct {v0, p0}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$2;-><init>(Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;)V

    iput-object v0, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->dispatching:Ljava/lang/ThreadLocal;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/eventbus/Dispatcher$1;)V
    .registers 2

    .line 74
    invoke-direct {p0}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method dispatch(Ljava/lang/Object;Ljava/util/Iterator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->queue:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 101
    new-instance v1, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;-><init>(Ljava/lang/Object;Ljava/util/Iterator;Lcom/google/common/eventbus/Dispatcher$1;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 103
    iget-object p1, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->dispatching:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6a

    .line 104
    iget-object p1, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->dispatching:Ljava/lang/ThreadLocal;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 107
    :cond_2f
    :try_start_2f
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;

    if-eqz p1, :cond_53

    .line 108
    :goto_37
    # getter for: Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->subscribers:Ljava/util/Iterator;
    invoke-static {p1}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->access$400(Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;)Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 109
    # getter for: Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->subscribers:Ljava/util/Iterator;
    invoke-static {p1}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->access$400(Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;)Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/eventbus/Subscriber;

    # getter for: Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->event:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->access$500(Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/eventbus/Subscriber;->dispatchEvent(Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_5e

    goto :goto_37

    .line 113
    :cond_53
    iget-object p1, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->dispatching:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 114
    iget-object p1, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->queue:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    :catchall_5e
    move-exception p1

    .line 113
    iget-object p2, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->dispatching:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->remove()V

    .line 114
    iget-object p2, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;->queue:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->remove()V

    .line 115
    throw p1

    :cond_6a
    return-void
.end method
