.class Lcom/google/common/collect/Iterables$8;
.super Lcom/google/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterables;->consumingIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 2

    .line 1006
    iput-object p1, p0, Lcom/google/common/collect/Iterables$8;->val$iterable:Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Lcom/google/common/collect/Iterables$8;->val$iterable:Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Queue;

    if-eqz v1, :cond_10

    .line 1010
    new-instance v0, Lcom/google/common/collect/ConsumingQueueIterator;

    iget-object v1, p0, Lcom/google/common/collect/Iterables$8;->val$iterable:Ljava/lang/Iterable;

    check-cast v1, Ljava/util/Queue;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ConsumingQueueIterator;-><init>(Ljava/util/Queue;)V

    return-object v0

    .line 1011
    :cond_10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->consumingIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1016
    const-string v0, "Iterables.consumingIterable(...)"

    return-object v0
.end method
