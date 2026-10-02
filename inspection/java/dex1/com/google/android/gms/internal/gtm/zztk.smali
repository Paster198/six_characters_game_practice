.class final Lcom/google/android/gms/internal/gtm/zztk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzww;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zztj;

.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/gtm/zztj;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    const-string v0, "input"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzvi;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    iput-object p0, p1, Lcom/google/android/gms/internal/gtm/zztj;->zzc:Lcom/google/android/gms/internal/gtm/zztk;

    return-void
.end method

.method private final zzO(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;
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

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzc:I

    .line 1
    :try_start_c
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzwx;->zze()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/gtm/zzwx;->zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzww;Lcom/google/android/gms/internal/gtm/zzuj;)V

    .line 3
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/gtm/zzwx;->zzf(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    iget p2, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzc:I
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_24

    if-ne p1, p2, :cond_1f

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzc:I

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

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzc:I

    .line 5
    throw p1
.end method

.method private final zzU(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;
    .registers 7
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

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    iget v2, v1, Lcom/google/android/gms/internal/gtm/zztj;->zza:I

    iget v3, v1, Lcom/google/android/gms/internal/gtm/zztj;->zzb:I

    if-ge v2, v3, :cond_38

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzb(I)I

    move-result v0

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzwx;->zze()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    iget v3, v2, Lcom/google/android/gms/internal/gtm/zztj;->zza:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/gtm/zztj;->zza:I

    .line 6
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/gtm/zzwx;->zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzww;Lcom/google/android/gms/internal/gtm/zzuj;)V

    .line 7
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/gtm/zzwx;->zzf(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zztj;->zzg(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    iget p2, p1, Lcom/google/android/gms/internal/gtm/zztj;->zza:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zztj;->zza:I

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzh(I)V

    return-object v1

    .line 1
    :cond_38
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzvk;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzvk;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1
.end method

.method private final zzV(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    .line 1
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzj()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1
.end method

.method private final zzW(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_7

    return-void

    .line 1
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1
.end method

.method private static final zzX(I)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_5

    return-void

    .line 1
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzg()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p0

    throw p0
.end method

.method private static final zzY(I)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_5

    return-void

    .line 1
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzg()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p0

    throw p0
.end method

.method public static zzp(Lcom/google/android/gms/internal/gtm/zztj;)Lcom/google/android/gms/internal/gtm/zztk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztj;->zzc:Lcom/google/android/gms/internal/gtm/zztk;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/gtm/zztk;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zztk;-><init>(Lcom/google/android/gms/internal/gtm/zztj;)V

    return-object v0
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

    if-eqz v0, :cond_66

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzug;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_41

    if-ne p1, v1, :cond_3c

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztk;->zzY(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, p1

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzug;->zze(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result p1

    if-lt p1, v1, :cond_23

    goto/16 :goto_bc

    .line 11
    :cond_3c
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 2
    :cond_41
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzug;->zze(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_59

    goto :goto_bc

    :cond_59
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, v1, :cond_41

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 6
    :cond_66
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_a1

    if-ne v0, v1, :cond_9c

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzY(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, v0

    .line 11
    :cond_80
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-lt v0, v1, :cond_80

    goto :goto_bc

    .line 20
    :cond_9c
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_a1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_bd

    :goto_bc
    return-void

    :cond_bd
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_a1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void
.end method

.method public final zzB(Ljava/util/List;)V
    .registers 4
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

    if-eqz v0, :cond_5c

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzva;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_3b

    if-ne p1, v1, :cond_36

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 11
    :cond_36
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 2
    :cond_3b
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_4f

    goto :goto_aa

    :cond_4f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, v1, :cond_3b

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 6
    :cond_5c
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_93

    if-ne v0, v1, :cond_8e

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, v0

    :cond_73
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-lt v0, v1, :cond_73

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 20
    :cond_8e
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_93
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_ab

    :goto_aa
    return-void

    :cond_ab
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_93

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void
.end method

.method public final zzC(Ljava/util/List;)V
    .registers 6
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

    if-eqz v0, :cond_5f

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzva;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_38

    if-ne p1, v1, :cond_33

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

    move-result p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_26

    goto/16 :goto_ba

    :cond_26
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, v1, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 11
    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_38
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztk;->zzX(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int v3, v1, p1

    :cond_4b
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result p1

    if-lt p1, v3, :cond_4b

    goto :goto_ba

    :cond_5f
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_91

    if-ne v0, v1, :cond_8c

    :cond_67
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_7f

    goto :goto_ba

    :cond_7f
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_67

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 20
    :cond_8c
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 15
    :cond_91
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzX(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, v0

    .line 11
    :cond_a3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-lt v0, v1, :cond_a3

    :goto_ba
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

    if-eqz v0, :cond_5e

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvz;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3d

    if-ne p1, v1, :cond_38

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztk;->zzY(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, p1

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

    move-result-wide v2

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result p1

    if-lt p1, v1, :cond_23

    goto/16 :goto_ac

    .line 11
    :cond_38
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 2
    :cond_3d
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

    move-result-wide v1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_ac

    :cond_51
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, v1, :cond_3d

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 6
    :cond_5e
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_95

    if-ne v0, v1, :cond_90

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzY(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, v0

    .line 11
    :cond_78
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

    move-result-wide v2

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-lt v0, v1, :cond_78

    goto :goto_ac

    .line 20
    :cond_90
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_95
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_ad

    :goto_ac
    return-void

    :cond_ad
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_95

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void
.end method

.method public final zzE(Ljava/util/List;)V
    .registers 6
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

    if-eqz v0, :cond_67

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuq;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3c

    if-ne p1, v1, :cond_37

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzuq;->zze(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_2a

    goto/16 :goto_ca

    :cond_2a
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, v1, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 11
    :cond_37
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_3c
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztk;->zzX(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int v3, v1, p1

    :cond_4f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzuq;->zze(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result p1

    if-lt p1, v3, :cond_4f

    goto :goto_ca

    :cond_67
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9d

    if-ne v0, v1, :cond_98

    :cond_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_8b

    goto :goto_ca

    :cond_8b
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_6f

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 20
    :cond_98
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 15
    :cond_9d
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzX(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, v0

    .line 11
    :cond_af
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-lt v0, v1, :cond_af

    :goto_ca
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

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_26

    .line 1
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zztk;->zzO(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v1

    if-nez v1, :cond_25

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    if-eqz v1, :cond_1b

    goto :goto_25

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v1

    if-eq v1, v0, :cond_7

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1
.end method

.method public final zzG(Ljava/util/List;)V
    .registers 4
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

    if-eqz v0, :cond_5c

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzva;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_3b

    if-ne p1, v1, :cond_36

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 11
    :cond_36
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 2
    :cond_3b
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_4f

    goto :goto_aa

    :cond_4f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, v1, :cond_3b

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 6
    :cond_5c
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_93

    if-ne v0, v1, :cond_8e

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, v0

    :cond_73
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-lt v0, v1, :cond_73

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 20
    :cond_8e
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_93
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_ab

    :goto_aa
    return-void

    :cond_ab
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_93

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

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

    if-eqz v0, :cond_5c

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvz;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_3b

    if-ne p1, v1, :cond_36

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v2

    .line 5
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 11
    :cond_36
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 2
    :cond_3b
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_4f

    goto :goto_aa

    :cond_4f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, v1, :cond_3b

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 6
    :cond_5c
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_93

    if-ne v0, v1, :cond_8e

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, v0

    :cond_73
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v2

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-lt v0, v1, :cond_73

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 20
    :cond_8e
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_93
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_ab

    :goto_aa
    return-void

    :cond_ab
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_93

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

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

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    .line 1
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zztk;->zzU(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v1

    if-nez v1, :cond_25

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    if-eqz v1, :cond_1b

    goto :goto_25

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v1

    if-eq v1, v0, :cond_7

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1
.end method

.method public final zzJ(Ljava/util/List;)V
    .registers 6
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

    if-eqz v0, :cond_5f

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzva;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_38

    if-ne p1, v1, :cond_33

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

    move-result p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_26

    goto/16 :goto_ba

    :cond_26
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, v1, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 11
    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_38
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztk;->zzX(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int v3, v1, p1

    :cond_4b
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result p1

    if-lt p1, v3, :cond_4b

    goto :goto_ba

    :cond_5f
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_91

    if-ne v0, v1, :cond_8c

    :cond_67
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_7f

    goto :goto_ba

    :cond_7f
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_67

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 20
    :cond_8c
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 15
    :cond_91
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzX(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, v0

    .line 11
    :cond_a3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-lt v0, v1, :cond_a3

    :goto_ba
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

    if-eqz v0, :cond_5e

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvz;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3d

    if-ne p1, v1, :cond_38

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztk;->zzY(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, p1

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

    move-result-wide v2

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result p1

    if-lt p1, v1, :cond_23

    goto/16 :goto_ac

    .line 11
    :cond_38
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 2
    :cond_3d
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

    move-result-wide v1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_ac

    :cond_51
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, v1, :cond_3d

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 6
    :cond_5e
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_95

    if-ne v0, v1, :cond_90

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzY(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, v0

    .line 11
    :cond_78
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

    move-result-wide v2

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-lt v0, v1, :cond_78

    goto :goto_ac

    .line 20
    :cond_90
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_95
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_ad

    :goto_ac
    return-void

    :cond_ad
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_95

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void
.end method

.method public final zzL(Ljava/util/List;)V
    .registers 4
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

    if-eqz v0, :cond_64

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzva;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_3f

    if-ne p1, v1, :cond_3a

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzs(I)I

    move-result p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 11
    :cond_3a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 2
    :cond_3f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzs(I)I

    move-result p1

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_57

    goto :goto_ba

    :cond_57
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, v1, :cond_3f

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 6
    :cond_64
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_9f

    if-ne v0, v1, :cond_9a

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, v0

    :cond_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzs(I)I

    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-lt v0, v1, :cond_7b

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 20
    :cond_9a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzs(I)I

    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_bb

    :goto_ba
    return-void

    :cond_bb
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_9f

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

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

    if-eqz v0, :cond_64

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvz;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_3f

    if-ne p1, v1, :cond_3a

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gtm/zzth;->zzt(J)J

    move-result-wide v2

    .line 5
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 11
    :cond_3a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 2
    :cond_3f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gtm/zzth;->zzt(J)J

    move-result-wide v1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_57

    goto :goto_ba

    :cond_57
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, v1, :cond_3f

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 6
    :cond_64
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_9f

    if-ne v0, v1, :cond_9a

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, v0

    :cond_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gtm/zzth;->zzt(J)J

    move-result-wide v2

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-lt v0, v1, :cond_7b

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 20
    :cond_9a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_9f
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzth;->zzt(J)J

    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_bb

    :goto_ba
    return-void

    :cond_bb
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_9f

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

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
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzw(Ljava/util/List;Z)V

    return-void
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
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzw(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzQ(Ljava/util/List;)V
    .registers 4
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

    if-eqz v0, :cond_5c

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzva;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_3b

    if-ne p1, v1, :cond_36

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 11
    :cond_36
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 2
    :cond_3b
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzva;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_4f

    goto :goto_aa

    :cond_4f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, v1, :cond_3b

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 6
    :cond_5c
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_93

    if-ne v0, v1, :cond_8e

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, v0

    :cond_73
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-lt v0, v1, :cond_73

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 20
    :cond_8e
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_93
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_ab

    :goto_aa
    return-void

    :cond_ab
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_93

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

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

    if-eqz v0, :cond_5c

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvz;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_3b

    if-ne p1, v1, :cond_36

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v2

    .line 5
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 11
    :cond_36
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 2
    :cond_3b
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzvz;->zzf(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_4f

    goto :goto_aa

    :cond_4f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, v1, :cond_3b

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 6
    :cond_5c
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_93

    if-ne v0, v1, :cond_8e

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, v0

    :cond_73
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v2

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-lt v0, v1, :cond_73

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 20
    :cond_8e
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 6
    :cond_93
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_ab

    :goto_aa
    return-void

    :cond_ab
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_93

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void
.end method

.method public final zzS()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzj()Z

    move-result v0

    return v0
.end method

.method public final zzT()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-nez v0, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzc:I

    if-ne v0, v1, :cond_f

    goto :goto_16

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzk(I)Z

    move-result v0

    return v0

    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final zzc()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    if-eqz v0, :cond_a

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    goto :goto_12

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    :goto_12
    if-eqz v0, :cond_1c

    .line 0
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzc:I

    if-ne v0, v1, :cond_19

    goto :goto_1c

    :cond_19
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_1c
    :goto_1c
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzd()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzm()I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzs(I)I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzo()J

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzth;->zzt(J)J

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/gtm/zztd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzd()Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object v0

    return-object v0
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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zztk;->zzO(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zztk;->zzO(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zztk;->zzU(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zztk;->zzU(Lcom/google/android/gms/internal/gtm/zzwx;Lcom/google/android/gms/internal/gtm/zzuj;)Ljava/lang/Object;

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

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzw(Ljava/util/List;Z)V
    .registers 5
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

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_52

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzvs;

    if-nez v0, :cond_c

    goto :goto_2e

    :cond_c
    if-nez p2, :cond_2e

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvs;

    .line 7
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zztk;->zzq()Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzvs;->zzi(Lcom/google/android/gms/internal/gtm/zztd;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_44

    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, p2, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    :cond_2e
    :goto_2e
    if-eqz p2, :cond_35

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zztk;->zzx()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :cond_35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zztk;->zzv()Ljava/lang/String;

    move-result-object v0

    :goto_39
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_45

    :goto_44
    return-void

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_2e

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 1
    :cond_52
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1
.end method

.method public final zzx()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzy(Ljava/util/List;)V
    .registers 4
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

    const/4 v1, 0x2

    if-eqz v0, :cond_58

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzsr;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_39

    if-ne p1, v1, :cond_34

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzth;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzj()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzsr;->zze(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 9
    :cond_34
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 2
    :cond_39
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzj()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzsr;->zze(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_a2

    :cond_4b
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq p1, v1, :cond_39

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    .line 5
    :cond_58
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_8d

    if-ne v0, v1, :cond_88

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzth;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzj()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zza()I

    move-result v0

    if-lt v0, v1, :cond_6f

    .line 12
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zztk;->zzV(I)V

    return-void

    .line 16
    :cond_88
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    .line 5
    :cond_8d
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzj()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_a3

    :goto_a2
    return-void

    :cond_a3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_8d

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void
.end method

.method public final zzz(Ljava/util/List;)V
    .registers 4
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

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 1
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zztk;->zzq()Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzi()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zza:Lcom/google/android/gms/internal/gtm/zztj;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zztj;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzb:I

    if-eq v0, v1, :cond_7

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztk;->zzd:I

    return-void

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1
.end method
