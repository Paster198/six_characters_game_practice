.class final Lcom/google/android/gms/internal/measurement/zzoo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"


# static fields
.field public static final synthetic zza:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzol;->zzx()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzol;->zzy()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    sget v0, Lcom/google/android/gms/internal/measurement/zzkr;->zza:I

    :cond_e
    return-void
.end method

.method static bridge synthetic zza([BII)I
    .registers 8

    sub-int/2addr p2, p1

    add-int/lit8 v0, p1, -0x1

    .line 1
    aget-byte v0, p0, v0

    const/16 v1, -0xc

    if-eqz p2, :cond_35

    const/4 v2, 0x1

    const/16 v3, -0x41

    if-eq p2, v2, :cond_2a

    const/4 v4, 0x2

    if-ne p2, v4, :cond_24

    .line 2
    aget-byte p2, p0, p1

    add-int/2addr p1, v2

    aget-byte p0, p0, p1

    if-gt v0, v1, :cond_38

    if-gt p2, v3, :cond_38

    if-le p0, v3, :cond_1d

    goto :goto_38

    :cond_1d
    shl-int/lit8 p1, p2, 0x8

    shl-int/lit8 p0, p0, 0x10

    xor-int/2addr p1, v0

    xor-int/2addr p0, p1

    return p0

    .line 3
    :cond_24
    new-instance p0, Ljava/lang/AssertionError;

    .line 4
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_2a
    aget-byte p0, p0, p1

    if-gt v0, v1, :cond_38

    if-le p0, v3, :cond_31

    goto :goto_38

    :cond_31
    shl-int/lit8 p0, p0, 0x8

    xor-int/2addr p0, v0

    return p0

    :cond_35
    if-gt v0, v1, :cond_38

    return v0

    :cond_38
    :goto_38
    const/4 p0, -0x1

    return p0
.end method

.method static zzb(Ljava/lang/String;[BII)I
    .registers 12

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
    add-int/2addr p2, v1

    :goto_20
    if-ge v1, v0, :cond_fd

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ge p3, v3, :cond_32

    if-ge p2, v2, :cond_32

    add-int/lit8 v4, p2, 0x1

    int-to-byte p3, p3

    .line 16
    aput-byte p3, p1, p2

    move p2, v4

    goto/16 :goto_b8

    :cond_32
    const/16 v4, 0x800

    if-ge p3, v4, :cond_4d

    add-int/lit8 v4, v2, -0x2

    if-gt p2, v4, :cond_4d

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p2, 0x2

    ushr-int/lit8 v6, p3, 0x6

    or-int/lit16 v6, v6, 0x3c0

    int-to-byte v6, v6

    .line 14
    aput-byte v6, p1, p2

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p2, v3

    int-to-byte p2, p2

    .line 15
    aput-byte p2, p1, v4

    move p2, v5

    goto :goto_b8

    :cond_4d
    const v4, 0xdfff

    const v5, 0xd800

    if-lt p3, v5, :cond_57

    if-le p3, v4, :cond_78

    :cond_57
    add-int/lit8 v6, v2, -0x3

    if-gt p2, v6, :cond_78

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v6, p2, 0x3

    ushr-int/lit8 v7, p3, 0xc

    or-int/lit16 v7, v7, 0x1e0

    int-to-byte v7, v7

    .line 11
    aput-byte v7, p1, p2

    ushr-int/lit8 p2, p3, 0x6

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v3

    int-to-byte p2, p2

    .line 12
    aput-byte p2, p1, v4

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p2, v3

    int-to-byte p2, p2

    .line 13
    aput-byte p2, p1, v5

    move p2, v6

    goto :goto_b8

    :cond_78
    add-int/lit8 v6, v2, -0x4

    if-gt p2, v6, :cond_c5

    add-int/lit8 v4, v1, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_bd

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_bc

    add-int/lit8 v5, p2, 0x1

    add-int/lit8 v6, p2, 0x2

    add-int/lit8 v7, p2, 0x3

    .line 6
    invoke-static {p3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p3

    ushr-int/lit8 v1, p3, 0x12

    or-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    .line 7
    aput-byte v1, p1, p2

    ushr-int/lit8 v1, p3, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 8
    aput-byte v1, p1, v5

    ushr-int/lit8 v1, p3, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 9
    aput-byte v1, p1, v6

    add-int/lit8 p2, p2, 0x4

    and-int/lit8 p3, p3, 0x3f

    or-int/2addr p3, v3

    int-to-byte p3, p3

    .line 10
    aput-byte p3, p1, v7

    move v1, v4

    :goto_b8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_20

    :cond_bc
    move v1, v4

    .line 5
    :cond_bd
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzon;

    add-int/lit8 v1, v1, -0x1

    .line 17
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzon;-><init>(II)V

    throw p0

    :cond_c5
    if-lt p3, v5, :cond_e1

    if-gt p3, v4, :cond_e1

    add-int/lit8 p1, v1, 0x1

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq p1, v2, :cond_db

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p0

    if-nez p0, :cond_e1

    :cond_db
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzon;

    .line 20
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzon;-><init>(II)V

    throw p0

    :cond_e1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed writing "

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, " at index "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_fd
    return p2
.end method

.method static zzc(Ljava/lang/String;)I
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_13

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_13

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    move v3, v0

    :goto_14
    if-ge v2, v0, :cond_59

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_26

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 4
    :cond_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_2a
    if-ge v2, v4, :cond_58

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_38

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_55

    :cond_38
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-lt v6, v7, :cond_55

    const v7, 0xdfff

    if-gt v6, v7, :cond_55

    .line 6
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_4f

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_4f
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzon;

    .line 8
    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/internal/measurement/zzon;-><init>(II)V

    throw p0

    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_58
    add-int/2addr v3, v1

    :cond_59
    if-lt v3, v0, :cond_5c

    return v3

    :cond_5c
    int-to-long v0, v3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UTF-8 length does not fit in int: "

    .line 7
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide v3, 0x100000000L

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zzd([BII)Z
    .registers 9

    :goto_0
    if-ge p1, p2, :cond_9

    .line 1
    aget-byte v0, p0, p1

    if-ltz v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    if-lt p1, p2, :cond_d

    goto/16 :goto_7a

    :cond_d
    :goto_d
    if-ge p1, p2, :cond_7a

    add-int/lit8 v0, p1, 0x1

    .line 2
    aget-byte v1, p0, p1

    if-gez v1, :cond_78

    const/16 v2, -0x20

    const/16 v3, -0x41

    if-ge v1, v2, :cond_29

    if-lt v0, p2, :cond_1e

    goto :goto_57

    :cond_1e
    const/16 v2, -0x3e

    if-lt v1, v2, :cond_76

    add-int/lit8 p1, p1, 0x2

    .line 3
    aget-byte v0, p0, v0

    if-le v0, v3, :cond_d

    goto :goto_76

    :cond_29
    const/16 v4, -0x10

    if-ge v1, v4, :cond_4f

    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_36

    .line 6
    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzoo;->zza([BII)I

    move-result v1

    goto :goto_57

    :cond_36
    add-int/lit8 v4, p1, 0x2

    .line 4
    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_76

    const/16 v5, -0x60

    if-ne v1, v2, :cond_42

    if-lt v0, v5, :cond_76

    :cond_42
    const/16 v2, -0x13

    if-ne v1, v2, :cond_48

    if-ge v0, v5, :cond_76

    :cond_48
    add-int/lit8 p1, p1, 0x3

    aget-byte v0, p0, v4

    if-le v0, v3, :cond_d

    goto :goto_76

    :cond_4f
    add-int/lit8 v2, p2, -0x2

    if-lt v0, v2, :cond_5a

    .line 7
    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzoo;->zza([BII)I

    move-result v1

    :goto_57
    if-eqz v1, :cond_7a

    goto :goto_76

    :cond_5a
    add-int/lit8 v2, p1, 0x2

    .line 5
    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_76

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_76

    add-int/lit8 v0, p1, 0x3

    aget-byte v1, p0, v2

    if-gt v1, v3, :cond_76

    add-int/lit8 p1, p1, 0x4

    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_76

    goto :goto_d

    :cond_76
    :goto_76
    const/4 p0, 0x0

    return p0

    :cond_78
    move p1, v0

    goto :goto_d

    :cond_7a
    :goto_7a
    const/4 p0, 0x1

    return p0
.end method
