.class public Landroidx/core/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExact(II)I
    .registers 6

    add-int v0, p0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p0, :cond_8

    move v3, v1

    goto :goto_9

    :cond_8
    move v3, v2

    :goto_9
    if-ltz p1, :cond_d

    move p1, v1

    goto :goto_e

    :cond_d
    move p1, v2

    :goto_e
    if-ne v3, p1, :cond_24

    if-ltz p0, :cond_14

    move p0, v1

    goto :goto_15

    :cond_14
    move p0, v2

    :goto_15
    if-ltz v0, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    if-ne p0, v1, :cond_1c

    goto :goto_24

    .line 39
    :cond_1c
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    :goto_24
    return v0
.end method

.method public static addExact(JJ)J
    .registers 10

    add-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    const/4 p1, 0x1

    const/4 v4, 0x0

    if-ltz p0, :cond_c

    move v5, p1

    goto :goto_d

    :cond_c
    move v5, v4

    :goto_d
    cmp-long p2, p2, v2

    if-ltz p2, :cond_13

    move p2, p1

    goto :goto_14

    :cond_13
    move p2, v4

    :goto_14
    if-ne v5, p2, :cond_2c

    if-ltz p0, :cond_1a

    move p0, p1

    goto :goto_1b

    :cond_1a
    move p0, v4

    :goto_1b
    cmp-long p2, v0, v2

    if-ltz p2, :cond_20

    goto :goto_21

    :cond_20
    move p1, v4

    :goto_21
    if-ne p0, p1, :cond_24

    goto :goto_2c

    .line 58
    :cond_24
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    :goto_2c
    return-wide v0
.end method

.method public static clamp(DDD)D
    .registers 7

    cmpg-double v0, p0, p2

    if-gez v0, :cond_5

    return-wide p2

    :cond_5
    cmpl-double p2, p0, p4

    if-lez p2, :cond_a

    return-wide p4

    :cond_a
    return-wide p0
.end method

.method public static clamp(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    return p1

    :cond_5
    cmpl-float p1, p0, p2

    if-lez p1, :cond_a

    return p2

    :cond_a
    return p0
.end method

.method public static clamp(III)I
    .registers 3

    if-ge p0, p1, :cond_3

    return p1

    :cond_3
    if-le p0, p2, :cond_6

    return p2

    :cond_6
    return p0
.end method

.method public static clamp(JJJ)J
    .registers 7

    cmp-long v0, p0, p2

    if-gez v0, :cond_5

    return-wide p2

    :cond_5
    cmp-long p2, p0, p4

    if-lez p2, :cond_a

    return-wide p4

    :cond_a
    return-wide p0
.end method

.method public static decrementExact(I)I
    .registers 2

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_7

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 178
    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "integer overflow"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decrementExact(J)J
    .registers 4

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_a

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    return-wide p0

    .line 194
    :cond_a
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static incrementExact(I)I
    .registers 2

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_8

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 146
    :cond_8
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "integer overflow"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static incrementExact(J)J
    .registers 4

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    return-wide p0

    .line 162
    :cond_d
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multiplyExact(II)I
    .registers 4

    mul-int v0, p0, p1

    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 112
    div-int v1, v0, p0

    if-ne v1, p1, :cond_f

    div-int p1, v0, p1

    if-ne p1, p0, :cond_f

    goto :goto_17

    .line 113
    :cond_f
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_17
    return v0
.end method

.method public static multiplyExact(JJ)J
    .registers 9

    mul-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-eqz v4, :cond_21

    cmp-long v2, p2, v2

    if-eqz v2, :cond_21

    .line 130
    div-long v2, v0, p0

    cmp-long v2, v2, p2

    if-nez v2, :cond_19

    div-long p2, v0, p2

    cmp-long p0, p2, p0

    if-nez p0, :cond_19

    goto :goto_21

    .line 131
    :cond_19
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    :goto_21
    return-wide v0
.end method

.method public static negateExact(I)I
    .registers 2

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_6

    neg-int p0, p0

    return p0

    .line 210
    :cond_6
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "integer overflow"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static negateExact(J)J
    .registers 4

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_8

    neg-long p0, p0

    return-wide p0

    .line 226
    :cond_8
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static subtractExact(II)I
    .registers 6

    sub-int v0, p0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez p0, :cond_8

    move v3, v1

    goto :goto_9

    :cond_8
    move v3, v2

    :goto_9
    if-gez p1, :cond_d

    move p1, v1

    goto :goto_e

    :cond_d
    move p1, v2

    :goto_e
    if-eq v3, p1, :cond_24

    if-gez p0, :cond_14

    move p0, v1

    goto :goto_15

    :cond_14
    move p0, v2

    :goto_15
    if-gez v0, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    if-ne p0, v1, :cond_1c

    goto :goto_24

    .line 77
    :cond_1c
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    :goto_24
    return v0
.end method

.method public static subtractExact(JJ)J
    .registers 10

    sub-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    const/4 p1, 0x1

    const/4 v4, 0x0

    if-gez p0, :cond_c

    move v5, p1

    goto :goto_d

    :cond_c
    move v5, v4

    :goto_d
    cmp-long p2, p2, v2

    if-gez p2, :cond_13

    move p2, p1

    goto :goto_14

    :cond_13
    move p2, v4

    :goto_14
    if-eq v5, p2, :cond_2c

    if-gez p0, :cond_1a

    move p0, p1

    goto :goto_1b

    :cond_1a
    move p0, v4

    :goto_1b
    cmp-long p2, v0, v2

    if-gez p2, :cond_20

    goto :goto_21

    :cond_20
    move p1, v4

    :goto_21
    if-ne p0, p1, :cond_24

    goto :goto_2c

    .line 95
    :cond_24
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    :goto_2c
    return-wide v0
.end method

.method public static toIntExact(J)I
    .registers 4

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_10

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_10

    long-to-int p0, p0

    return p0

    .line 242
    :cond_10
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
