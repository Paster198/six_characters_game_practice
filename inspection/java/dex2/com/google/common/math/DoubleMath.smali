.class public final Lcom/google/common/math/DoubleMath;
.super Ljava/lang/Object;
.source "DoubleMath.java"


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final LN_2:D

.field static final MAX_FACTORIAL:I = 0xaa

.field private static final MAX_INT_AS_DOUBLE:D = 2.147483647E9

.field private static final MAX_LONG_AS_DOUBLE_PLUS_ONE:D = 9.223372036854776E18

.field private static final MIN_INT_AS_DOUBLE:D = -2.147483648E9

.field private static final MIN_LONG_AS_DOUBLE:D = -9.223372036854776E18

.field static final everySixteenthFactorial:[D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 278
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    const/16 v0, 0xb

    .line 320
    new-array v0, v0, [D

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    return-void

    :array_12
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x42b3077775800000L    # 2.0922789888E13
        0x474956ad0aae33a4L    # 2.631308369336935E35
        0x4c9ee69a78d72cb6L    # 1.2413915592536073E61
        0x526fe478ee34844aL    # 1.2688693218588417E89
        0x589c619094edabffL    # 7.156945704626381E118
        0x5f13638dd7bd6347L    # 9.916779348709496E149
        0x65c7cac197cfe503L    # 1.974506857221074E182
        0x6cb1e5dfc140e1e5L    # 3.856204823625804E215
        0x73c8ce85fadb707eL    # 5.5502938327393044E249
        0x7b095d5f3d928edeL    # 4.7147236359920616E284
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFinite(D)D
    .registers 3

    .line 524
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    return-wide p0
.end method

.method public static factorial(I)D
    .registers 6

    .line 303
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/16 v0, 0xaa

    if-le p0, v0, :cond_c

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_c
    and-int/lit8 v0, p0, -0x10

    add-int/lit8 v0, v0, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_12
    if-gt v0, p0, :cond_19

    int-to-double v3, v0

    mul-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 313
    :cond_19
    sget-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    shr-int/lit8 p0, p0, 0x4

    aget-wide v3, v0, p0

    mul-double/2addr v1, v3

    return-wide v1
.end method

.method public static fuzzyCompare(DDD)I
    .registers 6

    .line 382
    invoke-static/range {p0 .. p5}, Lcom/google/common/math/DoubleMath;->fuzzyEquals(DDD)Z

    move-result p4

    if-eqz p4, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    cmpg-double p4, p0, p2

    if-gez p4, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    cmpl-double p4, p0, p2

    if-lez p4, :cond_14

    const/4 p0, 0x1

    return p0

    .line 389
    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result p0

    return p0
.end method

.method public static fuzzyEquals(DDD)Z
    .registers 10

    .line 361
    const-string v0, "tolerance"

    invoke-static {v0, p4, p5}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;D)D

    sub-double v0, p0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 362
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    cmpg-double p4, v0, p4

    if-lez p4, :cond_24

    cmpl-double p4, p0, p2

    if-eqz p4, :cond_24

    .line 365
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_22

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_24

    :cond_22
    const/4 p0, 0x0

    return p0

    :cond_24
    :goto_24
    const/4 p0, 0x1

    return p0
.end method

.method public static isMathematicalInteger(D)Z
    .registers 4

    .line 288
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_1c

    .line 290
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x34

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result p0

    if-gt v0, p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static isPowerOfTwo(D)Z
    .registers 6

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1e

    .line 201
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 202
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide p0

    const-wide/16 v2, 0x1

    sub-long v2, p0, v2

    and-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method public static log2(D)D
    .registers 4

    .line 225
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    sget-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static log2(DLjava/math/RoundingMode;)I
    .registers 8

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_10

    .line 240
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    const-string v3, "x must be positive and finite"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 241
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 242
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isNormal(D)Z

    move-result v3

    if-nez v3, :cond_2a

    const-wide/high16 v0, 0x4330000000000000L    # 4.503599627370496E15

    mul-double/2addr p0, v0

    .line 243
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result p0

    add-int/lit8 p0, p0, -0x34

    return p0

    .line 248
    :cond_2a
    sget-object v3, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result p2

    aget p2, v3, p2

    packed-switch p2, :pswitch_data_6c

    .line 273
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 267
    :pswitch_3b
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->scaleNormalize(D)D

    move-result-wide p0

    mul-double/2addr p0, p0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    cmpl-double p0, p0, v3

    if-lez p0, :cond_68

    move v1, v2

    goto :goto_68

    :pswitch_48
    if-ltz v0, :cond_4b

    move v1, v2

    .line 262
    :cond_4b
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result p0

    goto :goto_57

    :pswitch_50
    if-gez v0, :cond_53

    move v1, v2

    .line 259
    :cond_53
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result p0

    :goto_57
    xor-int/2addr p0, v2

    and-int/2addr v1, p0

    goto :goto_68

    .line 256
    :pswitch_5a
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result p0

    xor-int/lit8 v1, p0, 0x1

    goto :goto_68

    .line 250
    :pswitch_61
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :cond_68
    :goto_68
    :pswitch_68
    if-eqz v1, :cond_6b

    add-int/2addr v0, v2

    :cond_6b
    return v0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_61
        :pswitch_68
        :pswitch_5a
        :pswitch_50
        :pswitch_48
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method public static mean(Ljava/lang/Iterable;)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 489
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/math/DoubleMath;->mean(Ljava/util/Iterator;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean(Ljava/util/Iterator;)D
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 509
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "Cannot take mean of 0 values"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 511
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v0

    const-wide/16 v2, 0x1

    move-wide v4, v2

    .line 512
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 513
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v6

    add-long/2addr v4, v2

    sub-double/2addr v6, v0

    long-to-double v8, v4

    div-double/2addr v6, v8

    add-double/2addr v0, v6

    goto :goto_1a

    :cond_34
    return-wide v0
.end method

.method public static varargs mean([D)D
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 409
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    const-string v3, "Cannot take mean of 0 values"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 411
    aget-wide v0, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v0

    const-wide/16 v3, 0x1

    move-wide v5, v3

    .line 412
    :goto_16
    array-length v7, p0

    if-ge v2, v7, :cond_28

    .line 413
    aget-wide v7, p0, v2

    invoke-static {v7, v8}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    add-long/2addr v5, v3

    .line 416
    aget-wide v7, p0, v2

    sub-double/2addr v7, v0

    long-to-double v9, v5

    div-double/2addr v7, v9

    add-double/2addr v0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_28
    return-wide v0
.end method

.method public static varargs mean([I)D
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    move v0, v1

    :goto_7
    const-string v2, "Cannot take mean of 0 values"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide/16 v2, 0x0

    .line 440
    :goto_e
    array-length v0, p0

    if-ge v1, v0, :cond_18

    .line 441
    aget v0, p0, v1

    int-to-long v4, v0

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    long-to-double v0, v2

    .line 443
    array-length p0, p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static varargs mean([J)D
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    const-string v3, "Cannot take mean of 0 values"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 463
    aget-wide v0, p0, v1

    long-to-double v0, v0

    const-wide/16 v3, 0x1

    move-wide v5, v3

    .line 464
    :goto_13
    array-length v7, p0

    if-ge v2, v7, :cond_21

    add-long/2addr v5, v3

    .line 467
    aget-wide v7, p0, v2

    long-to-double v7, v7

    sub-double/2addr v7, v0

    long-to-double v9, v5

    div-double/2addr v7, v9

    add-double/2addr v0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_21
    return-wide v0
.end method

.method static roundIntermediate(DLjava/math/RoundingMode;)D
    .registers 9

    .line 57
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 60
    sget-object v0, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const-wide/16 v0, 0x1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_88

    .line 113
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 104
    :pswitch_1d
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    sub-double v4, p0, v0

    .line 105
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double p2, v4, v2

    if-nez p2, :cond_2c

    goto :goto_77

    :cond_2c
    return-wide v0

    .line 94
    :pswitch_2d
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    sub-double v4, p0, v0

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double p2, v4, v2

    if-nez p2, :cond_41

    .line 96
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    add-double/2addr p0, v0

    return-wide p0

    :cond_41
    return-wide v0

    .line 90
    :pswitch_42
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    return-wide p0

    .line 83
    :pswitch_47
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result p2

    if-eqz p2, :cond_4e

    goto :goto_77

    :cond_4e
    double-to-long v0, p0

    cmpl-double p0, p0, v4

    if-lez p0, :cond_55

    const/4 p0, 0x1

    goto :goto_56

    :cond_55
    const/4 p0, -0x1

    :goto_56
    int-to-long p0, p0

    add-long/2addr v0, p0

    long-to-double p0, v0

    return-wide p0

    :pswitch_5a
    cmpg-double p2, p0, v4

    if-lez p2, :cond_77

    .line 73
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result p2

    if-eqz p2, :cond_65

    goto :goto_77

    :cond_65
    double-to-long p0, p0

    add-long/2addr p0, v0

    long-to-double p0, p0

    return-wide p0

    :pswitch_69
    cmpl-double p2, p0, v4

    if-gez p2, :cond_77

    .line 66
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result p2

    if-eqz p2, :cond_74

    goto :goto_77

    :cond_74
    double-to-long p0, p0

    sub-long/2addr p0, v0

    long-to-double p0, p0

    :cond_77
    :goto_77
    :pswitch_77
    return-wide p0

    .line 62
    :pswitch_78
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result p2

    invoke-static {p2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    return-wide p0

    .line 58
    :cond_80
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "input is infinite or NaN"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_78
        :pswitch_69
        :pswitch_5a
        :pswitch_77
        :pswitch_47
        :pswitch_42
        :pswitch_2d
        :pswitch_1d
    .end packed-switch
.end method

.method public static roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .registers 7

    .line 185
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide p0

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_11

    move p2, v0

    goto :goto_12

    :cond_11
    move p2, v1

    :goto_12
    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v2, p0, v2

    if-gez v2, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    and-int/2addr p2, v0

    if-eqz p2, :cond_23

    double-to-long p0, p0

    .line 187
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 189
    :cond_23
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result p2

    .line 190
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    .line 191
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 p2, p2, -0x34

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    const-wide/16 v0, 0x0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_40

    .line 192
    invoke-virtual {p2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_40
    return-object p2
.end method

.method public static roundToInt(DLjava/math/RoundingMode;)I
    .registers 10

    .line 133
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    const-wide v2, -0x3e1fffffffe00000L    # -2.147483649E9

    cmpl-double v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_11

    move v2, v3

    goto :goto_12

    :cond_11
    move v2, v4

    :goto_12
    const-wide/high16 v5, 0x41e0000000000000L    # 2.147483648E9

    cmpg-double v5, v0, v5

    if-gez v5, :cond_19

    goto :goto_1a

    :cond_19
    move v3, v4

    :goto_1a
    and-int/2addr v2, v3

    .line 134
    invoke-static {v2, p0, p1, p2}, Lcom/google/common/math/MathPreconditions;->checkInRangeForRoundingInputs(ZDLjava/math/RoundingMode;)V

    double-to-int p0, v0

    return p0
.end method

.method public static roundToLong(DLjava/math/RoundingMode;)J
    .registers 10

    .line 158
    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_11

    move v2, v3

    goto :goto_12

    :cond_11
    move v2, v4

    :goto_12
    const-wide/high16 v5, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v5, v0, v5

    if-gez v5, :cond_19

    goto :goto_1a

    :cond_19
    move v3, v4

    :goto_1a
    and-int/2addr v2, v3

    .line 159
    invoke-static {v2, p0, p1, p2}, Lcom/google/common/math/MathPreconditions;->checkInRangeForRoundingInputs(ZDLjava/math/RoundingMode;)V

    double-to-long p0, v0

    return-wide p0
.end method
