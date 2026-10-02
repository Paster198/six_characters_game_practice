.class final Lcom/google/common/collect/LinkedHashMultimap$ValueSet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "LinkedHashMultimap.java"

# interfaces
.implements Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet<",
        "TV;>;",
        "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private modCount:I

.field private size:I

.field final synthetic this$0:Lcom/google/common/collect/LinkedHashMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V
    .registers 4
    .param p1    # Lcom/google/common/collect/LinkedHashMultimap;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 369
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    const/4 p1, 0x0

    .line 361
    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 362
    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    .line 370
    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->key:Ljava/lang/Object;

    .line 371
    iput-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 372
    iput-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 374
    invoke-static {p3, p1, p2}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result p1

    .line 378
    new-array p1, p1, [Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 379
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .registers 1

    .line 353
    iget-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)I
    .registers 1

    .line 353
    iget p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    return p0
.end method

.method private mask()I
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private rehashIfNecessary()V
    .registers 7

    .line 491
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length v1, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/Hashing;->needsResizing(IID)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 493
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 494
    iput-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    add-int/lit8 v0, v0, -0x1

    .line 496
    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    :goto_1a
    if-eq v2, p0, :cond_2d

    .line 499
    move-object v3, v2

    check-cast v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 500
    iget v4, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->smearedValueHash:I

    and-int/2addr v4, v0

    .line 501
    aget-object v5, v1, v4

    iput-object v5, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 502
    aput-object v3, v1, v4

    .line 498
    invoke-interface {v2}, Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v2

    goto :goto_1a

    :cond_2d
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 469
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 470
    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->mask()I

    move-result v1

    and-int/2addr v1, v0

    .line 471
    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aget-object v2, v2, v1

    move-object v3, v2

    :goto_e
    if-eqz v3, :cond_1b

    .line 473
    invoke-virtual {v3, p1, v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 p1, 0x0

    return p1

    .line 472
    :cond_18
    iget-object v3, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_e

    .line 478
    :cond_1b
    new-instance v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v4, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->key:Ljava/lang/Object;

    invoke-direct {v3, v4, p1, v0, v2}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 479
    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    # invokes: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    invoke-static {p1, v3}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 480
    # invokes: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    invoke-static {v3, p0}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 481
    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    # getter for: Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getPredecessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    # invokes: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    invoke-static {p1, v3}, Lcom/google/common/collect/LinkedHashMultimap;->access$400(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 482
    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    # getter for: Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    # invokes: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    invoke-static {v3, p1}, Lcom/google/common/collect/LinkedHashMultimap;->access$400(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 483
    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aput-object v3, p1, v1

    .line 484
    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 485
    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    .line 486
    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->rehashIfNecessary()V

    return v0
.end method

.method public clear()V
    .registers 3

    .line 535
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 536
    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 537
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    :goto_b
    if-eq v0, p0, :cond_18

    .line 540
    move-object v1, v0

    check-cast v1, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 541
    # invokes: Lcom/google/common/collect/LinkedHashMultimap;->deleteFromMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    invoke-static {v1}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 539
    invoke-interface {v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    goto :goto_b

    .line 543
    :cond_18
    # invokes: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    invoke-static {p0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 544
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 456
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 457
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->mask()I

    move-result v2

    and-int/2addr v2, v0

    aget-object v1, v1, v2

    :goto_d
    if-eqz v1, :cond_1a

    .line 460
    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 p1, 0x1

    return p1

    .line 459
    :cond_17
    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_d

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public getPredecessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method public getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 408
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;-><init>(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 510
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 511
    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->mask()I

    move-result v1

    and-int/2addr v1, v0

    .line 513
    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_e
    if-eqz v2, :cond_3b

    .line 516
    invoke-virtual {v2, p1, v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_35

    if-nez v3, :cond_1f

    .line 519
    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v0, v2, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aput-object v0, p1, v1

    goto :goto_23

    .line 521
    :cond_1f
    iget-object p1, v2, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iput-object p1, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 523
    :goto_23
    # invokes: Lcom/google/common/collect/LinkedHashMultimap;->deleteFromValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    invoke-static {v2}, Lcom/google/common/collect/LinkedHashMultimap;->access$500(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 524
    # invokes: Lcom/google/common/collect/LinkedHashMultimap;->deleteFromMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    invoke-static {v2}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 525
    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 526
    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    return v0

    .line 515
    :cond_35
    iget-object v3, v2, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_e

    :cond_3b
    const/4 p1, 0x0

    return p1
.end method

.method public setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 398
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-void
.end method

.method public setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 403
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-void
.end method

.method public size()I
    .registers 2

    .line 451
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    return v0
.end method
