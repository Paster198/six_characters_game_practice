.class final Lcom/google/android/gms/measurement/internal/zzmu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzr;

.field final synthetic zzd:Z

.field final synthetic zze:Lcom/google/android/gms/internal/measurement/zzcy;

.field final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzny;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;ZLcom/google/android/gms/internal/measurement/zzcy;)V
    .registers 7

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zzc:Lcom/google/android/gms/measurement/internal/zzr;

    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zzd:Z

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zze:Lcom/google/android/gms/internal/measurement/zzcy;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zzf:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zzf:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzi(Lcom/google/android/gms/measurement/internal/zzny;)Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v2

    if-nez v2, :cond_2a

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Failed to get user properties; not connected to service"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_8c
    .catchall {:try_start_5 .. :try_end_20} :catchall_8a

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zze:Lcom/google/android/gms/internal/measurement/zzcy;

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzV(Lcom/google/android/gms/internal/measurement/zzcy;Landroid/os/Bundle;)V

    return-void

    :cond_2a
    :try_start_2a
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zzc:Lcom/google/android/gms/measurement/internal/zzr;

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zzb:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zzd:Z

    .line 8
    invoke-interface {v2, v4, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzgl;->zzk(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzr;)Ljava/util/List;

    move-result-object v2

    .line 9
    sget v3, Lcom/google/android/gms/measurement/internal/zzqf;->zza:I

    new-instance v3, Landroid/os/Bundle;

    .line 10
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-nez v2, :cond_43

    goto :goto_79

    .line 11
    :cond_43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_47
    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzqb;

    .line 12
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzqb;->zze:Ljava/lang/String;

    if-eqz v5, :cond_5d

    .line 13
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 14
    :cond_5d
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzqb;->zzd:Ljava/lang/Long;

    if-eqz v5, :cond_6b

    .line 15
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_47

    .line 16
    :cond_6b
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzqb;->zzg:Ljava/lang/Double;

    if-eqz v5, :cond_47

    .line 17
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_78} :catch_8c
    .catchall {:try_start_2a .. :try_end_78} :catchall_8a

    goto :goto_47

    .line 18
    :cond_79
    :goto_79
    :try_start_79
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzy(Lcom/google/android/gms/measurement/internal/zzny;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_7c} :catch_88
    .catchall {:try_start_79 .. :try_end_7c} :catchall_b0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zze:Lcom/google/android/gms/internal/measurement/zzcy;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzqf;->zzV(Lcom/google/android/gms/internal/measurement/zzcy;Landroid/os/Bundle;)V

    return-void

    :catch_88
    move-exception v0

    goto :goto_8f

    :catchall_8a
    move-exception v1

    goto :goto_b3

    :catch_8c
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    .line 17
    :goto_8f
    :try_start_8f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zzf:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Failed to get user properties; remote exception"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zza:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a2
    .catchall {:try_start_8f .. :try_end_a2} :catchall_b0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zzf:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zze:Lcom/google/android/gms/internal/measurement/zzcy;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzqf;->zzV(Lcom/google/android/gms/internal/measurement/zzcy;Landroid/os/Bundle;)V

    return-void

    :catchall_b0
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_b3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zzf:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zze:Lcom/google/android/gms/internal/measurement/zzcy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzV(Lcom/google/android/gms/internal/measurement/zzcy;Landroid/os/Bundle;)V

    .line 22
    throw v1
.end method
