.class final Lcom/google/android/gms/measurement/internal/zznq;
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

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznq;->zza:Lcom/google/android/gms/measurement/internal/zzgl;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznq;->zzb:Lcom/google/android/gms/measurement/internal/zznx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznq;->zzb:Lcom/google/android/gms/measurement/internal/zznx;

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
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Connected to service"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznq;->zza:Lcom/google/android/gms/measurement/internal/zzgl;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzW(Lcom/google/android/gms/measurement/internal/zzgl;)V

    .line 6
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw v1
.end method
