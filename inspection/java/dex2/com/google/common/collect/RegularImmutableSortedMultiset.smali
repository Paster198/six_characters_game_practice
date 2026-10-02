.class final Lcom/google/common/collect/RegularImmutableSortedMultiset;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "RegularImmutableSortedMultiset.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final NATURAL_EMPTY_MULTISET:Lcom/google/common/collect/ImmutableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZERO_CUMULATIVE_COUNTS:[J


# instance fields
.field private final transient cumulativeCounts:[J

.field final transient elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient length:I

.field private final transient offset:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    .line 36
    new-array v0, v0, [J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    sput-object v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->ZERO_CUMULATIVE_COUNTS:[J

    .line 38
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    .line 39
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->NATURAL_EMPTY_MULTISET:Lcom/google/common/collect/ImmutableSortedMultiset;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedSet;[JII)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableSortedSet<",
            "TE;>;[JII)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 56
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    .line 57
    iput p3, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    .line 58
    iput p4, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 48
    sget-object p1, Lcom/google/common/collect/RegularImmutableSortedMultiset;->ZERO_CUMULATIVE_COUNTS:[J

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    .line 50
    iput p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    return-void
.end method

.method private getCount(I)I
    .registers 8

    .line 62
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    add-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v0, v2

    add-int/2addr v1, p1

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    long-to-int p1, v2

    return p1
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 84
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_d

    .line 85
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getCount(I)I

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic elementSet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getEntry(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getCount(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method

.method getSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 111
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_10

    .line 113
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1

    :cond_10
    if-nez p1, :cond_17

    .line 114
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    if-ne p2, v0, :cond_17

    return-object p0

    .line 117
    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    iget v3, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    add-int/2addr v3, p1

    sub-int/2addr p2, p1

    invoke-direct {v1, v0, v2, v3, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;[JII)V

    return-object v1
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    move p2, v2

    :goto_e
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .registers 3

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .registers 4

    .line 125
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    const/4 v1, 0x1

    if-gtz v0, :cond_10

    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    return v0

    :cond_10
    :goto_10
    return v1
.end method

.method public lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getEntry(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 7

    .line 90
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->cumulativeCounts:[J

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->offset:I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    add-int/2addr v2, v1

    aget-wide v2, v0, v2

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    .line 91
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 107
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne p2, v1, :cond_c

    const/4 p2, 0x1

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    :goto_d
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result p1

    iget p2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->length:I

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->getSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .registers 3

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method
