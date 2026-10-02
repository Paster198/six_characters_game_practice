.class final Lcom/google/android/gms/internal/gtm/zzsn;
.super Lcom/google/android/gms/internal/gtm/zzsp;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field private final zza:[B

.field private zzb:I

.field private zzc:I

.field private zzd:I

.field private zze:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 4

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gtm/zzsp;-><init>(Lcom/google/android/gms/internal/gtm/zzso;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zza:[B

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzc:I

    return-void
.end method

.method private final zzU()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzc:I

    if-eq v0, v1, :cond_f

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zza:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 2
    aget-byte v0, v1, v0

    return v0

    .line 1
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzj()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object v0

    throw v0
.end method

.method private final zzV()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzad(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzW()I

    move-result v0

    return v0
.end method

.method private final zzW()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zza:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 1
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private final zzX()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzc:I

    if-eq v1, v0, :cond_7f

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zza:[B

    add-int/lit8 v3, v0, 0x1

    .line 2
    aget-byte v4, v2, v0

    if-ltz v4, :cond_11

    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return v4

    :cond_11
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_1c

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaa()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_1c
    add-int/lit8 v1, v0, 0x2

    .line 4
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_28

    xor-int/lit8 v0, v3, -0x80

    goto :goto_7c

    :cond_28
    add-int/lit8 v4, v0, 0x3

    .line 5
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_35

    xor-int/lit16 v0, v1, 0x3f80

    :goto_33
    move v1, v4

    goto :goto_7c

    :cond_35
    add-int/lit8 v3, v0, 0x4

    .line 6
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_44

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    :goto_42
    move v1, v3

    goto :goto_7c

    :cond_44
    add-int/lit8 v4, v0, 0x5

    .line 7
    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v3, :cond_7a

    add-int/lit8 v3, v0, 0x6

    .line 8
    aget-byte v4, v2, v4

    if-gez v4, :cond_78

    add-int/lit8 v4, v0, 0x7

    aget-byte v3, v2, v3

    if-gez v3, :cond_7a

    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v4

    if-gez v4, :cond_78

    add-int/lit8 v4, v0, 0x9

    aget-byte v3, v2, v3

    if-gez v3, :cond_7a

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v2, v4

    if-ltz v2, :cond_73

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_7c

    .line 9
    :cond_73
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zze()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object v0

    throw v0

    :cond_78
    move v0, v1

    goto :goto_42

    :cond_7a
    move v0, v1

    goto :goto_33

    .line 4
    :goto_7c
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return v0

    .line 1
    :cond_7f
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzj()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object v0

    throw v0
.end method

.method private final zzY()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzad(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzZ()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzZ()J
    .registers 10

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zza:[B

    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 1
    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzaa()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzU()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 2
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zze()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object v0

    throw v0
.end method

.method private final zzab(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzwx<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzuj;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zze:I

    .line 1
    :try_start_c
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzwx;->zze()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/gtm/zzwx;->zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzww;Lcom/google/android/gms/internal/gtm/zzuj;)V

    .line 3
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/gtm/zzwx;->zzf(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    iget p2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zze:I
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_24

    if-ne p1, p2, :cond_1f

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zze:I

    return-object v1

    .line 4
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzg()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zze:I

    .line 5
    throw p1
.end method

.method private final zzac(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzwx<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzuj;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzad(I)V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzc:I

    .line 3
    :try_start_e
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzwx;->zze()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/gms/internal/gtm/zzwx;->zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzww;Lcom/google/android/gms/internal/gtm/zzuj;)V

    .line 5
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/gtm/zzwx;->zzf(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_24

    if-ne p1, v2, :cond_1f

    .line 7
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzc:I

    return-object v0

    .line 6
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzg()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzc:I

    .line 7
    throw p1
.end method

.method private final zzad(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_a

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_a

    return-void

    .line 1
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzj()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1
.end method

.method private final zzae(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzj()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1
.end method

.method private final zzaf(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_7

    return-void

    .line 1
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1
.end method

.method private final zzag(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzsn;->zzad(I)V

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void
.end method

.method private final zzah(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzsn;->zzad(I)V

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_8

    return-void

    .line 2
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzg()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1
.end method

.method private final zzai(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzsn;->zzad(I)V

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_8

    return-void

    .line 2
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzg()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1
.end method

.method private final zzaj()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzc:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zzA(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzug;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4b

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzug;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_30

    if-ne p1, v1, :cond_2b

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzsn;->zzai(I)V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, p1

    :goto_1b
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge p1, v1, :cond_87

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzZ()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzug;->zze(D)V

    goto :goto_1b

    .line 8
    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zza()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzug;->zze(D)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_87

    :cond_3e
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_30

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 5
    :cond_4b
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_76

    if-ne v0, v1, :cond_71

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzai(I)V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_5d
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_87

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzZ()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 14
    :cond_71
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 12
    :cond_76
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zza()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_87
    :goto_87
    return-void

    :cond_88
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_76

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void
.end method

.method public final zzB(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzva;

    const/4 v1, 0x2

    if-eqz v0, :cond_43

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzva;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_28

    if-ne p1, v1, :cond_23

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, p1

    :goto_17
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge p1, v1, :cond_78

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    goto :goto_17

    .line 7
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 5
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zze()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_78

    :cond_36
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_28

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 4
    :cond_43
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_67

    if-ne v0, v1, :cond_62

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_52
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_78

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 12
    :cond_62
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 10
    :cond_67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zze()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_79

    :cond_78
    :goto_78
    return-void

    :cond_79
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_67

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void
.end method

.method public final zzC(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzva;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_46

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzva;

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_30

    if-ne v0, v1, :cond_2b

    .line 3
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_8c

    :cond_1e
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_10

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 8
    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 5
    :cond_30
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzah(I)V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_3a
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_8c

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzW()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    goto :goto_3a

    :cond_46
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_72

    if-ne v0, v1, :cond_6d

    .line 9
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_8c

    :cond_60
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_4e

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 14
    :cond_6d
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 11
    :cond_72
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzah(I)V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_7c
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_8c

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzW()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    :cond_8c
    :goto_8c
    return-void
.end method

.method public final zzD(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzvz;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_47

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvz;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2c

    if-ne p1, v1, :cond_27

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzsn;->zzai(I)V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, p1

    :goto_1b
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge p1, v1, :cond_7f

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzZ()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    goto :goto_1b

    .line 8
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_7f

    :cond_3a
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_2c

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 5
    :cond_47
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_6e

    if-ne v0, v1, :cond_69

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzai(I)V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_59
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_7f

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzZ()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 14
    :cond_69
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 12
    :cond_6e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzk()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_80

    :cond_7f
    :goto_7f
    return-void

    :cond_80
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_6e

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void
.end method

.method public final zzE(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzuq;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4b

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzuq;

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_31

    if-ne v0, v1, :cond_2c

    .line 3
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzb()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzuq;->zze(F)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_95

    :cond_1f
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_10

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 8
    :cond_2c
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 5
    :cond_31
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzah(I)V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_3b
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_95

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzW()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzuq;->zze(F)V

    goto :goto_3b

    :cond_4b
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_77

    if-ne v0, v1, :cond_72

    .line 9
    :cond_53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzb()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_95

    :cond_65
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_53

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 14
    :cond_72
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 11
    :cond_77
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzah(I)V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_81
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_95

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzW()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    :cond_95
    :goto_95
    return-void
.end method

.method public final zzF(Ljava/util/List;Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzwx<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzuj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_20

    .line 1
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zzsn;->zzab(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    :cond_15
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v2

    if-eq v2, v0, :cond_7

    .line 3
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1
.end method

.method public final zzG(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzva;

    const/4 v1, 0x2

    if-eqz v0, :cond_47

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzva;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2c

    if-ne p1, v1, :cond_27

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, p1

    :goto_17
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge p1, v1, :cond_23

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    goto :goto_17

    .line 5
    :cond_23
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzsn;->zzae(I)V

    return-void

    .line 8
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_80

    :cond_3a
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_2c

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 5
    :cond_47
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_6f

    if-ne v0, v1, :cond_6a

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_56
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_66

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 11
    :cond_66
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzsn;->zzae(I)V

    return-void

    .line 14
    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 12
    :cond_6f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_81

    :goto_80
    return-void

    :cond_81
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_6f

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void
.end method

.method public final zzH(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzvz;

    const/4 v1, 0x2

    if-eqz v0, :cond_47

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvz;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2c

    if-ne p1, v1, :cond_27

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, p1

    :goto_17
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge p1, v1, :cond_23

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    goto :goto_17

    .line 5
    :cond_23
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzsn;->zzae(I)V

    return-void

    .line 8
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_80

    :cond_3a
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_2c

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 5
    :cond_47
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_6f

    if-ne v0, v1, :cond_6a

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_56
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_66

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 11
    :cond_66
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzsn;->zzae(I)V

    return-void

    .line 14
    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 12
    :cond_6f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_81

    :goto_80
    return-void

    :cond_81
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_6f

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void
.end method

.method public final zzI(Ljava/util/List;Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzwx<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzuj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 1
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zzsn;->zzac(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    :cond_15
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v2

    if-eq v2, v0, :cond_7

    .line 3
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1
.end method

.method public final zzJ(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzva;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_46

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzva;

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_30

    if-ne v0, v1, :cond_2b

    .line 3
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzh()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_8c

    :cond_1e
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_10

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 8
    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 5
    :cond_30
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzah(I)V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_3a
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_8c

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzW()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    goto :goto_3a

    :cond_46
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_72

    if-ne v0, v1, :cond_6d

    .line 9
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_8c

    :cond_60
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_4e

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 14
    :cond_6d
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 11
    :cond_72
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzah(I)V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_7c
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_8c

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzW()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    :cond_8c
    :goto_8c
    return-void
.end method

.method public final zzK(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzvz;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_47

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvz;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2c

    if-ne p1, v1, :cond_27

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzsn;->zzai(I)V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, p1

    :goto_1b
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge p1, v1, :cond_7f

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzZ()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    goto :goto_1b

    .line 8
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzm()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_7f

    :cond_3a
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_2c

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 5
    :cond_47
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_6e

    if-ne v0, v1, :cond_69

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzai(I)V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_59
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_7f

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzZ()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 14
    :cond_69
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 12
    :cond_6e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzm()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_80

    :cond_7f
    :goto_7f
    return-void

    :cond_80
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_6e

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void
.end method

.method public final zzL(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzva;

    const/4 v1, 0x2

    if-eqz v0, :cond_47

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzva;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2c

    if-ne p1, v1, :cond_27

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, p1

    :goto_17
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge p1, v1, :cond_80

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzs(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    goto :goto_17

    .line 7
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 5
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzi()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_80

    :cond_3a
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_2c

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 4
    :cond_47
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_6f

    if-ne v0, v1, :cond_6a

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_56
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_80

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 12
    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 10
    :cond_6f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzi()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_80
    :goto_80
    return-void

    :cond_81
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_6f

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void
.end method

.method public final zzM(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzvz;

    const/4 v1, 0x2

    if-eqz v0, :cond_47

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvz;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2c

    if-ne p1, v1, :cond_27

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, p1

    :goto_17
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge p1, v1, :cond_80

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gtm/zztj;->zzt(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    goto :goto_17

    .line 7
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 5
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzn()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_80

    :cond_3a
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_2c

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 4
    :cond_47
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_6f

    if-ne v0, v1, :cond_6a

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_56
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_80

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gtm/zztj;->zzt(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 12
    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 10
    :cond_6f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzn()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_80
    :goto_80
    return-void

    :cond_81
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_6f

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void
.end method

.method public final zzN(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzO(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzO(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_47

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzvs;

    if-nez v0, :cond_c

    goto :goto_2c

    :cond_c
    if-nez p2, :cond_2c

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvs;

    .line 6
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzq()Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzvs;->zzi(Lcom/google/android/gms/internal/gtm/zztd;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_39

    :cond_1f
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq p2, v1, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 3
    :cond_2c
    :goto_2c
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzsn;->zzw(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_3a

    :goto_39
    return-void

    :cond_3a
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_2c

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 1
    :cond_47
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1
.end method

.method public final zzP(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzO(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzQ(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzva;

    const/4 v1, 0x2

    if-eqz v0, :cond_43

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzva;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_28

    if-ne p1, v1, :cond_23

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, p1

    :goto_17
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge p1, v1, :cond_78

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    goto :goto_17

    .line 7
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 5
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzj()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_78

    :cond_36
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_28

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 4
    :cond_43
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_67

    if-ne v0, v1, :cond_62

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_52
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_78

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 12
    :cond_62
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 10
    :cond_67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_79

    :cond_78
    :goto_78
    return-void

    :cond_79
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_67

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void
.end method

.method public final zzR(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzvz;

    const/4 v1, 0x2

    if-eqz v0, :cond_47

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvz;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2c

    if-ne p1, v1, :cond_27

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, p1

    :goto_17
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge p1, v1, :cond_23

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    goto :goto_17

    .line 5
    :cond_23
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzsn;->zzae(I)V

    return-void

    .line 8
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_80

    :cond_3a
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_2c

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 5
    :cond_47
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_6f

    if-ne v0, v1, :cond_6a

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    :goto_56
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v1, :cond_66

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 11
    :cond_66
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzsn;->zzae(I)V

    return-void

    .line 14
    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 12
    :cond_6f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_81

    :goto_80
    return-void

    :cond_81
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_6f

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void
.end method

.method public final zzS()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public final zzT()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_85

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zze:I

    if-ne v0, v2, :cond_f

    goto/16 :goto_85

    :cond_f
    and-int/lit8 v3, v0, 0x7

    const/4 v4, 0x1

    if-eqz v3, :cond_59

    if-eq v3, v4, :cond_53

    const/4 v1, 0x2

    if-eq v3, v1, :cond_4b

    const/4 v1, 0x4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_29

    const/4 v0, 0x5

    if-ne v3, v0, :cond_24

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzsn;->zzag(I)V

    return v4

    .line 9
    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object v0

    throw v0

    :cond_29
    ushr-int/2addr v0, v5

    shl-int/2addr v0, v5

    or-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zze:I

    .line 4
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzc()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzT()Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_3d
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zze:I

    if-ne v0, v1, :cond_46

    .line 5
    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zze:I

    return v4

    :cond_46
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzg()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object v0

    throw v0

    .line 7
    :cond_4b
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzag(I)V

    return v4

    :cond_53
    const/16 v0, 0x8

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzag(I)V

    return v4

    .line 0
    :cond_59
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    sub-int/2addr v0, v2

    const/16 v3, 0xa

    if-lt v0, v3, :cond_74

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zza:[B

    move v5, v1

    :goto_65
    if-ge v5, v3, :cond_74

    add-int/lit8 v6, v2, 0x1

    .line 1
    aget-byte v2, v0, v2

    if-ltz v2, :cond_70

    iput v6, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    goto :goto_7f

    :cond_70
    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_65

    :cond_74
    :goto_74
    if-ge v1, v3, :cond_80

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzU()B

    move-result v0

    if-gez v0, :cond_7f

    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    :cond_7f
    :goto_7f
    return v4

    .line 3
    :cond_80
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zze()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object v0

    throw v0

    :cond_85
    :goto_85
    return v1
.end method

.method public final zza()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzY()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzV()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final zzc()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_a

    return v1

    .line 1
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zze:I

    if-ne v0, v2, :cond_15

    return v1

    :cond_15
    ushr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final zzd()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    return v0
.end method

.method public final zze()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    return v0
.end method

.method public final zzf()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzV()I

    move-result v0

    return v0
.end method

.method public final zzg()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    return v0
.end method

.method public final zzh()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzV()I

    move-result v0

    return v0
.end method

.method public final zzi()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzs(I)I

    move-result v0

    return v0
.end method

.method public final zzj()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    return v0
.end method

.method public final zzk()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzY()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzY()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzn()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzp()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zztj;->zzt(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzp()J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzc:I

    if-eq v1, v0, :cond_c8

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zza:[B

    add-int/lit8 v3, v0, 0x1

    .line 2
    aget-byte v4, v2, v0

    if-ltz v4, :cond_12

    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    int-to-long v0, v4

    return-wide v0

    :cond_12
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_1c

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaa()J

    move-result-wide v0

    return-wide v0

    :cond_1c
    add-int/lit8 v1, v0, 0x2

    .line 4
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_2a

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_c5

    :cond_2a
    add-int/lit8 v4, v0, 0x3

    .line 5
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_39

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    :goto_36
    move v1, v4

    goto/16 :goto_c5

    :cond_39
    add-int/lit8 v3, v0, 0x4

    .line 6
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_4c

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v11, v0

    move v1, v3

    move-wide v2, v11

    goto/16 :goto_c5

    :cond_4c
    add-int/lit8 v4, v0, 0x5

    int-to-long v5, v1

    .line 7
    aget-byte v1, v2, v3

    int-to-long v7, v1

    const/16 v1, 0x1c

    shl-long/2addr v7, v1

    xor-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_62

    const-wide/32 v0, 0xfe03f80

    xor-long v2, v5, v0

    goto :goto_36

    :cond_62
    add-int/lit8 v1, v0, 0x6

    .line 8
    aget-byte v3, v2, v4

    int-to-long v3, v3

    const/16 v9, 0x23

    shl-long/2addr v3, v9

    xor-long/2addr v3, v5

    cmp-long v5, v3, v7

    if-gez v5, :cond_77

    const-wide v5, -0x7f01fc080L

    :goto_74
    xor-long v2, v3, v5

    goto :goto_c5

    :cond_77
    add-int/lit8 v5, v0, 0x7

    .line 9
    aget-byte v1, v2, v1

    int-to-long v9, v1

    const/16 v1, 0x2a

    shl-long/2addr v9, v1

    xor-long/2addr v3, v9

    cmp-long v1, v3, v7

    if-ltz v1, :cond_8d

    const-wide v0, 0x3f80fe03f80L

    xor-long v2, v3, v0

    :goto_8b
    move v1, v5

    goto :goto_c5

    :cond_8d
    add-int/lit8 v1, v0, 0x8

    .line 10
    aget-byte v5, v2, v5

    int-to-long v5, v5

    const/16 v9, 0x31

    shl-long/2addr v5, v9

    xor-long/2addr v3, v5

    cmp-long v5, v3, v7

    if-gez v5, :cond_a0

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_74

    :cond_a0
    add-int/lit8 v5, v0, 0x9

    .line 11
    aget-byte v1, v2, v1

    int-to-long v9, v1

    const/16 v1, 0x38

    shl-long/2addr v9, v1

    xor-long/2addr v3, v9

    const-wide v9, 0xfe03f80fe03f80L

    xor-long/2addr v3, v9

    cmp-long v1, v3, v7

    if-gez v1, :cond_c3

    add-int/lit8 v1, v0, 0xa

    .line 12
    aget-byte v0, v2, v5

    int-to-long v5, v0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_be

    move-wide v2, v3

    goto :goto_c5

    .line 13
    :cond_be
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zze()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object v0

    throw v0

    :cond_c3
    move-wide v2, v3

    goto :goto_8b

    .line 4
    :goto_c5
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-wide v2

    .line 1
    :cond_c8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzj()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object v0

    throw v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/gtm/zztd;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    if-nez v0, :cond_d

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/gtm/zztd;->zzb:Lcom/google/android/gms/internal/gtm/zztd;

    return-object v0

    .line 4
    :cond_d
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzad(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zza:[B

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 5
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zztd;->zzq([BII)Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-object v1
.end method

.method public final zzr(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzuj;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzsn;->zzab(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzs(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzwx<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzuj;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzsn;->zzab(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzt(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzuj;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzsn;->zzac(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzu(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzwx<",
            "TT;>;",
            "Lcom/google/android/gms/internal/gtm/zzuj;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzsn;->zzac(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzv()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzw(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzw(Z)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaf(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    if-nez v0, :cond_d

    const-string p1, ""

    return-object p1

    .line 3
    :cond_d
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzad(I)V

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int v2, v1, v0

    .line 4
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzyd;->zzf([BII)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_24

    .line 6
    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzd()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1

    :cond_24
    :goto_24
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zza:[B

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/gtm/zzvi;->zza:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-object p1
.end method

.method public final zzx()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzw(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzy(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzsr;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_4e

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzsr;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_33

    if-ne p1, v3, :cond_2e

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v3, p1

    :goto_19
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge p1, v3, :cond_2a

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result p1

    if-eqz p1, :cond_25

    move p1, v1

    goto :goto_26

    :cond_25
    move p1, v2

    :goto_26
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzsr;->zze(Z)V

    goto :goto_19

    .line 5
    :cond_2a
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/gtm/zzsn;->zzae(I)V

    return-void

    .line 8
    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzS()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzsr;->zze(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_8c

    :cond_41
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_33

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    .line 5
    :cond_4e
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7b

    if-ne v0, v3, :cond_76

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    add-int/2addr v3, v0

    :goto_5d
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    if-ge v0, v3, :cond_72

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v0

    if-eqz v0, :cond_69

    move v0, v1

    goto :goto_6a

    :cond_69
    move v0, v2

    :goto_6a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 11
    :cond_72
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/gtm/zzsn;->zzae(I)V

    return-void

    .line 14
    :cond_76
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 12
    :cond_7b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzS()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_8d

    :goto_8c
    return-void

    :cond_8d
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_7b

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void
.end method

.method public final zzz(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zztd;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 1
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzq()Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsn;->zzX()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:I

    if-eq v1, v2, :cond_7

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:I

    return-void

    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1
.end method
