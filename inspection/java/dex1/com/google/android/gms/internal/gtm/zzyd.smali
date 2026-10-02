.class final Lcom/google/android/gms/internal/gtm/zzyd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzya;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzxy;->zzx()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzxy;->zzy()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    sget v0, Lcom/google/android/gms/internal/gtm/zzsk;->zza:I

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzyb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzyb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzyd;->zza:Lcom/google/android/gms/internal/gtm/zzya;

    return-void
.end method

.method static bridge synthetic zza([BII)I
    .registers 9

    add-int/lit8 v0, p1, -0x1

    .line 1
    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    const/16 v1, -0xc

    const/4 v2, -0x1

    if-eqz p2, :cond_38

    const/4 v3, 0x1

    const/16 v4, -0x41

    if-eq p2, v3, :cond_2c

    const/4 v5, 0x2

    if-ne p2, v5, :cond_26

    .line 2
    aget-byte p2, p0, p1

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    if-gt v0, v1, :cond_25

    if-gt p2, v4, :cond_25

    if-le p0, v4, :cond_1e

    return v2

    :cond_1e
    shl-int/lit8 p1, p2, 0x8

    xor-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_25
    return v2

    .line 3
    :cond_26
    new-instance p0, Ljava/lang/AssertionError;

    .line 4
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_2c
    aget-byte p0, p0, p1

    if-gt v0, v1, :cond_37

    if-le p0, v4, :cond_33

    return v2

    :cond_33
    shl-int/lit8 p0, p0, 0x8

    xor-int/2addr p0, v0

    return p0

    :cond_37
    return v2

    :cond_38
    if-le v0, v1, :cond_3b

    return v2

    :cond_3b
    return v0
.end method

.method static zzb(Ljava/lang/CharSequence;[BII)I
    .registers 11

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p3, p2

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x80

    if-ge v1, v0, :cond_1a

    add-int v3, v1, p2

    if-ge v3, p3, :cond_1a

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_1a

    int-to-byte v2, v4

    .line 3
    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    if-ne v1, v0, :cond_1e

    add-int/2addr p2, v0

    return p2

    :cond_1e
    add-int/2addr p2, v1

    :goto_1f
    if-ge v1, v0, :cond_ff

    .line 4
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_31

    if-ge p2, p3, :cond_31

    add-int/lit8 v4, p2, 0x1

    int-to-byte v3, v3

    .line 16
    aput-byte v3, p1, p2

    move p2, v4

    goto/16 :goto_b5

    :cond_31
    const/16 v4, 0x800

    if-ge v3, v4, :cond_4b

    add-int/lit8 v4, p3, -0x2

    if-gt p2, v4, :cond_4b

    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    .line 14
    aput-byte v5, p1, p2

    add-int/lit8 p2, p2, 0x2

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 15
    aput-byte v3, p1, v4

    goto :goto_b5

    :cond_4b
    const v4, 0xdfff

    const v5, 0xd800

    if-lt v3, v5, :cond_55

    if-le v3, v4, :cond_75

    :cond_55
    add-int/lit8 v6, p3, -0x3

    if-gt p2, v6, :cond_75

    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    .line 11
    aput-byte v5, p1, p2

    add-int/lit8 v5, p2, 0x2

    ushr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 12
    aput-byte v6, p1, v4

    add-int/lit8 p2, p2, 0x3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 13
    aput-byte v3, p1, v5

    goto :goto_b5

    :cond_75
    add-int/lit8 v6, p3, -0x4

    if-gt p2, v6, :cond_c2

    add-int/lit8 v4, v1, 0x1

    .line 5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_ba

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 6
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 7
    aput-byte v5, p1, p2

    add-int/lit8 v5, p2, 0x2

    ushr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 8
    aput-byte v6, p1, v3

    add-int/lit8 v3, p2, 0x3

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 9
    aput-byte v6, p1, v5

    add-int/lit8 p2, p2, 0x4

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 10
    aput-byte v1, p1, v3

    move v1, v4

    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1f

    :cond_b9
    move v1, v4

    .line 5
    :cond_ba
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzyc;

    add-int/lit8 v1, v1, -0x1

    .line 17
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzyc;-><init>(II)V

    throw p0

    :cond_c2
    if-lt v3, v5, :cond_de

    if-gt v3, v4, :cond_de

    add-int/lit8 p1, v1, 0x1

    .line 18
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-eq p1, p3, :cond_d8

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p0

    if-nez p0, :cond_de

    :cond_d8
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzyc;

    .line 20
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzyc;-><init>(II)V

    throw p0

    :cond_de
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p3, 0x25

    .line 19
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Failed writing "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, " at index "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ff
    return p2
.end method

.method static zzc(Ljava/lang/CharSequence;)I
    .registers 9

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_13

    .line 2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

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
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

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
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2a
    if-ge v2, v4, :cond_58

    .line 5
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

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
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzyc;

    .line 8
    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/internal/gtm/zzyc;-><init>(II)V

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
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x36

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v3

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zzd([BII)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzvk;
        }
    .end annotation

    .line 1
    array-length v0, p0

    or-int v1, p1, p2

    sub-int v2, v0, p1

    sub-int/2addr v2, p2

    or-int/2addr v1, v2

    if-ltz v1, :cond_9f

    add-int v0, p1, p2

    .line 3
    new-array v5, p2, [C

    const/4 p2, 0x0

    move v1, p2

    :goto_f
    if-ge p1, v0, :cond_23

    .line 4
    aget-byte v2, p0, p1

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzxz;->zzd(B)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_23

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v1, 0x1

    int-to-char v2, v2

    .line 5
    aput-char v2, v5, v1

    move v1, v3

    goto :goto_f

    :cond_23
    :goto_23
    move v6, v1

    :cond_24
    :goto_24
    if-ge p1, v0, :cond_99

    add-int/lit8 v1, p1, 0x1

    move v2, v1

    .line 6
    aget-byte v1, p0, p1

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzxz;->zzd(B)Z

    move-result v3

    if-eqz v3, :cond_4c

    add-int/lit8 p1, v6, 0x1

    int-to-char v1, v1

    .line 10
    aput-char v1, v5, v6

    move v6, p1

    move p1, v2

    :goto_38
    if-ge p1, v0, :cond_24

    .line 11
    aget-byte v1, p0, p1

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzxz;->zzd(B)Z

    move-result v2

    if-nez v2, :cond_43

    goto :goto_24

    :cond_43
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v6, 0x1

    int-to-char v1, v1

    .line 12
    aput-char v1, v5, v6

    move v6, v2

    goto :goto_38

    :cond_4c
    const/16 v3, -0x20

    if-ge v1, v3, :cond_62

    if-ge v2, v0, :cond_5d

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v3, v6, 0x1

    .line 9
    aget-byte v2, p0, v2

    invoke-static {v1, v2, v5, v6}, Lcom/google/android/gms/internal/gtm/zzxz;->zzc(BB[CI)V

    move v6, v3

    goto :goto_24

    .line 15
    :cond_5d
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzd()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p0

    throw p0

    :cond_62
    const/16 v3, -0x10

    if-ge v1, v3, :cond_7e

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_79

    add-int/lit8 v3, p1, 0x2

    add-int/lit8 p1, p1, 0x3

    add-int/lit8 v4, v6, 0x1

    .line 8
    aget-byte v2, p0, v2

    aget-byte v3, p0, v3

    invoke-static {v1, v2, v3, v5, v6}, Lcom/google/android/gms/internal/gtm/zzxz;->zzb(BBB[CI)V

    move v6, v4

    goto :goto_24

    .line 14
    :cond_79
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzd()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p0

    throw p0

    :cond_7e
    add-int/lit8 v3, v0, -0x2

    if-ge v2, v3, :cond_94

    add-int/lit8 v3, p1, 0x2

    add-int/lit8 v4, p1, 0x3

    add-int/lit8 p1, p1, 0x4

    .line 7
    aget-byte v2, p0, v2

    aget-byte v3, p0, v3

    aget-byte v4, p0, v4

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/gtm/zzxz;->zza(BBBB[CI)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_24

    .line 13
    :cond_94
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzd()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p0

    throw p0

    .line 7
    :cond_99
    new-instance p0, Ljava/lang/String;

    .line 16
    invoke-direct {p0, v5, p2, v6}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 1
    :cond_9f
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zze([B)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzyd;->zza:Lcom/google/android/gms/internal/gtm/zzya;

    const/4 v1, 0x0

    .line 1
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzya;->zzb([BII)Z

    move-result p0

    return p0
.end method

.method public static zzf([BII)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzyd;->zza:Lcom/google/android/gms/internal/gtm/zzya;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzya;->zzb([BII)Z

    move-result p0

    return p0
.end method
