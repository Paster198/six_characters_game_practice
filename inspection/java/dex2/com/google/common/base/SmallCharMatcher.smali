.class final Lcom/google/common/base/SmallCharMatcher;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "SmallCharMatcher.java"


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final DESIRED_LOAD_FACTOR:D = 0.5

.field static final MAX_SIZE:I = 0x3ff


# instance fields
.field private final containsZero:Z

.field private final filter:J

.field private final table:[C


# direct methods
.method private constructor <init>([CJZLjava/lang/String;)V
    .registers 6

    .line 37
    invoke-direct {p0, p5}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    .line 39
    iput-wide p2, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    .line 40
    iput-boolean p4, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    return-void
.end method

.method private checkFilter(I)Z
    .registers 6

    .line 59
    iget-wide v0, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    shr-long/2addr v0, p1

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method static chooseTableSize(I)I
    .registers 6

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    add-int/lit8 v1, p0, -0x1

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    :goto_d
    int-to-double v1, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_19

    shl-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_19
    return v0
.end method

.method static from(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .registers 11

    .line 90
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    .line 93
    invoke-static {v0}, Lcom/google/common/base/SmallCharMatcher;->chooseTableSize(I)I

    move-result v0

    new-array v3, v0, [C

    add-int/lit8 v0, v0, -0x1

    .line 95
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const-wide/16 v4, 0x0

    :goto_17
    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v1

    or-long/2addr v7, v4

    .line 98
    invoke-static {v1}, Lcom/google/common/base/SmallCharMatcher;->smear(I)I

    move-result v2

    :goto_22
    and-int/2addr v2, v0

    .line 101
    aget-char v4, v3, v2

    if-nez v4, :cond_32

    int-to-char v4, v1

    .line 102
    aput-char v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    .line 95
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move-wide v4, v7

    goto :goto_17

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 109
    :cond_35
    new-instance v2, Lcom/google/common/base/SmallCharMatcher;

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/common/base/SmallCharMatcher;-><init>([CJZLjava/lang/String;)V

    return-object v2
.end method

.method static smear(I)I
    .registers 2

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr p0, v0

    const/16 v0, 0xf

    .line 55
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    const v0, 0x1b873593

    mul-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public matches(C)Z
    .registers 8

    if-nez p1, :cond_5

    .line 115
    iget-boolean p1, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    return p1

    .line 117
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/common/base/SmallCharMatcher;->checkFilter(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    .line 120
    :cond_d
    iget-object v0, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 121
    invoke-static {p1}, Lcom/google/common/base/SmallCharMatcher;->smear(I)I

    move-result v3

    and-int/2addr v3, v0

    move v4, v3

    .line 124
    :cond_18
    iget-object v5, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v5, v5, v4

    if-nez v5, :cond_1f

    return v1

    :cond_1f
    if-ne v5, p1, :cond_22

    return v2

    :cond_22
    add-int/lit8 v4, v4, 0x1

    and-int/2addr v4, v0

    if-ne v4, v3, :cond_18

    return v1
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 6

    .line 138
    iget-boolean v0, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 139
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 141
    :cond_8
    iget-object v0, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v2, v0

    :goto_b
    if-ge v1, v2, :cond_17

    aget-char v3, v0, v1

    if-eqz v3, :cond_14

    .line 143
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method
