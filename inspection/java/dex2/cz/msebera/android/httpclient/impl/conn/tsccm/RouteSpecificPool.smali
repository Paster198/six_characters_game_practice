.class public Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;
.super Ljava/lang/Object;
.source "RouteSpecificPool.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

.field protected final freeEntries:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected final maxEntries:I

.field protected numEntries:I

.field protected final route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

.field protected final waitingThreads:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 84
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 85
    iput p2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    .line 86
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool$1;

    invoke-direct {p1, p0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    .line 91
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    .line 92
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;)V
    .registers 5

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 104
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 105
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    .line 106
    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;->getMaxForRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I

    move-result p1

    iput p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    .line 107
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    .line 108
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 109
    iput p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void
.end method


# virtual methods
.method public allocEntry(Ljava/lang/Object;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
    .registers 5

    .line 174
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 175
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 176
    :cond_12
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 177
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    .line 178
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 179
    :cond_2e
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-object v1

    .line 184
    :cond_32
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result p1

    if-nez p1, :cond_5c

    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5c

    .line 185
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    .line 186
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->shutdownEntry()V

    .line 187
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 189
    :try_start_4f
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    return-object p1

    :catch_53
    move-exception v0

    .line 191
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p1

    :cond_5c
    const/4 p1, 0x0

    return-object p1
.end method

.method public createdEntry(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V
    .registers 3

    .line 227
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "Entry not planned for this pool"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 228
    iget p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void
.end method

.method public deleteEntry(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)Z
    .registers 3

    .line 244
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 246
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    :cond_e
    return p1
.end method

.method public dropEntry()V
    .registers 4

    .line 259
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    const/4 v1, 0x1

    if-lez v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v2, "There is no entry that could be dropped"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 260
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void
.end method

.method public freeEntry(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;)V
    .registers 4

    .line 206
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2a

    .line 210
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v0, v1, :cond_13

    .line 214
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    .line 211
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No entry allocated from this pool. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 207
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No entry created for this pool. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCapacity()I
    .registers 3

    .line 152
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;->getMaxForRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I

    move-result v0

    iget v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getEntryCount()I
    .registers 2

    .line 164
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return v0
.end method

.method public final getMaxEntries()I
    .registers 2

    .line 129
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    return v0
.end method

.method public final getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 2

    .line 119
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    return-object v0
.end method

.method public hasThread()Z
    .registers 2

    .line 285
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUnused()Z
    .registers 3

    .line 142
    iget v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_e

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public nextThread()Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;
    .registers 2

    .line 295
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;

    return-object v0
.end method

.method public queueThread(Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;)V
    .registers 3

    .line 273
    const-string v0, "Waiting thread"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeThread(Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThread;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 309
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
