.class final Lcom/google/android/gms/measurement/internal/zznh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzbh;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzcy;

.field final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzny;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcy;)V
    .registers 5

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznh;->zza:Lcom/google/android/gms/measurement/internal/zzbh;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:Lcom/google/android/gms/internal/measurement/zzcy;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzi(Lcom/google/android/gms/measurement/internal/zzny;)Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v2

    if-nez v2, :cond_22

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Discarding data. Failed to send event to service to bundle"

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_30
    .catchall {:try_start_1 .. :try_end_18} :catchall_2e

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:Lcom/google/android/gms/internal/measurement/zzcy;

    .line 5
    :goto_1e
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzW(Lcom/google/android/gms/internal/measurement/zzcy;[B)V

    return-void

    :cond_22
    :try_start_22
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznh;->zza:Lcom/google/android/gms/measurement/internal/zzbh;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzb:Ljava/lang/String;

    .line 6
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgl;->zzD(Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)[B

    move-result-object v0

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzy(Lcom/google/android/gms/measurement/internal/zzny;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2d} :catch_30
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2e

    goto :goto_42

    :catchall_2e
    move-exception v1

    goto :goto_4d

    :catch_30
    move-exception v1

    .line 5
    :try_start_31
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Failed to send event to the service to bundle"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_2e

    .line 7
    :goto_42
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:Lcom/google/android/gms/internal/measurement/zzcy;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    goto :goto_1e

    .line 9
    :goto_4d
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzd:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznh;->zzc:Lcom/google/android/gms/internal/measurement/zzcy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzW(Lcom/google/android/gms/internal/measurement/zzcy;[B)V

    .line 10
    throw v1
.end method
