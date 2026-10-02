.class Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;
.super Ljava/lang/Object;
.source "ForwardingNavigableMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private nextOrNull:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;

.field private toRemove:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;)V
    .registers 3

    .line 315
    iput-object p1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->this$1:Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->toRemove:Ljava/util/Map$Entry;

    .line 317
    invoke-virtual {p1}, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->nextOrNull:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->nextOrNull:Ljava/util/Map$Entry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 315
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->nextOrNull:Ljava/util/Map$Entry;

    if-eqz v0, :cond_19

    .line 332
    iput-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->toRemove:Ljava/util/Map$Entry;

    .line 333
    iget-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->this$1:Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->nextOrNull:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->nextOrNull:Ljava/util/Map$Entry;

    return-object v0

    .line 327
    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->toRemove:Ljava/util/Map$Entry;

    if-eqz v0, :cond_17

    .line 342
    iget-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->this$1:Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->toRemove:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->toRemove:Ljava/util/Map$Entry;

    return-void

    .line 340
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
