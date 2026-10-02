.class final Lcom/google/android/gms/common/internal/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/zzr;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/zzq;

.field private final zzb:Ljava/util/Map;

.field private zzc:I

.field private zzd:Z

.field private zze:Landroid/os/IBinder;

.field private final zzf:Lcom/google/android/gms/common/internal/zzn;

.field private zzg:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/internal/zzn;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzn;

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzo;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzf()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzh()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzn;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zze:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 3
    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_1f

    :cond_2f
    iput v3, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    .line 4
    monitor-exit v1

    return-void

    :catchall_33
    move-exception p1

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzf()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzh()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzn;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zze:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 3
    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_20

    :cond_30
    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    .line 4
    monitor-exit v1

    return-void

    :catchall_35
    move-exception p1

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzn;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzh()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzi()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzg()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    return-void
.end method

.method public final zzb(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzc(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    return v0
.end method

.method public final zze()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    return v0
.end method

.method public final zzf(Landroid/content/ServiceConnection;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzg()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final zzh()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zze:Landroid/os/IBinder;

    return-object v0
.end method

.method public final zzi()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzg:Landroid/content/ComponentName;

    return-object v0
.end method

.method final synthetic zzj(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzg()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzn;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzah;->zza(Landroid/content/Context;Lcom/google/android/gms/common/internal/zzn;)Landroid/content/Intent;

    move-result-object v5
    :try_end_c
    .catch Lcom/google/android/gms/common/internal/zzaf; {:try_start_0 .. :try_end_c} :catch_68

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/zzd;->zza()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzi()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzg()Landroid/content/Context;

    move-result-object v3

    iget-object v9, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Lcom/google/android/gms/common/internal/zzn;
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_61

    const/16 v7, 0x1081

    move-object v6, p0

    move-object v4, p1

    move-object v8, p2

    .line 3
    :try_start_24
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    move-result p1

    iput-boolean p1, v6, Lcom/google/android/gms/common/internal/zzo;->zzd:Z

    if-eqz p1, :cond_46

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzh()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzh()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzj()J

    move-result-wide v2

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_5f

    .line 6
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-object p1

    :cond_46
    const/4 p1, 0x2

    :try_start_47
    iput p1, v6, Lcom/google/android/gms/common/internal/zzo;->zzc:I
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_5f

    :try_start_49
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzi()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzg()Landroid/content/Context;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_54} :catch_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_5f

    :catch_54
    :try_start_54
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_5f

    .line 6
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_6d

    :catchall_5f
    move-exception v0

    goto :goto_63

    :catchall_61
    move-exception v0

    move-object v6, p0

    :goto_63
    move-object p1, v0

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 8
    throw p1

    :catch_68
    move-exception v0

    move-object v6, p0

    move-object p1, v0

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzaf;->zza:Lcom/google/android/gms/common/ConnectionResult;

    :goto_6d
    return-object p1
.end method
