.class final Lcom/google/android/gms/internal/play_billing/zzgz;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field protected volatile zza:Lcom/google/android/gms/internal/play_billing/zzhr;

.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzhr;

.field private final zzc:Lcom/google/android/gms/internal/play_billing/zzgc;

.field private volatile zzd:Lcom/google/android/gms/internal/play_billing/zzfp;

.field private volatile zze:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzhr;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1c

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zza:Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzl()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzb:Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 3
    sget p1, Lcom/google/android/gms/internal/play_billing/zzgc;->zzb:I

    .line 4
    sget p1, Lcom/google/android/gms/internal/play_billing/zzfc;->zza:I

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzgc;->zza:Lcom/google/android/gms/internal/play_billing/zzgc;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzc:Lcom/google/android/gms/internal/play_billing/zzgc;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzd:Lcom/google/android/gms/internal/play_billing/zzfp;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zze:Z

    return-void

    .line 1
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "message cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 v0, 0x1

    if-ne p0, p1, :cond_8

    return v0

    .line 1
    :cond_8
    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/zzgz;

    if-eqz v1, :cond_34

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgz;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzd:Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v1, :cond_27

    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/zzgz;->zzd:Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzc:Lcom/google/android/gms/internal/play_billing/zzgc;

    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/zzgz;->zzc:Lcom/google/android/gms/internal/play_billing/zzgc;

    if-ne v1, v2, :cond_27

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzd:Lcom/google/android/gms/internal/play_billing/zzfp;

    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/zzgz;->zzd:Lcom/google/android/gms/internal/play_billing/zzfp;

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzfp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    return v0

    .line 3
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgz;->zzc()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgz;->zzc()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgz;->zzc()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgz;->zzc()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgz;->zzc()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzd:Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzd:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zza:Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzn()I

    move-result v0

    return v0
.end method

.method final zzb()Lcom/google/android/gms/internal/play_billing/zzfp;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzd:Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzd:Lcom/google/android/gms/internal/play_billing/zzfp;

    return-object v0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzd:Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzd:Lcom/google/android/gms/internal/play_billing/zzfp;

    monitor-exit p0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zza:Lcom/google/android/gms/internal/play_billing/zzhr;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzj()Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzd:Lcom/google/android/gms/internal/play_billing/zzfp;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzd:Lcom/google/android/gms/internal/play_billing/zzfp;

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    .line 4
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method final zzc()Lcom/google/android/gms/internal/play_billing/zzhr;
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zza:Lcom/google/android/gms/internal/play_billing/zzhr;
    :try_end_2
    .catch Lcom/google/android/gms/internal/play_billing/zzhb; {:try_start_0 .. :try_end_2} :catch_3

    return-object v0

    :catch_3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgc;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgz;->zzb:Lcom/google/android/gms/internal/play_billing/zzhr;

    return-object v0
.end method
