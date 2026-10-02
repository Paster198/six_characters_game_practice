.class final Lcom/google/android/gms/measurement/internal/zznp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzr;

.field final synthetic zze:Z

.field final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzny;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;Z)V
    .registers 8

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zznp;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zznp;->zzc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zznp;->zzd:Lcom/google/android/gms/measurement/internal/zzr;

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zznp;->zze:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznp;->zzf:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznp;->zzf:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzi(Lcom/google/android/gms/measurement/internal/zzny;)Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v3

    if-nez v3, :cond_2b

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "(legacy) Failed to get user properties; not connected to service"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zznp;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zznp;->zzc:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_26} :catch_5c
    .catchall {:try_start_4 .. :try_end_26} :catchall_5a

    .line 8
    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_84

    return-void

    .line 1
    :cond_2b
    :try_start_2b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zznp;->zzd:Lcom/google/android/gms/measurement/internal/zzr;

    .line 4
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zznp;->zzb:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zznp;->zzc:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/zznp;->zze:Z

    .line 5
    invoke-interface {v3, v5, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzgl;->zzk(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzr;)Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_51

    .line 18
    :cond_44
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zznp;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zznp;->zzc:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zznp;->zze:Z

    .line 2
    invoke-interface {v3, v1, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgl;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 3
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    :goto_51
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzy(Lcom/google/android/gms/measurement/internal/zzny;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_54} :catch_5c
    .catchall {:try_start_2b .. :try_end_54} :catchall_5a

    :try_start_54
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    :goto_56
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_84

    goto :goto_7c

    :catchall_5a
    move-exception v1

    goto :goto_7e

    :catch_5c
    move-exception v2

    .line 3
    :try_start_5d
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznp;->zzf:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "(legacy) Failed to get user properties; remote exception"

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zznp;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_79
    .catchall {:try_start_5d .. :try_end_79} :catchall_5a

    :try_start_79
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_56

    .line 18
    :goto_7c
    monitor-exit v0

    return-void

    .line 8
    :goto_7e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznp;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 17
    throw v1

    :catchall_84
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_79 .. :try_end_86} :catchall_84

    throw v1
.end method
