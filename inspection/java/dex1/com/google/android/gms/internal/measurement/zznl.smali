.class final Lcom/google/android/gms/internal/measurement/zznl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzns;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zznh;

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzoe;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/measurement/zzlq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzoe;Lcom/google/android/gms/internal/measurement/zzlq;Lcom/google/android/gms/internal/measurement/zznh;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zznl;->zzb:Lcom/google/android/gms/internal/measurement/zzoe;

    instance-of p1, p3, Lcom/google/android/gms/internal/measurement/zzma;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zznl;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zznl;->zzd:Lcom/google/android/gms/internal/measurement/zzlq;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zznl;->zza:Lcom/google/android/gms/internal/measurement/zznh;

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/measurement/zzoe;Lcom/google/android/gms/internal/measurement/zzlq;Lcom/google/android/gms/internal/measurement/zznh;)Lcom/google/android/gms/internal/measurement/zznl;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zznl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznl;-><init>(Lcom/google/android/gms/internal/measurement/zzoe;Lcom/google/android/gms/internal/measurement/zzlq;Lcom/google/android/gms/internal/measurement/zznh;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .registers 4

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmd;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzof;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzof;->zzb()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zznl;->zzc:Z

    if-eqz v1, :cond_19

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzma;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzma;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlu;->zzc()I

    move-result p1

    add-int/2addr v0, p1

    :cond_19
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .registers 4

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmd;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zznl;->zzc:Z

    if-eqz v1, :cond_1a

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzma;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzma;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzoa;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1a
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznl;->zza:Lcom/google/android/gms/internal/measurement/zznh;

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzmd;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcj()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    return-object v0

    .line 2
    :cond_d
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzcA()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzbc()Lcom/google/android/gms/internal/measurement/zznh;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznl;->zzb:Lcom/google/android/gms/internal/measurement/zzoe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzoe;->zza(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznl;->zzd:Lcom/google/android/gms/internal/measurement/zzlq;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlq;->zza(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznl;->zzb:Lcom/google/android/gms/internal/measurement/zzoe;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznu;->zzp(Lcom/google/android/gms/internal/measurement/zzoe;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zznl;->zzc:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznl;->zzd:Lcom/google/android/gms/internal/measurement/zzlq;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznu;->zzo(Lcom/google/android/gms/internal/measurement/zzlq;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzks;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzmd;

    iget-object p3, p2, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzof;->zzc()Lcom/google/android/gms/internal/measurement/zzof;

    move-result-object p4

    if-eq p3, p4, :cond_c

    goto :goto_12

    .line 4
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzof;->zzf()Lcom/google/android/gms/internal/measurement/zzof;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    .line 3
    :goto_12
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzma;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzma;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzma;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlu;->zze()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzlt;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzlt;->zzc()Lcom/google/android/gms/internal/measurement/zzoq;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzoq;->zzi:Lcom/google/android/gms/internal/measurement/zzoq;

    if-ne v3, v4, :cond_51

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzlt;->zze()Z

    move-result v3

    if-nez v3, :cond_51

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzlt;->zzd()Z

    move-result v3

    if-nez v3, :cond_51

    .line 13
    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/zzmo;

    if-eqz v3, :cond_45

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzlt;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzmo;->zza()Lcom/google/android/gms/internal/measurement/zzmr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzms;->zzb()Lcom/google/android/gms/internal/measurement/zzld;

    move-result-object v1

    .line 8
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzw(ILjava/lang/Object;)V

    goto :goto_9

    .line 9
    :cond_45
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzlt;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzw(ILjava/lang/Object;)V

    goto :goto_9

    .line 6
    :cond_51
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_59
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmd;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzof;

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzof;->zzk(Lcom/google/android/gms/internal/measurement/zzor;)V

    return-void
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmd;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    .line 2
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmd;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 p1, 0x0

    return p1

    :cond_12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zznl;->zzc:Z

    if-eqz v0, :cond_23

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzma;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzma;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzma;

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzma;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzlu;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_23
    const/4 p1, 0x1

    return p1
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzma;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzma;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlu;->zzh()Z

    move-result p1

    return p1
.end method
