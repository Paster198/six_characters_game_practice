.class final Lcom/google/android/gms/measurement/internal/zzns;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzgl;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zznx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zznx;Lcom/google/android/gms/measurement/internal/zzgl;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzns;->zza:Lcom/google/android/gms/measurement/internal/zzgl;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzns;->zzb:Lcom/google/android/gms/measurement/internal/zznx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzns;->zzb:Lcom/google/android/gms/measurement/internal/zznx;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zznx;->zza(Lcom/google/android/gms/measurement/internal/zznx;Z)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zznx;->zza:Lcom/google/android/gms/measurement/internal/zzny;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzaa()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Connected to remote service"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzns;->zza:Lcom/google/android/gms/measurement/internal/zzgl;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzW(Lcom/google/android/gms/measurement/internal/zzgl;)V

    .line 6
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_48

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzns;->zzb:Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznx;->zza:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzbo:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzm(Lcom/google/android/gms/measurement/internal/zzny;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzm(Lcom/google/android/gms/measurement/internal/zzny;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 11
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/zzny;->zzu(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/ScheduledExecutorService;)V

    :cond_47
    return-void

    :catchall_48
    move-exception v1

    .line 6
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method
