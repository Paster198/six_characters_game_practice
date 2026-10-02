.class abstract Lcz/msebera/android/httpclient/pool/RouteSpecificPool;
.super Ljava/lang/Object;
.source "RouteSpecificPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "E:",
        "Lcz/msebera/android/httpclient/pool/PoolEntry<",
        "TT;TC;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final available:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final leased:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final pending:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/pool/PoolEntryFuture<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final route:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->route:Ljava/lang/Object;

    .line 49
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    .line 50
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    .line 51
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TE;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->createEntry(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected abstract createEntry(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TE;"
        }
    .end annotation
.end method

.method public free(Lcz/msebera/android/httpclient/pool/PoolEntry;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)V"
        }
    .end annotation

    .line 121
    const-string v0, "Pool entry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 123
    const-string v1, "Entry %s has not been leased from this pool"

    invoke-static {v0, v1, p1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_17

    .line 125
    iget-object p2, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public getAllocatedCount()I
    .registers 3

    .line 73
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getAvailableCount()I
    .registers 2

    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getFree(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    if-eqz p1, :cond_2f

    .line 79
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 80
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/pool/PoolEntry;

    .line 82
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 84
    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 89
    :cond_2f
    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 90
    :cond_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/pool/PoolEntry;

    .line 92
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_35

    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 94
    iget-object p1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_50
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLastUsed()Lcz/msebera/android/httpclient/pool/PoolEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 104
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/pool/PoolEntry;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeasedCount()I
    .registers 2

    .line 61
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getPendingCount()I
    .registers 2

    .line 65
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final getRoute()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->route:Ljava/lang/Object;

    return-object v0
.end method

.method public nextPending()Lcz/msebera/android/httpclient/pool/PoolEntryFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcz/msebera/android/httpclient/pool/PoolEntryFuture<",
            "TE;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;

    return-object v0
.end method

.method public queue(Lcz/msebera/android/httpclient/pool/PoolEntryFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/PoolEntryFuture<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 139
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove(Lcz/msebera/android/httpclient/pool/PoolEntry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 111
    const-string v0, "Pool entry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 113
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    const/4 p1, 0x0

    return p1

    :cond_17
    const/4 p1, 0x1

    return p1
.end method

.method public shutdown()V
    .registers 4

    .line 155
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;

    const/4 v2, 0x1

    .line 156
    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/pool/PoolEntryFuture;->cancel(Z)Z

    goto :goto_6

    .line 158
    :cond_17
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 159
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/pool/PoolEntry;

    .line 160
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->close()V

    goto :goto_22

    .line 162
    :cond_32
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 163
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/pool/PoolEntry;

    .line 164
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->close()V

    goto :goto_3d

    .line 166
    :cond_4d
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[route: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->route:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "][leased: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "][available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "][pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unqueue(Lcz/msebera/android/httpclient/pool/PoolEntryFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/PoolEntryFuture<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 151
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
