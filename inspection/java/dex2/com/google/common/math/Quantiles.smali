.class public final Lcom/google/common/math/Quantiles;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/Quantiles$ScaleAndIndexes;,
        Lcom/google/common/math/Quantiles$ScaleAndIndex;,
        Lcom/google/common/math/Quantiles$Scale;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(II)V
    .registers 2

    .line 132
    invoke-static {p0, p1}, Lcom/google/common/math/Quantiles;->checkIndex(II)V

    return-void
.end method

.method static synthetic access$400([J)[D
    .registers 1

    .line 132
    invoke-static {p0}, Lcom/google/common/math/Quantiles;->longsToDoubles([J)[D

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500([I)[D
    .registers 1

    .line 132
    invoke-static {p0}, Lcom/google/common/math/Quantiles;->intsToDoubles([I)[D

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600([D)Z
    .registers 1

    .line 132
    invoke-static {p0}, Lcom/google/common/math/Quantiles;->containsNaN([D)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(I[DII)V
    .registers 4

    .line 132
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/math/Quantiles;->selectInPlace(I[DII)V

    return-void
.end method

.method static synthetic access$800(DDDD)D
    .registers 8

    .line 132
    invoke-static/range {p0 .. p7}, Lcom/google/common/math/Quantiles;->interpolate(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$900([III[DII)V
    .registers 6

    .line 132
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    return-void
.end method

.method private static checkIndex(II)V
    .registers 4

    if-ltz p0, :cond_5

    if-gt p0, p1, :cond_5

    return-void

    .line 487
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Quantile indexes must be between 0 and the scale, which is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static chooseNextSelection([IIIII)I
    .registers 7

    if-ne p1, p2, :cond_3

    return p1

    :cond_3
    add-int/2addr p3, p4

    ushr-int/lit8 p4, p3, 0x1

    :goto_6
    add-int/lit8 v0, p1, 0x1

    if-le p2, v0, :cond_19

    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .line 676
    aget v1, p0, v0

    if-le v1, p4, :cond_14

    move p2, v0

    goto :goto_6

    :cond_14
    if-ge v1, p4, :cond_18

    move p1, v0

    goto :goto_6

    :cond_18
    return v0

    .line 686
    :cond_19
    aget p4, p0, p1

    sub-int/2addr p3, p4

    aget p0, p0, p2

    sub-int/2addr p3, p0

    if-lez p3, :cond_22

    return p2

    :cond_22
    return p1
.end method

.method private static varargs containsNaN([D)Z
    .registers 6

    .line 456
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-wide v3, p0, v2

    .line 457
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method private static interpolate(DDDD)D
    .registers 13

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, p0, v0

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-nez v2, :cond_10

    cmpl-double p0, p2, v3

    if-nez p0, :cond_f

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_f
    return-wide v0

    :cond_10
    cmpl-double v0, p2, v3

    if-nez v0, :cond_15

    return-wide v3

    :cond_15
    sub-double/2addr p2, p0

    mul-double/2addr p2, p4

    div-double/2addr p2, p6

    add-double/2addr p0, p2

    return-wide p0
.end method

.method private static intsToDoubles([I)[D
    .registers 6

    .line 502
    array-length v0, p0

    .line 503
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_e

    .line 505
    aget v3, p0, v2

    int-to-double v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-object v1
.end method

.method private static longsToDoubles([J)[D
    .registers 6

    .line 493
    array-length v0, p0

    .line 494
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_e

    .line 496
    aget-wide v3, p0, v2

    long-to-double v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-object v1
.end method

.method public static median()Lcom/google/common/math/Quantiles$ScaleAndIndex;
    .registers 2

    const/4 v0, 0x2

    .line 136
    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/math/Quantiles$Scale;->index(I)Lcom/google/common/math/Quantiles$ScaleAndIndex;

    move-result-object v0

    return-object v0
.end method

.method private static movePivotToStartOfSlice([DII)V
    .registers 13

    add-int v0, p1, p2

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    .line 602
    aget-wide v2, p0, p2

    aget-wide v4, p0, v0

    cmpg-double v6, v2, v4

    const/4 v7, 0x0

    if-gez v6, :cond_f

    move v6, v1

    goto :goto_10

    :cond_f
    move v6, v7

    .line 603
    :goto_10
    aget-wide v8, p0, p1

    cmpg-double v4, v4, v8

    if-gez v4, :cond_18

    move v4, v1

    goto :goto_19

    :cond_18
    move v4, v7

    :goto_19
    cmpg-double v2, v2, v8

    if-gez v2, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v7

    :goto_1f
    if-ne v6, v4, :cond_25

    .line 607
    invoke-static {p0, v0, p1}, Lcom/google/common/math/Quantiles;->swap([DII)V

    return-void

    :cond_25
    if-eq v6, v1, :cond_2a

    .line 610
    invoke-static {p0, p1, p2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    :cond_2a
    return-void
.end method

.method private static partition([DII)I
    .registers 8

    .line 570
    invoke-static {p0, p1, p2}, Lcom/google/common/math/Quantiles;->movePivotToStartOfSlice([DII)V

    .line 571
    aget-wide v0, p0, p1

    move v2, p2

    :goto_6
    if-le p2, p1, :cond_16

    .line 577
    aget-wide v3, p0, p2

    cmpl-double v3, v3, v0

    if-lez v3, :cond_13

    .line 578
    invoke-static {p0, v2, p2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    add-int/lit8 v2, v2, -0x1

    :cond_13
    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    .line 586
    :cond_16
    invoke-static {p0, p1, v2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    return v2
.end method

.method public static percentiles()Lcom/google/common/math/Quantiles$Scale;
    .registers 1

    const/16 v0, 0x64

    .line 146
    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    return-object v0
.end method

.method public static quartiles()Lcom/google/common/math/Quantiles$Scale;
    .registers 1

    const/4 v0, 0x4

    .line 141
    invoke-static {v0}, Lcom/google/common/math/Quantiles;->scale(I)Lcom/google/common/math/Quantiles$Scale;

    move-result-object v0

    return-object v0
.end method

.method public static scale(I)Lcom/google/common/math/Quantiles$Scale;
    .registers 3

    .line 156
    new-instance v0, Lcom/google/common/math/Quantiles$Scale;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/math/Quantiles$Scale;-><init>(ILcom/google/common/math/Quantiles$1;)V

    return-object v0
.end method

.method private static selectAllInPlace([III[DII)V
    .registers 15

    .line 623
    invoke-static {p0, p1, p2, p4, p5}, Lcom/google/common/math/Quantiles;->chooseNextSelection([IIIII)I

    move-result v0

    .line 624
    aget v1, p0, v0

    .line 627
    invoke-static {v1, p3, p4, p5}, Lcom/google/common/math/Quantiles;->selectInPlace(I[DII)V

    add-int/lit8 v2, v0, -0x1

    move v5, v2

    :goto_c
    if-lt v5, p1, :cond_15

    .line 631
    aget v2, p0, v5

    if-ne v2, v1, :cond_15

    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    :cond_15
    if-lt v5, p1, :cond_20

    add-int/lit8 v8, v1, -0x1

    move-object v3, p0

    move v4, p1

    move-object v6, p3

    move v7, p4

    .line 635
    invoke-static/range {v3 .. v8}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    move p1, v0

    :goto_23
    if-gt p1, p2, :cond_2c

    .line 640
    aget p4, p0, p1

    if-ne p4, v1, :cond_2c

    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    :cond_2c
    if-gt p1, p2, :cond_33

    add-int/lit8 p4, v1, 0x1

    .line 644
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/Quantiles;->selectAllInPlace([III[DII)V

    :cond_33
    return-void
.end method

.method private static selectInPlace(I[DII)V
    .registers 9

    if-ne p0, p2, :cond_19

    add-int/lit8 p0, p2, 0x1

    move v0, p2

    :goto_5
    if-gt p0, p3, :cond_13

    .line 537
    aget-wide v1, p1, v0

    aget-wide v3, p1, p0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_10

    move v0, p0

    :cond_10
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_13
    if-eq v0, p2, :cond_29

    .line 542
    invoke-static {p1, v0, p2}, Lcom/google/common/math/Quantiles;->swap([DII)V

    return-void

    :cond_19
    :goto_19
    if-le p3, p2, :cond_29

    .line 550
    invoke-static {p1, p2, p3}, Lcom/google/common/math/Quantiles;->partition([DII)I

    move-result v0

    if-lt v0, p0, :cond_23

    add-int/lit8 p3, v0, -0x1

    :cond_23
    if-gt v0, p0, :cond_19

    add-int/lit8 v0, v0, 0x1

    move p2, v0

    goto :goto_19

    :cond_29
    return-void
.end method

.method private static swap([DII)V
    .registers 7

    .line 695
    aget-wide v0, p0, p1

    .line 696
    aget-wide v2, p0, p2

    aput-wide v2, p0, p1

    .line 697
    aput-wide v0, p0, p2

    return-void
.end method
