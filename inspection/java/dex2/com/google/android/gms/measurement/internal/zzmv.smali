.class final Lcom/google/android/gms/measurement/internal/zzmv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzr;

.field final synthetic zzc:Z

.field final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzny;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;Z)V
    .registers 5

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzd:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzd:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzi(Lcom/google/android/gms/measurement/internal/zzny;)Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v2

    if-nez v2, :cond_1f

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Failed to get all user properties; not connected to service"

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_38
    .catchall {:try_start_3 .. :try_end_1a} :catchall_36

    .line 4
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_55

    return-void

    :cond_1f
    :try_start_1f
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzc:Z

    .line 6
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgl;->zzh(Lcom/google/android/gms/measurement/internal/zzr;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzy(Lcom/google/android/gms/measurement/internal/zzny;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_30} :catch_38
    .catchall {:try_start_1f .. :try_end_30} :catchall_36

    :try_start_30
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    :goto_32
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_55

    goto :goto_4d

    :catchall_36
    move-exception v1

    goto :goto_4f

    :catch_38
    move-exception v1

    .line 12
    :try_start_39
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zzd:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Failed to get all user properties; remote exception"

    .line 10
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_36

    :try_start_4a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_32

    .line 12
    :goto_4d
    monitor-exit v0

    return-void

    .line 4
    :goto_4f
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmv;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 11
    throw v1

    :catchall_55
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_55

    throw v1
.end method
