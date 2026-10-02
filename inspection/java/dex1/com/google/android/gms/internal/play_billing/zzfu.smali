.class final Lcom/google/android/gms/internal/play_billing/zzfu;
.super Lcom/google/android/gms/internal/play_billing/zzfx;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private final zzb:[B

.field private final zzc:I

.field private zzd:I


# direct methods
.method constructor <init>([BII)V
    .registers 6

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;-><init>(Lcom/google/android/gms/internal/play_billing/zzfw;)V

    array-length p2, p1

    sub-int v0, p2, p3

    or-int/2addr v0, p3

    const/4 v1, 0x0

    if-ltz v0, :cond_12

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb:[B

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzc:I

    return-void

    .line 1
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, v1, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 4
    invoke-static {v0, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzb(B)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb:[B
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_4} :catch_f

    add-int/lit8 v2, v1, 0x1

    :try_start_6
    aput-byte p1, v0, v1
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_8} :catch_b

    iput v2, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    :catch_b
    move-exception v0

    move-object p1, v0

    move v1, v2

    goto :goto_11

    :catch_f
    move-exception v0

    move-object p1, v0

    :goto_11
    move-object v8, p1

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzc:I

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzfv;

    int-to-long v3, v1

    int-to-long v5, p1

    const/4 v7, 0x1

    .line 2
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(JJILjava/lang/Throwable;)V

    .line 3
    throw v2
.end method

.method public final zzc([BII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_7} :catch_d

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    :catch_d
    move-exception v0

    move-object p1, v0

    move-object v6, p1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfv;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    iget p2, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzc:I

    int-to-long v1, p1

    int-to-long v3, p2

    move v5, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(JJILjava/lang/Throwable;)V

    .line 3
    throw v0
.end method

.method public final zzd(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb(B)V

    return-void
.end method

.method public final zze([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzc([BII)V

    return-void
.end method

.method public final zzf(ILcom/google/android/gms/internal/play_billing/zzfp;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzg(Lcom/google/android/gms/internal/play_billing/zzfp;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/play_billing/zzfp;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzg(Lcom/google/android/gms/internal/play_billing/zzfg;)V

    return-void
.end method

.method public final zzh(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzi(I)V

    return-void
.end method

.method public final zzi(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb:[B

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 2
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 3
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 4
    aput-byte p1, v0, v2
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_1c} :catch_21

    add-int/lit8 v1, v1, 0x4

    .line 6
    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    :catch_21
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzc:I

    int-to-long v3, v1

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzfv;

    int-to-long v5, p1

    const/4 v7, 0x4

    .line 5
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(JJILjava/lang/Throwable;)V

    .line 6
    throw v2
.end method

.method public final zzj(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzk(J)V

    return-void
.end method

.method public final zzk(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb:[B

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x8

    shr-long v4, p1, v3

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 2
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x2

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 3
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x4

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x5

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 6
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x6

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 7
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x7

    const/16 v4, 0x38

    shr-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 8
    aput-byte p1, v0, v2
    :try_end_4d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_4d} :catch_51

    add-int/2addr v1, v3

    .line 10
    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    :catch_51
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzc:I

    int-to-long v3, v1

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzfv;

    int-to-long v5, p1

    const/16 v7, 0x8

    .line 9
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(JJILjava/lang/Throwable;)V

    .line 10
    throw v2
.end method

.method public final zzl(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzm(I)V

    return-void
.end method

.method public final zzm(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    return-void

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb:[B
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_a} :catch_68

    int-to-long v2, p1

    add-int/lit8 p1, v1, 0x1

    long-to-int v4, v2

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 2
    :try_start_11
    aput-byte v4, v0, v1
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_13} :catch_64

    add-int/lit8 v4, v1, 0x2

    const/4 v5, 0x7

    ushr-long v5, v2, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 3
    :try_start_1c
    aput-byte v5, v0, p1
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1e} :catch_5f

    add-int/lit8 p1, v1, 0x3

    const/16 v5, 0xe

    ushr-long v5, v2, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 4
    :try_start_28
    aput-byte v5, v0, v4
    :try_end_2a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_28 .. :try_end_2a} :catch_64

    add-int/lit8 v4, v1, 0x4

    const/16 v5, 0x15

    ushr-long v5, v2, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 5
    :try_start_34
    aput-byte v5, v0, p1
    :try_end_36
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_34 .. :try_end_36} :catch_5f

    add-int/lit8 p1, v1, 0x5

    const/16 v5, 0x1c

    ushr-long/2addr v2, v5

    long-to-int v2, v2

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 6
    :try_start_3f
    aput-byte v2, v0, v4
    :try_end_41
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3f .. :try_end_41} :catch_64

    add-int/lit8 v2, v1, 0x6

    const/4 v3, -0x1

    .line 7
    :try_start_44
    aput-byte v3, v0, p1
    :try_end_46
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_44 .. :try_end_46} :catch_5a

    add-int/lit8 p1, v1, 0x7

    .line 8
    :try_start_48
    aput-byte v3, v0, v2
    :try_end_4a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_48 .. :try_end_4a} :catch_64

    add-int/lit8 v2, v1, 0x8

    .line 9
    :try_start_4c
    aput-byte v3, v0, p1
    :try_end_4e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4c .. :try_end_4e} :catch_5a

    add-int/lit8 p1, v1, 0x9

    .line 10
    :try_start_50
    aput-byte v3, v0, v2
    :try_end_52
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_50 .. :try_end_52} :catch_64

    add-int/lit8 v1, v1, 0xa

    const/4 v2, 0x1

    .line 11
    :try_start_55
    aput-byte v2, v0, p1
    :try_end_57
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_55 .. :try_end_57} :catch_68

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    :catch_5a
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move v1, v2

    goto :goto_6b

    :catch_5f
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move v1, v4

    goto :goto_6b

    :catch_64
    move-exception v0

    move v1, p1

    move-object v8, v0

    goto :goto_6b

    :catch_68
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    :goto_6b
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzc:I

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzfv;

    int-to-long v3, v1

    int-to-long v5, p1

    const/16 v7, 0xa

    .line 12
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(JJILjava/lang/Throwable;)V

    .line 13
    throw v2
.end method

.method public final zzn(Lcom/google/android/gms/internal/play_billing/zzhr;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzn()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzD(Lcom/google/android/gms/internal/play_billing/zzfx;)V

    return-void
.end method

.method public final zzo(ILcom/google/android/gms/internal/play_billing/zzhr;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzt(II)V

    const/16 p1, 0x1a

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzn(Lcom/google/android/gms/internal/play_billing/zzhr;)V

    const/16 p1, 0xc

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    return-void
.end method

.method public final zzp(ILcom/google/android/gms/internal/play_billing/zzfp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzt(II)V

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzf(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    const/16 p1, 0xc

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    return-void
.end method

.method public final zzq(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzr(Ljava/lang/String;)V

    return-void
.end method

.method public final zzr(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzy(I)I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzy(I)I

    move-result v2

    if-ne v2, v1, :cond_2d

    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb:[B

    array-length v4, v3

    sub-int/2addr v4, v1

    .line 4
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzjc;->zza(Ljava/lang/String;[BII)I

    move-result p1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    sub-int v0, p1, v0

    sub-int/2addr v0, v2

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    .line 6
    :cond_2d
    sget v0, Lcom/google/android/gms/internal/play_billing/zzjc;->zza:I

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zziz;->zzb(Ljava/lang/String;)I

    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    array-length v2, v0

    sub-int/2addr v2, v1

    .line 9
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjc;->zza(Ljava/lang/String;[BII)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I
    :try_end_42
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_42} :catch_43

    return-void

    :catch_43
    move-exception p1

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 10
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzs(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    return-void
.end method

.method public final zzt(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    return-void
.end method

.method public final zzu(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_10

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb:[B
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_8} :catch_71

    add-int/lit8 v2, v1, 0x1

    int-to-byte p1, p1

    :try_start_b
    aput-byte p1, v0, v1

    iput v2, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_f} :catch_6c

    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb:[B
    :try_end_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_12} :catch_71

    add-int/lit8 v2, v1, 0x1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    .line 2
    :try_start_17
    aput-byte v3, v0, v1
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_19} :catch_6c

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v4, v3, -0x80

    if-nez v4, :cond_27

    add-int/lit8 v1, v1, 0x2

    int-to-byte p1, v3

    .line 9
    :try_start_22
    aput-byte p1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_22 .. :try_end_26} :catch_71

    return-void

    :cond_27
    add-int/lit8 v4, v1, 0x2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 3
    :try_start_2c
    aput-byte v3, v0, v2
    :try_end_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2c .. :try_end_2e} :catch_67

    ushr-int/lit8 v2, p1, 0xe

    and-int/lit8 v3, v2, -0x80

    if-nez v3, :cond_3c

    add-int/lit8 v1, v1, 0x3

    int-to-byte p1, v2

    .line 8
    :try_start_37
    aput-byte p1, v0, v4

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I
    :try_end_3b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_37 .. :try_end_3b} :catch_71

    return-void

    :cond_3c
    add-int/lit8 v3, v1, 0x3

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 4
    :try_start_41
    aput-byte v2, v0, v4
    :try_end_43
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_41 .. :try_end_43} :catch_62

    ushr-int/lit8 v2, p1, 0x15

    and-int/lit8 v4, v2, -0x80

    if-nez v4, :cond_51

    add-int/lit8 v1, v1, 0x4

    int-to-byte p1, v2

    .line 7
    :try_start_4c
    aput-byte p1, v0, v3

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I
    :try_end_50
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4c .. :try_end_50} :catch_71

    return-void

    :cond_51
    add-int/lit8 v4, v1, 0x4

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 5
    :try_start_56
    aput-byte v2, v0, v3
    :try_end_58
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_56 .. :try_end_58} :catch_67

    ushr-int/lit8 p1, p1, 0x1c

    add-int/lit8 v1, v1, 0x5

    int-to-byte p1, p1

    .line 6
    :try_start_5d
    aput-byte p1, v0, v4

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I
    :try_end_61
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5d .. :try_end_61} :catch_71

    return-void

    :catch_62
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move v1, v3

    goto :goto_74

    :catch_67
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move v1, v4

    goto :goto_74

    :catch_6c
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move v1, v2

    goto :goto_74

    :catch_71
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    :goto_74
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzc:I

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzfv;

    int-to-long v3, v1

    int-to-long v5, p1

    const/4 v7, 0x1

    .line 10
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(JJILjava/lang/Throwable;)V

    .line 11
    throw v2
.end method

.method public final zzv(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzu(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzw(J)V

    return-void
.end method

.method public final zzw(J)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x80

    and-long v2, p1, v0

    .line 1
    iget v4, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-nez v2, :cond_17

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb:[B

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v4

    add-int/lit8 p1, v4, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb:[B

    long-to-int v3, p1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 2
    aput-byte v3, v2, v4

    add-int/lit8 v3, v4, 0x1

    const/4 v7, 0x7

    ushr-long v7, p1, v7

    and-long v9, v7, v0

    cmp-long v9, v9, v5

    long-to-int v7, v7

    if-nez v9, :cond_33

    int-to-byte p1, v7

    .line 19
    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    :cond_33
    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 3
    aput-byte v7, v2, v3

    add-int/lit8 v3, v4, 0x2

    const/16 v7, 0xe

    ushr-long v7, p1, v7

    and-long v9, v7, v0

    cmp-long v9, v9, v5

    long-to-int v7, v7

    if-nez v9, :cond_4d

    int-to-byte p1, v7

    .line 18
    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    :cond_4d
    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 4
    aput-byte v7, v2, v3

    add-int/lit8 v3, v4, 0x3

    const/16 v7, 0x15

    ushr-long v7, p1, v7

    and-long v9, v7, v0

    cmp-long v9, v9, v5

    long-to-int v7, v7

    if-nez v9, :cond_67

    int-to-byte p1, v7

    .line 17
    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    :cond_67
    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 5
    aput-byte v7, v2, v3

    add-int/lit8 v3, v4, 0x4

    const/16 v7, 0x1c

    ushr-long v7, p1, v7

    and-long v9, v7, v0

    cmp-long v9, v9, v5

    long-to-int v7, v7

    if-nez v9, :cond_81

    int-to-byte p1, v7

    .line 16
    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x5

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    :cond_81
    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 6
    aput-byte v7, v2, v3

    add-int/lit8 v3, v4, 0x5

    const/16 v7, 0x23

    ushr-long v7, p1, v7

    and-long v9, v7, v0

    cmp-long v9, v9, v5

    long-to-int v7, v7

    if-nez v9, :cond_9b

    int-to-byte p1, v7

    .line 15
    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    :cond_9b
    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 7
    aput-byte v7, v2, v3

    add-int/lit8 v3, v4, 0x6

    const/16 v7, 0x2a

    ushr-long v7, p1, v7

    and-long v9, v7, v0

    cmp-long v9, v9, v5

    long-to-int v7, v7

    if-nez v9, :cond_b5

    int-to-byte p1, v7

    .line 14
    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x7

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    :cond_b5
    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 8
    aput-byte v7, v2, v3

    add-int/lit8 v3, v4, 0x7

    const/16 v7, 0x31

    ushr-long v7, p1, v7

    and-long v9, v7, v0

    cmp-long v9, v9, v5

    long-to-int v7, v7

    if-nez v9, :cond_cf

    int-to-byte p1, v7

    .line 13
    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    :cond_cf
    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 9
    aput-byte v7, v2, v3

    add-int/lit8 v3, v4, 0x8

    const/16 v7, 0x38

    ushr-long v7, p1, v7

    and-long/2addr v0, v7

    cmp-long v0, v0, v5

    long-to-int v1, v7

    if-nez v0, :cond_e8

    int-to-byte p1, v1

    .line 12
    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x9

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I

    return-void

    :cond_e8
    or-int/lit16 v0, v1, 0x80

    int-to-byte v0, v0

    .line 10
    aput-byte v0, v2, v3

    add-int/lit8 v0, v4, 0x9

    const/16 v1, 0x3f

    ushr-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 11
    aput-byte p1, v2, v0

    add-int/lit8 p1, v4, 0xa

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzd:I
    :try_end_fa
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_fa} :catch_fb

    return-void

    :catch_fb
    move-exception v0

    move-object p1, v0

    move-object v11, p1

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzc:I

    int-to-long v6, v4

    new-instance v5, Lcom/google/android/gms/internal/play_billing/zzfv;

    int-to-long v8, p1

    const/4 v10, 0x1

    .line 20
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(JJILjava/lang/Throwable;)V

    .line 21
    throw v5
.end method
