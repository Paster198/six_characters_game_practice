.class final Lcom/google/android/gms/measurement/internal/zzna;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzr;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzny;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzna;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzna;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzna;->zzc:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzna;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzna;->zzc:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzht;->zzh()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v3

    .line 3
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "Analytics storage consent denied; will not get app instance id"

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zzlw;

    move-result-object v1

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzlw;->zzac(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zze:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3a} :catch_87
    .catchall {:try_start_3 .. :try_end_3a} :catchall_85

    .line 12
    :try_start_3a
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_a4

    return-void

    :cond_3f
    :try_start_3f
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzi(Lcom/google/android/gms/measurement/internal/zzny;)Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v3

    if-nez v3, :cond_56

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Failed to get app instance id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_52} :catch_87
    .catchall {:try_start_3f .. :try_end_52} :catchall_85

    .line 12
    :try_start_52
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_a4

    goto :goto_3d

    :cond_56
    :try_start_56
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzna;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgl;->zzf(Lcom/google/android/gms/measurement/internal/zzr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_7c

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zzlw;

    move-result-object v4

    .line 19
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzlw;->zzac(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 21
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzht;->zze:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    .line 22
    :cond_7c
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzy(Lcom/google/android/gms/measurement/internal/zzny;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_7f} :catch_87
    .catchall {:try_start_56 .. :try_end_7f} :catchall_85

    :try_start_7f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzna;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    :goto_81
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_a4

    goto :goto_9c

    :catchall_85
    move-exception v1

    goto :goto_9e

    :catch_87
    move-exception v1

    .line 26
    :try_start_88
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzna;->zzc:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Failed to get app instance id"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_99
    .catchall {:try_start_88 .. :try_end_99} :catchall_85

    :try_start_99
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzna;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_81

    .line 26
    :goto_9c
    monitor-exit v0

    return-void

    .line 12
    :goto_9e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzna;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 25
    throw v1

    :catchall_a4
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_99 .. :try_end_a6} :catchall_a4

    throw v1
.end method
