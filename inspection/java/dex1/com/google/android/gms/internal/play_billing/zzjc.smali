.class final Lcom/google/android/gms/internal/play_billing/zzjc;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field public static final synthetic zza:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/play_billing/zzfc;->zza:I

    return-void
.end method

.method static zza(Ljava/lang/String;[BII)I
    .registers 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    add-int v2, p2, p3

    const/16 v3, 0x80

    if-ge v1, v0, :cond_1b

    add-int v4, v1, p2

    if-ge v4, v2, :cond_1b

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v3, :cond_1b

    int-to-byte v2, v5

    .line 3
    aput-byte v2, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    if-ne v1, v0, :cond_1f

    add-int/2addr p2, v0

    return p2

    :cond_1f
    add-int v4, p2, v1

    :goto_21
    if-ge v1, v0, :cond_e5

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v3, :cond_33

    if-ge v4, v2, :cond_33

    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 16
    aput-byte v5, p1, v4

    move v4, v6

    goto/16 :goto_b9

    :cond_33
    const/16 v6, 0x800

    if-ge v5, v6, :cond_4e

    add-int/lit8 v6, v2, -0x2

    if-gt v4, v6, :cond_4e

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v4, 0x2

    ushr-int/lit8 v8, v5, 0x6

    or-int/lit16 v8, v8, 0x3c0

    int-to-byte v8, v8

    .line 14
    aput-byte v8, p1, v4

    and-int/lit8 v4, v5, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 15
    aput-byte v4, p1, v6

    move v4, v7

    goto :goto_b9

    :cond_4e
    const v6, 0xdfff

    const v7, 0xd800

    if-lt v5, v7, :cond_58

    if-le v5, v6, :cond_79

    :cond_58
    add-int/lit8 v8, v2, -0x3

    if-gt v4, v8, :cond_79

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v4, 0x2

    add-int/lit8 v8, v4, 0x3

    ushr-int/lit8 v9, v5, 0xc

    or-int/lit16 v9, v9, 0x1e0

    int-to-byte v9, v9

    .line 11
    aput-byte v9, p1, v4

    ushr-int/lit8 v4, v5, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 12
    aput-byte v4, p1, v6

    and-int/lit8 v4, v5, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 13
    aput-byte v4, p1, v7

    move v4, v8

    goto :goto_b9

    :cond_79
    add-int/lit8 v8, v2, -0x4

    if-gt v4, v8, :cond_c2

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v1, v6, :cond_bd

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v7

    if-nez v7, :cond_90

    goto :goto_bd

    :cond_90
    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v9, v4, 0x3

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    ushr-int/lit8 v6, v5, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    .line 7
    aput-byte v6, p1, v4

    ushr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 8
    aput-byte v6, p1, v7

    ushr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 9
    aput-byte v6, p1, v8

    add-int/lit8 v4, v4, 0x4

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 10
    aput-byte v5, p1, v9

    :goto_b9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21

    .line 17
    :cond_bd
    :goto_bd
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzja;->zza(Ljava/lang/String;[BII)I

    move-result p0

    return p0

    :cond_c2
    if-lt v5, v7, :cond_dd

    if-gt v5, v6, :cond_dd

    add-int/lit8 v1, v1, 0x1

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_dd

    .line 19
    :cond_d8
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzja;->zza(Ljava/lang/String;[BII)I

    move-result p0

    return p0

    :cond_dd
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Not enough space in output buffer to encode UTF-8 string"

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e5
    return v4
.end method

.method static zzb([BII)Z
    .registers 11

    :goto_0
    if-ge p1, p2, :cond_9

    .line 1
    aget-byte v0, p0, p1

    if-ltz v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    if-lt p1, p2, :cond_d

    return v0

    :cond_d
    :goto_d
    if-lt p1, p2, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, p1, 0x1

    .line 2
    aget-byte v2, p0, p1

    if-gez v2, :cond_72

    const/16 v3, -0x20

    const/16 v4, -0x41

    const/4 v5, 0x0

    if-ge v2, v3, :cond_2b

    if-lt v1, p2, :cond_20

    return v5

    :cond_20
    const/16 v3, -0x3e

    if-lt v2, v3, :cond_2a

    add-int/lit8 p1, p1, 0x2

    .line 3
    aget-byte v1, p0, v1

    if-le v1, v4, :cond_d

    :cond_2a
    return v5

    :cond_2b
    const/16 v6, -0x10

    if-ge v2, v6, :cond_51

    add-int/lit8 v6, p2, -0x1

    if-lt v1, v6, :cond_34

    return v5

    :cond_34
    add-int/lit8 v6, p1, 0x2

    .line 4
    aget-byte v1, p0, v1

    if-gt v1, v4, :cond_50

    const/16 v7, -0x60

    if-ne v2, v3, :cond_42

    if-lt v1, v7, :cond_41

    goto :goto_42

    :cond_41
    return v5

    :cond_42
    :goto_42
    const/16 v3, -0x13

    if-ne v2, v3, :cond_4a

    if-ge v1, v7, :cond_49

    goto :goto_4a

    :cond_49
    return v5

    :cond_4a
    :goto_4a
    add-int/lit8 p1, p1, 0x3

    aget-byte v1, p0, v6

    if-le v1, v4, :cond_d

    :cond_50
    return v5

    :cond_51
    add-int/lit8 v3, p2, -0x2

    if-lt v1, v3, :cond_56

    return v5

    :cond_56
    add-int/lit8 v3, p1, 0x2

    .line 5
    aget-byte v1, p0, v1

    if-gt v1, v4, :cond_71

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x1e

    if-nez v1, :cond_71

    add-int/lit8 v1, p1, 0x3

    aget-byte v2, p0, v3

    if-gt v2, v4, :cond_71

    add-int/lit8 p1, p1, 0x4

    aget-byte v1, p0, v1

    if-le v1, v4, :cond_d

    :cond_71
    return v5

    :cond_72
    move p1, v1

    goto :goto_d
.end method
