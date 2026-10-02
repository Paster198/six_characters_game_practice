.class final Lcom/google/android/gms/tagmanager/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/ContainerHolder;


# instance fields
.field private final zza:Landroid/os/Looper;

.field private zzb:Lcom/google/android/gms/tagmanager/Container;

.field private zzc:Lcom/google/android/gms/tagmanager/Container;

.field private final zzd:Lcom/google/android/gms/common/api/Status;

.field private zze:Lcom/google/android/gms/tagmanager/zzz;

.field private zzf:Lcom/google/android/gms/tagmanager/zzy;

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/tagmanager/TagManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzd:Lcom/google/android/gms/common/api/Status;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zza:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzy;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzh:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez p2, :cond_b

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    :cond_b
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzaa;->zza:Landroid/os/Looper;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzb:Lcom/google/android/gms/tagmanager/Container;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzf:Lcom/google/android/gms/tagmanager/zzy;

    .line 2
    sget-object p2, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzd:Lcom/google/android/gms/common/api/Status;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tagmanager/TagManager;->zza(Lcom/google/android/gms/tagmanager/zzaa;)I

    return-void
.end method

.method private final zzf()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zze:Lcom/google/android/gms/tagmanager/zzz;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzc:Lcom/google/android/gms/tagmanager/Container;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/Container;->zzc()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/tagmanager/zzz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzz;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    return-void
.end method


# virtual methods
.method public final declared-synchronized getContainer()Lcom/google/android/gms/tagmanager/Container;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzg:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-string v0, "ContainerHolder is released."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_19

    monitor-exit p0

    return-object v1

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzc:Lcom/google/android/gms/tagmanager/Container;

    if-eqz v0, :cond_15

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzb:Lcom/google/android/gms/tagmanager/Container;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzc:Lcom/google/android/gms/tagmanager/Container;

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzb:Lcom/google/android/gms/tagmanager/Container;
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzd:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final declared-synchronized refresh()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzg:Z

    if-eqz v0, :cond_c

    const-string v0, "Refreshing a released ContainerHolder."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzf:Lcom/google/android/gms/tagmanager/zzy;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzy;->zzb()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public final declared-synchronized release()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzg:Z

    if-eqz v0, :cond_c

    const-string v0, "Releasing a released ContainerHolder."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_24

    monitor-exit p0

    return-void

    :cond_c
    const/4 v0, 0x1

    :try_start_d
    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzg:Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzh:Lcom/google/android/gms/tagmanager/TagManager;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tagmanager/TagManager;->zzc(Lcom/google/android/gms/tagmanager/zzaa;)Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzb:Lcom/google/android/gms/tagmanager/Container;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->zze()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzb:Lcom/google/android/gms/tagmanager/Container;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzc:Lcom/google/android/gms/tagmanager/Container;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzf:Lcom/google/android/gms/tagmanager/zzy;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zze:Lcom/google/android/gms/tagmanager/zzz;
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public final declared-synchronized setContainerAvailableListener(Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzg:Z

    if-eqz v0, :cond_c

    const-string p1, "ContainerHolder is released."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_27

    monitor-exit p0

    return-void

    :cond_c
    if-nez p1, :cond_13

    const/4 p1, 0x0

    :try_start_f
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zze:Lcom/google/android/gms/tagmanager/zzz;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_27

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    new-instance v0, Lcom/google/android/gms/tagmanager/zzz;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zza:Landroid/os/Looper;

    .line 2
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/tagmanager/zzz;-><init>(Lcom/google/android/gms/tagmanager/zzaa;Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zze:Lcom/google/android/gms/tagmanager/zzz;

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzc:Lcom/google/android/gms/tagmanager/Container;

    if-eqz p1, :cond_25

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzaa;->zzf()V
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_27

    monitor-exit p0

    return-void

    :cond_25
    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method final zza()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzg:Z

    if-eqz v0, :cond_c

    const-string v0, "getContainerId called on a released ContainerHolder."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzb:Lcom/google/android/gms/tagmanager/Container;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->getContainerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzb()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzg:Z

    if-eqz v0, :cond_c

    const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzf:Lcom/google/android/gms/tagmanager/zzy;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzy;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/tagmanager/Container;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzg:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzc:Lcom/google/android/gms/tagmanager/Container;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzaa;->zzf()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public final declared-synchronized zzd(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzg:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzb:Lcom/google/android/gms/tagmanager/Container;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/Container;->zzd(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method final zze(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzg:Z

    if-eqz v0, :cond_a

    const-string p1, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzf:Lcom/google/android/gms/tagmanager/zzy;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzy;->zzc(Ljava/lang/String;)V

    return-void
.end method
