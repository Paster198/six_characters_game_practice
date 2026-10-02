.class public final Lcom/google/android/gms/measurement/internal/zzpz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field private final zza:J

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzhv;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/util/Map;

.field private final zze:Lcom/google/android/gms/measurement/internal/zzmf;

.field private final zzf:J

.field private final zzg:J

.field private final zzh:I


# direct methods
.method synthetic constructor <init>(JLcom/google/android/gms/internal/measurement/zzhv;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;JJJILcom/google/android/gms/measurement/internal/zzpy;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzb:Lcom/google/android/gms/internal/measurement/zzhv;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzd:Ljava/util/Map;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zze:Lcom/google/android/gms/measurement/internal/zzmf;

    iput-wide p9, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzf:J

    iput-wide p11, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzg:J

    iput p13, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzh:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzh:I

    return v0
.end method

.method public final zzb()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzg:J

    return-wide v0
.end method

.method public final zzc()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zza:J

    return-wide v0
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzmf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zze:Lcom/google/android/gms/measurement/internal/zzmf;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzpa;
    .registers 12

    .line 1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzd:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_2b
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zza:J

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzb:Lcom/google/android/gms/internal/measurement/zzhv;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zze:Lcom/google/android/gms/measurement/internal/zzmf;

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzf:J

    move-object v6, v0

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzpa;

    .line 5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object v6

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzmf;->zza()I

    move-result v3

    const-string v9, ""

    move-object v10, v6

    move v6, v3

    move-object v3, v10

    .line 7
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzpa;-><init>(J[BLjava/lang/String;Landroid/os/Bundle;IJLjava/lang/String;)V

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzph;
    .registers 6

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzph;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzd:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zze:Lcom/google/android/gms/measurement/internal/zzmf;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzph;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/internal/measurement/zzim;)V

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zzhv;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzb:Lcom/google/android/gms/internal/measurement/zzhv;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpz;->zzc:Ljava/lang/String;

    return-object v0
.end method
