.class abstract Lcom/google/common/cache/LocalCache$HashIterator;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field currentSegment:Lcom/google/common/cache/LocalCache$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field nextEntry:Lcom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .registers 2

    .line 4194
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4195
    iget-object p1, p1, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    const/4 p1, -0x1

    .line 4196
    iput p1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    .line 4197
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->advance()V

    return-void
.end method


# virtual methods
.method final advance()V
    .registers 4

    const/4 v0, 0x0

    .line 4204
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    .line 4206
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3b

    .line 4210
    :cond_a
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3b

    .line 4214
    :cond_11
    iget v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_3b

    .line 4215
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    iget v1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    .line 4216
    iget v0, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_11

    .line 4217
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4218
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    .line 4219
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_3b
    :goto_3b
    return-void
.end method

.method advanceTo(Lcom/google/common/cache/ReferenceEntry;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 4256
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 4257
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 4258
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v3, p1, v0, v1}, Lcom/google/common/cache/LocalCache;->getLiveValue(Lcom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 4260
    new-instance v0, Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/cache/LocalCache$WriteThroughEntry;-><init>(Lcom/google/common/cache/LocalCache;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_2b

    .line 4267
    iget-object p1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    const/4 p1, 0x1

    return p1

    :cond_24
    iget-object p1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    const/4 p1, 0x0

    return p1

    :catchall_2b
    move-exception p1

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 4268
    throw p1
.end method

.method public hasNext()Z
    .registers 2

    .line 4273
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public abstract next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method nextEntry()Lcom/google/common/cache/LocalCache$WriteThroughEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation

    .line 4277
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_c

    .line 4280
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    .line 4281
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->advance()V

    .line 4282
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    return-object v0

    .line 4278
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method nextInChain()Z
    .registers 2

    .line 4228
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/ReferenceEntry;

    if-eqz v0, :cond_19

    .line 4229
    :goto_4
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/ReferenceEntry;

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/ReferenceEntry;

    if-eqz v0, :cond_19

    .line 4230
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$HashIterator;->advanceTo(Lcom/google/common/cache/ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    .line 4229
    :cond_16
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/ReferenceEntry;

    goto :goto_4

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method nextInTable()Z
    .registers 4

    .line 4240
    :cond_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_22

    .line 4241
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/ReferenceEntry;

    if-eqz v0, :cond_0

    .line 4242
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$HashIterator;->advanceTo(Lcom/google/common/cache/ReferenceEntry;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_20
    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .registers 3

    .line 4287
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4288
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4289
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    return-void
.end method
