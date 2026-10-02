.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_INT:I = 0xb504

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd

.field static final MAX_SIGNED_POWER_OF_TWO:I = 0x40000000

.field static biggestBinomials:[I

.field private static final factorials:[I

.field static final halfPowersOf10:[I

.field static final maxLog10ForLeadingZeros:[B

.field static final powersOf10:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x21

    .line 202
    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    const/16 v0, 0xa

    .line 208
    new-array v1, v0, [I

    fill-array-data v1, :array_42

    sput-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    .line 214
    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    const/16 v0, 0xd

    .line 628
    new-array v0, v0, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    const/16 v0, 0x11

    .line 677
    new-array v0, v0, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    return-void

    :array_2c
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_42
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    :array_5a
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    :array_72
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    :array_90
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)I
    .registers 7

    .line 651
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 652
    const-string v0, "k"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, p0, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    move v2, v0

    .line 653
    :goto_11
    const-string v3, "k (%s) > n (%s)"

    invoke-static {v2, v3, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    shr-int/lit8 v2, p0, 0x1

    if-le p1, v2, :cond_1c

    sub-int p1, p0, p1

    .line 657
    :cond_1c
    sget-object v2, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    array-length v3, v2

    if-ge p1, v3, :cond_3a

    aget v2, v2, p1

    if-le p0, v2, :cond_26

    goto :goto_3a

    :cond_26
    if-eqz p1, :cond_39

    if-eq p1, v1, :cond_38

    const-wide/16 v1, 0x1

    :goto_2c
    if-ge v0, p1, :cond_37

    sub-int v3, p0, v0

    int-to-long v3, v3

    mul-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    int-to-long v3, v0

    .line 669
    div-long/2addr v1, v3

    goto :goto_2c

    :cond_37
    long-to-int p0, v1

    :cond_38
    return p0

    :cond_39
    return v1

    :cond_3a
    :goto_3a
    const p0, 0x7fffffff

    return p0
.end method

.method public static ceilingPowerOfTwo(I)I
    .registers 4

    .line 68
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_13

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    neg-int p0, p0

    shl-int p0, v0, p0

    return p0

    .line 70
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ceilingPowerOfTwo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ") not representable as an int"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkedAdd(II)I
    .registers 7

    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 457
    :goto_c
    const-string v1, "checkedAdd"

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    return v2
.end method

.method public static checkedMultiply(II)I
    .registers 7

    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 479
    :goto_c
    const-string v1, "checkedMultiply"

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    return v2
.end method

.method public static checkedPow(II)I
    .registers 8

    .line 492
    const-string v0, "exponent"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, -0x2

    .line 493
    const-string v1, "checkedPow"

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p0, v0, :cond_59

    if-eq p0, v2, :cond_53

    if-eqz p0, :cond_4f

    if-eq p0, v4, :cond_4e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_43

    move v0, v4

    :cond_17
    :goto_17
    if-eqz p1, :cond_42

    if-eq p1, v4, :cond_3d

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_23

    .line 518
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    :cond_23
    shr-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_17

    const v2, -0xb504

    if-gt v2, p0, :cond_2e

    move v2, v4

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    const v5, 0xb504

    if-gt p0, v5, :cond_36

    move v5, v4

    goto :goto_37

    :cond_36
    move v5, v3

    :goto_37
    and-int/2addr v2, v5

    .line 522
    invoke-static {v2, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    mul-int/2addr p0, p0

    goto :goto_17

    .line 515
    :cond_3d
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result p0

    return p0

    :cond_42
    return v0

    :cond_43
    const/16 v0, 0x1f

    if-ge p1, v0, :cond_48

    move v3, v4

    .line 501
    :cond_48
    invoke-static {v3, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    shl-int p0, v4, p1

    return p0

    :cond_4e
    return v4

    :cond_4f
    if-nez p1, :cond_52

    return v4

    :cond_52
    return v3

    :cond_53
    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_58

    return v4

    :cond_58
    return v2

    :cond_59
    const/16 v0, 0x20

    if-ge p1, v0, :cond_5e

    move v3, v4

    .line 504
    :cond_5e
    invoke-static {v3, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_68

    shl-int p0, v4, p1

    return p0

    :cond_68
    shl-int p0, v2, p1

    return p0
.end method

.method public static checkedSubtract(II)I
    .registers 7

    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 468
    :goto_c
    const-string v1, "checkedSubtract"

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    return v2
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .registers 8

    .line 318
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_5b

    .line 322
    div-int v0, p0, p1

    mul-int v1, p1, v0

    sub-int v1, p0, v1

    if-nez v1, :cond_e

    return v0

    :cond_e
    xor-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1f

    const/4 v2, 0x1

    or-int/2addr p0, v2

    .line 338
    sget-object v3, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_64

    .line 368
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 357
    :pswitch_25
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 358
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p1, v1

    sub-int/2addr v1, p1

    if-nez v1, :cond_47

    .line 362
    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, p1, :cond_51

    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, p1, :cond_3b

    move p1, v2

    goto :goto_3c

    :cond_3b
    move p1, v4

    :goto_3c
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_41

    goto :goto_42

    :cond_41
    move v2, v4

    :goto_42
    and-int/2addr p1, v2

    if-eqz p1, :cond_46

    goto :goto_51

    :cond_46
    return v0

    :cond_47
    if-lez v1, :cond_4a

    goto :goto_51

    :cond_4a
    return v0

    :pswitch_4b
    if-lez p0, :cond_4e

    goto :goto_51

    :cond_4e
    return v0

    :pswitch_4f
    if-gez p0, :cond_52

    :cond_51
    :goto_51
    :pswitch_51
    add-int/2addr v0, p0

    :cond_52
    return v0

    :pswitch_53
    if-nez v1, :cond_56

    goto :goto_57

    :cond_56
    move v2, v4

    .line 340
    :goto_57
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_5a
    return v0

    .line 320
    :cond_5b
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "/ by zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_53
        :pswitch_5a
        :pswitch_4f
        :pswitch_51
        :pswitch_4b
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public static factorial(I)I
    .registers 3

    .line 624
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 625
    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    array-length v1, v0

    if-ge p0, v1, :cond_d

    aget p0, v0, p0

    return p0

    :cond_d
    const p0, 0x7fffffff

    return p0
.end method

.method public static floorPowerOfTwo(I)I
    .registers 2

    .line 84
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0
.end method

.method public static gcd(II)I
    .registers 5

    .line 411
    const-string v0, "a"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 412
    const-string v0, "b"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    if-nez p0, :cond_d

    return p1

    :cond_d
    if-nez p1, :cond_10

    return p0

    .line 424
    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    shr-int/2addr p0, v0

    .line 426
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shr-int/2addr p1, v1

    :goto_1a
    if-eq p0, p1, :cond_29

    sub-int/2addr p0, p1

    shr-int/lit8 v2, p0, 0x1f

    and-int/2addr v2, p0

    sub-int/2addr p0, v2

    sub-int/2addr p0, v2

    add-int/2addr p1, v2

    .line 445
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shr-int/2addr p0, v2

    goto :goto_1a

    .line 447
    :cond_29
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/2addr p0, p1

    return p0
.end method

.method public static isPowerOfTwo(I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    add-int/lit8 v3, p0, -0x1

    and-int/2addr p0, v3

    if-nez p0, :cond_d

    move v0, v1

    :cond_d
    and-int p0, v2, v0

    return p0
.end method

.method public static isPrime(I)Z
    .registers 3

    int-to-long v0, p0

    .line 725
    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPrime(J)Z

    move-result p0

    return p0
.end method

.method static lessThanBranchFree(II)I
    .registers 2

    sub-int/2addr p0, p1

    not-int p0, p0

    not-int p0, p0

    ushr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .registers 5

    .line 161
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 162
    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    move-result v0

    .line 163
    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v1, v1, v0

    .line 164
    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_38

    .line 180
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 178
    :pswitch_1e
    sget-object p1, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    aget p1, p1, v0

    invoke-static {p1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    :goto_26
    add-int/2addr v0, p0

    return v0

    .line 173
    :pswitch_28
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    goto :goto_26

    :pswitch_2d
    return v0

    :pswitch_2e
    if-ne p0, v1, :cond_32

    const/4 p0, 0x1

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    .line 166
    :goto_33
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    return v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
        :pswitch_28
        :pswitch_28
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method private static log10Floor(I)I
    .registers 3

    .line 192
    sget-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    aget-byte v0, v0, v1

    .line 197
    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v1, v1, v0

    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .registers 3

    .line 120
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 121
    sget-object v0, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_3e

    .line 144
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 137
    :pswitch_16
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    const v0, -0x4afb0ccd

    ushr-int/2addr v0, p1

    rsub-int/lit8 p1, p1, 0x1f

    .line 141
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :pswitch_26
    add-int/lit8 p0, p0, -0x1

    .line 131
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    return p0

    .line 123
    :pswitch_2f
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 127
    :pswitch_36
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_36
        :pswitch_36
        :pswitch_26
        :pswitch_26
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public static mean(II)I
    .registers 3

    and-int v0, p0, p1

    xor-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public static mod(II)I
    .registers 4

    if-lez p1, :cond_8

    .line 395
    rem-int/2addr p0, p1

    if-ltz p0, :cond_6

    return p0

    :cond_6
    add-int/2addr p0, p1

    return p0

    .line 393
    :cond_8
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Modulus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be > 0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static pow(II)I
    .registers 6

    .line 229
    const-string v0, "exponent"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, -0x2

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p0, v0, :cond_3b

    const/4 v0, -0x1

    if-eq p0, v0, :cond_35

    if-eqz p0, :cond_31

    if-eq p0, v3, :cond_30

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2a

    move v0, v3

    :goto_17
    if-eqz p1, :cond_29

    if-eq p1, v3, :cond_27

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_21

    move v1, v3

    goto :goto_22

    :cond_21
    move v1, p0

    :goto_22
    mul-int/2addr v0, v1

    mul-int/2addr p0, p0

    shr-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_27
    mul-int/2addr p0, v0

    return p0

    :cond_29
    return v0

    :cond_2a
    if-ge p1, v1, :cond_2f

    shl-int p0, v3, p1

    return p0

    :cond_2f
    return v2

    :cond_30
    return v3

    :cond_31
    if-nez p1, :cond_34

    return v3

    :cond_34
    return v2

    :cond_35
    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_3a

    return v3

    :cond_3a
    return v0

    :cond_3b
    if-ge p1, v1, :cond_48

    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_44

    shl-int p0, v3, p1

    return p0

    :cond_44
    shl-int p0, v3, p1

    neg-int p0, p0

    return p0

    :cond_48
    return v2
.end method

.method public static saturatedAdd(II)I
    .registers 4

    int-to-long v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    .line 537
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method

.method public static saturatedMultiply(II)I
    .registers 4

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    .line 559
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method

.method public static saturatedPow(II)I
    .registers 8

    .line 570
    const-string v0, "exponent"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, -0x2

    const v1, 0x7fffffff

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p0, v0, :cond_5d

    if-eq p0, v2, :cond_57

    const/4 v0, 0x0

    if-eqz p0, :cond_53

    if-eq p0, v3, :cond_52

    const/4 v2, 0x2

    if-eq p0, v2, :cond_4a

    ushr-int/lit8 v2, p0, 0x1f

    and-int/lit8 v4, p1, 0x1

    and-int/2addr v2, v4

    add-int/2addr v2, v1

    move v1, v3

    :cond_1e
    :goto_1e
    if-eqz p1, :cond_49

    if-eq p1, v3, :cond_44

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_2a

    .line 602
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v1

    :cond_2a
    shr-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_1e

    const v4, -0xb504

    if-le v4, p0, :cond_35

    move v4, v3

    goto :goto_36

    :cond_35
    move v4, v0

    :goto_36
    const v5, 0xb504

    if-le p0, v5, :cond_3d

    move v5, v3

    goto :goto_3e

    :cond_3d
    move v5, v0

    :goto_3e
    or-int/2addr v4, v5

    if-eqz v4, :cond_42

    return v2

    :cond_42
    mul-int/2addr p0, p0

    goto :goto_1e

    .line 599
    :cond_44
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result p0

    return p0

    :cond_49
    return v1

    :cond_4a
    const/16 p0, 0x1f

    if-lt p1, p0, :cond_4f

    return v1

    :cond_4f
    shl-int p0, v3, p1

    return p0

    :cond_52
    return v3

    :cond_53
    if-nez p1, :cond_56

    return v3

    :cond_56
    return v0

    :cond_57
    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_5c

    return v3

    :cond_5c
    return v2

    :cond_5d
    const/16 p0, 0x20

    if-lt p1, p0, :cond_65

    and-int/lit8 p0, p1, 0x1

    add-int/2addr p0, v1

    return p0

    :cond_65
    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_6c

    shl-int p0, v3, p1

    return p0

    :cond_6c
    shl-int p0, v2, p1

    return p0
.end method

.method public static saturatedSubtract(II)I
    .registers 4

    int-to-long v0, p0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    .line 548
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .registers 4

    .line 271
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 272
    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    move-result v0

    .line 273
    sget-object v1, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_36

    .line 299
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_1a
    mul-int p1, v0, v0

    add-int/2addr p1, v0

    .line 297
    invoke-static {p1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    :goto_21
    add-int/2addr v0, p0

    return v0

    :pswitch_23
    mul-int p1, v0, v0

    .line 281
    invoke-static {p1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    goto :goto_21

    :pswitch_2a
    return v0

    :pswitch_2b
    mul-int p1, v0, v0

    if-ne p1, p0, :cond_31

    const/4 p0, 0x1

    goto :goto_32

    :cond_31
    const/4 p0, 0x0

    .line 275
    :goto_32
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    return v0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_23
        :pswitch_23
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method private static sqrtFloor(I)I
    .registers 3

    int-to-double v0, p0

    .line 306
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method
