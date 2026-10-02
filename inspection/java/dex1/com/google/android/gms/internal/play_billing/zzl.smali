.class final Lcom/google/android/gms/internal/play_billing/zzl;
.super Lcom/google/android/gms/internal/play_billing/zzd;
.source "com.android.billingclient:billing@@9.1.0"


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzd;-><init>(Lcom/google/android/gms/internal/play_billing/zzn;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/play_billing/zzm;Lcom/google/android/gms/internal/play_billing/zzm;)V
    .registers 3

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/zzm;->zzc:Lcom/google/android/gms/internal/play_billing/zzm;

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/play_billing/zzm;Ljava/lang/Thread;)V
    .registers 3

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/zzm;->zzb:Ljava/lang/Thread;

    return-void
.end method

.method final zzc(Lcom/google/android/gms/internal/play_billing/zzo;Lcom/google/android/gms/internal/play_billing/zzh;Lcom/google/android/gms/internal/play_billing/zzh;)Z
    .registers 5

    .line 1
    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzo;->zzd:Lcom/google/android/gms/internal/play_billing/zzh;

    if-ne v0, p2, :cond_a

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzo;->zzd:Lcom/google/android/gms/internal/play_billing/zzh;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_a
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_d
    move-exception p2

    .line 3
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p2
.end method

.method final zzd(Lcom/google/android/gms/internal/play_billing/zzo;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    monitor-enter p1

    .line 2
    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    if-ne v0, p2, :cond_a

    .line 3
    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    .line 4
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_a
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_d
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p2
.end method

.method final zze(Lcom/google/android/gms/internal/play_billing/zzo;Lcom/google/android/gms/internal/play_billing/zzm;Lcom/google/android/gms/internal/play_billing/zzm;)Z
    .registers 5

    .line 1
    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzo;->zze:Lcom/google/android/gms/internal/play_billing/zzm;

    if-ne v0, p2, :cond_a

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzo;->zze:Lcom/google/android/gms/internal/play_billing/zzm;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_a
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_d
    move-exception p2

    .line 3
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p2
.end method
