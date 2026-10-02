.class final Lcom/google/android/gms/measurement/internal/zzno;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzr;

.field final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzcy;

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzny;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/internal/measurement/zzcy;)V
    .registers 6

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzno;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzno;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzno;->zzc:Lcom/google/android/gms/measurement/internal/zzr;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzno;->zzd:Lcom/google/android/gms/internal/measurement/zzcy;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzno;->zze:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzno;->zze:Lcom/google/android/gms/measurement/internal/zzny;

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

    const-string v3, "Failed to get conditional properties; not connected to service"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzno;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzno;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_41
    .catchall {:try_start_5 .. :try_end_20} :catchall_3f

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzno;->zzd:Lcom/google/android/gms/internal/measurement/zzcy;

    .line 6
    :goto_26
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzU(Lcom/google/android/gms/internal/measurement/zzcy;Ljava/util/ArrayList;)V

    return-void

    :cond_2a
    :try_start_2a
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzno;->zzc:Lcom/google/android/gms/measurement/internal/zzr;

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzno;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzno;->zzb:Ljava/lang/String;

    .line 8
    invoke-interface {v2, v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzgl;->zzi(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzK(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzy(Lcom/google/android/gms/measurement/internal/zzny;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3e} :catch_41
    .catchall {:try_start_2a .. :try_end_3e} :catchall_3f

    goto :goto_57

    :catchall_3f
    move-exception v1

    goto :goto_62

    :catch_41
    move-exception v1

    .line 6
    :try_start_42
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzno;->zze:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Failed to get conditional properties; remote exception"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzno;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzno;->zzb:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_42 .. :try_end_57} :catchall_3f

    .line 10
    :goto_57
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzno;->zze:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzno;->zzd:Lcom/google/android/gms/internal/measurement/zzcy;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    goto :goto_26

    .line 13
    :goto_62
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzno;->zze:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzno;->zzd:Lcom/google/android/gms/internal/measurement/zzcy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzU(Lcom/google/android/gms/internal/measurement/zzcy;Ljava/util/ArrayList;)V

    .line 14
    throw v1
.end method
