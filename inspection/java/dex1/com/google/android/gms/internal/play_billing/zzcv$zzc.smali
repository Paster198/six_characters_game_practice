.class final Lcom/google/android/gms/internal/play_billing/zzcv$zzc;
.super Lcom/google/android/gms/internal/play_billing/zzcv$zza;
.source "com.android.billingclient:billing@@9.1.0"


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcz;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzcv$zza;-><init>(Lcom/google/android/gms/internal/play_billing/zzcz;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcu$zzd;)Lcom/google/android/gms/internal/play_billing/zzcu$zzd;
    .registers 4

    .line 1
    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzcv;->listenersField:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    if-eq v0, p2, :cond_7

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/zzcv;->listenersField:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    :cond_7
    monitor-exit p1

    return-object v0

    :catchall_9
    move-exception p2

    .line 2
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p2
.end method

.method final zzb(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcv$zze;)Lcom/google/android/gms/internal/play_billing/zzcv$zze;
    .registers 4

    .line 1
    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzcv;->waitersField:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    if-eq v0, p2, :cond_7

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/zzcv;->waitersField:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    :cond_7
    monitor-exit p1

    return-object v0

    :catchall_9
    move-exception p2

    .line 2
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p2
.end method

.method final zzc(Lcom/google/android/gms/internal/play_billing/zzcv$zze;Lcom/google/android/gms/internal/play_billing/zzcv$zze;)V
    .registers 3

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->next:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/play_billing/zzcv$zze;Ljava/lang/Thread;)V
    .registers 3

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->thread:Ljava/lang/Thread;

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcu$zzd;Lcom/google/android/gms/internal/play_billing/zzcu$zzd;)Z
    .registers 5

    .line 1
    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzcv;->listenersField:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    if-ne v0, p2, :cond_a

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzcv;->listenersField:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

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

.method final zzf(Lcom/google/android/gms/internal/play_billing/zzcv;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    monitor-enter p1

    .line 2
    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    if-ne v0, p2, :cond_a

    .line 3
    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

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

.method final zzg(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcv$zze;Lcom/google/android/gms/internal/play_billing/zzcv$zze;)Z
    .registers 5

    .line 1
    monitor-enter p1

    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzcv;->waitersField:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    if-ne v0, p2, :cond_a

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzcv;->waitersField:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

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
