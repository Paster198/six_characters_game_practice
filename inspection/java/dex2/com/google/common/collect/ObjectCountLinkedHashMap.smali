.class Lcom/google/common/collect/ObjectCountLinkedHashMap;
.super Lcom/google/common/collect/ObjectCountHashMap;
.source "ObjectCountLinkedHashMap.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ObjectCountHashMap<",
        "TK;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private transient firstEntry:I

.field private transient lastEntry:I

.field transient links:[J


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    .line 77
    invoke-direct {p0, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;-><init>(IF)V

    return-void
.end method

.method constructor <init>(IF)V
    .registers 3

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ObjectCountHashMap;-><init>(IF)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ObjectCountHashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ObjectCountHashMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/google/common/collect/ObjectCountHashMap;-><init>()V

    .line 89
    invoke-virtual {p1}, Lcom/google/common/collect/ObjectCountHashMap;->size()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->init(IF)V

    .line 90
    invoke-virtual {p1}, Lcom/google/common/collect/ObjectCountHashMap;->firstIndex()I

    move-result v0

    :goto_10
    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 91
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->getValue(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->put(Ljava/lang/Object;I)I

    .line 90
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ObjectCountHashMap;->nextIndex(I)I

    move-result v0

    goto :goto_10

    :cond_23
    return-void
.end method

.method static create()Lcom/google/common/collect/ObjectCountLinkedHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ObjectCountLinkedHashMap<",
            "TK;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/google/common/collect/ObjectCountLinkedHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;-><init>()V

    return-object v0
.end method

.method static createWithExpectedSize(I)Lcom/google/common/collect/ObjectCountLinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/ObjectCountLinkedHashMap<",
            "TK;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/google/common/collect/ObjectCountLinkedHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method private getPredecessor(I)I
    .registers 5

    .line 121
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    const/16 p1, 0x20

    ushr-long v0, v1, p1

    long-to-int p1, v0

    return p1
.end method

.method private getSuccessor(I)I
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    long-to-int p1, v1

    return p1
.end method

.method private setPredecessor(II)V
    .registers 8

    .line 135
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v3, p2

    const/16 p2, 0x20

    shl-long/2addr v3, p2

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method

.method private setSucceeds(II)V
    .registers 4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    .line 140
    iput p2, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->firstEntry:I

    goto :goto_9

    .line 142
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSuccessor(II)V

    :goto_9
    if-ne p2, v0, :cond_e

    .line 145
    iput p1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->lastEntry:I

    return-void

    .line 147
    :cond_e
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setPredecessor(II)V

    return-void
.end method

.method private setSuccessor(II)V
    .registers 10

    .line 130
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    const-wide v3, -0x100000000L

    and-long/2addr v1, v3

    int-to-long v3, p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 179
    invoke-super {p0}, Lcom/google/common/collect/ObjectCountHashMap;->clear()V

    const/4 v0, -0x2

    .line 180
    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->firstEntry:I

    .line 181
    iput v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->lastEntry:I

    return-void
.end method

.method firstIndex()I
    .registers 3

    .line 106
    iget v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->firstEntry:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    const/4 v0, -0x1

    :cond_6
    return v0
.end method

.method init(IF)V
    .registers 5

    .line 97
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ObjectCountHashMap;->init(IF)V

    const/4 p2, -0x2

    .line 98
    iput p2, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->firstEntry:I

    .line 99
    iput p2, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->lastEntry:I

    .line 100
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    const-wide/16 v0, -0x1

    .line 101
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method insertEntry(ILjava/lang/Object;II)V
    .registers 5
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;II)V"
        }
    .end annotation

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ObjectCountHashMap;->insertEntry(ILjava/lang/Object;II)V

    .line 154
    iget p2, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->lastEntry:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    const/4 p2, -0x2

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    return-void
.end method

.method moveLastEntry(I)V
    .registers 5

    .line 160
    invoke-virtual {p0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 161
    invoke-direct {p0, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getSuccessor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    if-ge p1, v0, :cond_21

    .line 163
    invoke-direct {p0, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    .line 164
    invoke-direct {p0, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getSuccessor(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->setSucceeds(II)V

    .line 166
    :cond_21
    invoke-super {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->moveLastEntry(I)V

    return-void
.end method

.method nextIndex(I)I
    .registers 3

    .line 111
    invoke-direct {p0, p1}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->getSuccessor(I)I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_8

    const/4 p1, -0x1

    :cond_8
    return p1
.end method

.method nextIndexAfterRemove(II)I
    .registers 4

    .line 117
    invoke-virtual {p0}, Lcom/google/common/collect/ObjectCountLinkedHashMap;->size()I

    move-result v0

    if-ne p1, v0, :cond_7

    return p2

    :cond_7
    return p1
.end method

.method resizeEntries(I)V
    .registers 6

    .line 171
    invoke-super {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->resizeEntries(I)V

    .line 172
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    array-length v1, v0

    .line 173
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ObjectCountLinkedHashMap;->links:[J

    const-wide/16 v2, -0x1

    .line 174
    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method
