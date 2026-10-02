.class final Lcom/google/android/gms/measurement/internal/zzik;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzil;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/util/concurrent/BlockingQueue;

.field private zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzil;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzik;->zza:Lcom/google/android/gms/measurement/internal/zzil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzik;->zzd:Z

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzik;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzik;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzik;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzik;->zza:Lcom/google/android/gms/measurement/internal/zzil;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzil;->zzd(Lcom/google/android/gms/measurement/internal/zzil;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzik;->zzd:Z

    if-nez v2, :cond_40

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzil;->zzi(Lcom/google/android/gms/measurement/internal/zzil;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzil;->zzd(Lcom/google/android/gms/measurement/internal/zzil;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzil;->zzb(Lcom/google/android/gms/measurement/internal/zzil;)Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v2

    const/4 v3, 0x0

    if-ne p0, v2, :cond_24

    .line 6
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzil;->zzm(Lcom/google/android/gms/measurement/internal/zzil;Lcom/google/android/gms/measurement/internal/zzik;)V

    goto :goto_3d

    .line 7
    :cond_24
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzil;->zza(Lcom/google/android/gms/measurement/internal/zzil;)Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v2

    if-ne p0, v2, :cond_2e

    .line 5
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzil;->zzl(Lcom/google/android/gms/measurement/internal/zzil;Lcom/google/android/gms/measurement/internal/zzik;)V

    goto :goto_3d

    :cond_2e
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :goto_3d
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzik;->zzd:Z

    .line 7
    :cond_40
    monitor-exit v1

    return-void

    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw v0
.end method

.method private final zzc(Ljava/lang/InterruptedException;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzik;->zza:Lcom/google/android/gms/measurement/internal/zzil;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzik;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 1
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzik;->zza:Lcom/google/android/gms/measurement/internal/zzil;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzil;->zzi(Lcom/google/android/gms/measurement/internal/zzil;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_d} :catch_f

    move v0, v1

    goto :goto_1

    :catch_f
    move-exception v1

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzik;->zzc(Ljava/lang/InterruptedException;)V

    goto :goto_1

    .line 3
    :cond_14
    :try_start_14
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    :goto_1c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzik;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 4
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzij;

    if-eqz v3, :cond_35

    iget-boolean v2, v3, Lcom/google/android/gms/measurement/internal/zzij;->zza:Z

    if-eq v1, v2, :cond_2d

    const/16 v2, 0xa

    goto :goto_2e

    :cond_2d
    move v2, v0

    .line 5
    :goto_2e
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzij;->run()V

    goto :goto_1c

    :cond_35
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzik;->zzb:Ljava/lang/Object;

    .line 7
    monitor-enter v3
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_6d

    .line 8
    :try_start_38
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4d

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzik;->zza:Lcom/google/android/gms/measurement/internal/zzil;

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzil;->zzs(Lcom/google/android/gms/measurement/internal/zzil;)Z
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_6a

    const-wide/16 v4, 0x7530

    .line 10
    :try_start_45
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_48} :catch_49
    .catchall {:try_start_45 .. :try_end_48} :catchall_6a

    goto :goto_4d

    :catch_49
    move-exception v2

    .line 11
    :try_start_4a
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzik;->zzc(Ljava/lang/InterruptedException;)V

    .line 12
    :cond_4d
    :goto_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_6a

    :try_start_4e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzik;->zza:Lcom/google/android/gms/measurement/internal/zzil;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzil;->zzd(Lcom/google/android/gms/measurement/internal/zzil;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_6d

    :try_start_55
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzik;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 13
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_65

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzik;->zzb()V

    .line 16
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_67

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzik;->zzb()V

    return-void

    .line 14
    :cond_65
    :try_start_65
    monitor-exit v2

    goto :goto_1c

    :catchall_67
    move-exception v0

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_67

    :try_start_69
    throw v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6d

    :catchall_6a
    move-exception v0

    .line 12
    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception v0

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzik;->zzb()V

    .line 18
    throw v0
.end method

.method public final zza()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzik;->zzb:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
