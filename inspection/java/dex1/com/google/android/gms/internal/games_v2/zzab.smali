.class public abstract Lcom/google/android/gms/internal/games_v2/zzab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private final zza:Landroid/os/Handler;

.field final zzb:Ljava/lang/Object;

.field private zzc:Z

.field private final zzd:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/os/Looper;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzab;->zzb:Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/games_v2/zzfy;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzfy;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzab;->zza:Landroid/os/Handler;

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzab;->zzd:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected abstract zza(Ljava/lang/String;I)V
.end method

.method public final zzb(Ljava/lang/String;I)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzab;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/games_v2/zzab;->zzc:Z

    if-nez v1, :cond_16

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/games_v2/zzab;->zzc:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzab;->zza:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzaa;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/games_v2/zzaa;-><init>(Lcom/google/android/gms/internal/games_v2/zzab;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzab;->zzd:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v2, :cond_28

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_28
    invoke-virtual {v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 6
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public final zzc()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzab;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzab;->zzd:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/internal/games_v2/zzab;->zza(Ljava/lang/String;I)V

    goto :goto_d

    .line 3
    :cond_2d
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method final synthetic zzd()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzab;->zzb:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/games_v2/zzab;->zzc:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzab;->zzc()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method
