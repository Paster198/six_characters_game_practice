.class final Lcom/google/android/gms/measurement/internal/zznb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzr;

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzcy;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzny;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/internal/measurement/zzcy;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznb;->zza:Lcom/google/android/gms/measurement/internal/zzr;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zznb;->zzb:Lcom/google/android/gms/internal/measurement/zzcy;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznb;->zzc:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznb;->zzc:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v4

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzht;->zzh()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v4

    .line 3
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    const-string v5, "Analytics storage consent denied; will not get app instance id"

    .line 6
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zzlw;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzac(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzht;->zze:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    goto :goto_48

    .line 14
    :cond_37
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzi(Lcom/google/android/gms/measurement/internal/zzny;)Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v4

    if-nez v4, :cond_52

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_48} :catch_75
    .catchall {:try_start_3 .. :try_end_48} :catchall_73

    .line 13
    :goto_48
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznb;->zzb:Lcom/google/android/gms/internal/measurement/zzcy;

    .line 14
    :goto_4e
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzZ(Lcom/google/android/gms/internal/measurement/zzcy;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_52
    :try_start_52
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zznb;->zza:Lcom/google/android/gms/measurement/internal/zzr;

    .line 15
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgl;->zzf(Lcom/google/android/gms/measurement/internal/zzr;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6f

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zzlw;

    move-result-object v4

    .line 18
    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzac(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    .line 20
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzht;->zze:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    .line 21
    :cond_6f
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzy(Lcom/google/android/gms/measurement/internal/zzny;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_72} :catch_75
    .catchall {:try_start_52 .. :try_end_72} :catchall_73

    goto :goto_85

    :catchall_73
    move-exception v0

    goto :goto_90

    :catch_75
    move-exception v2

    .line 14
    :try_start_76
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznb;->zzc:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_85
    .catchall {:try_start_76 .. :try_end_85} :catchall_73

    .line 21
    :goto_85
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznb;->zzc:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznb;->zzb:Lcom/google/android/gms/internal/measurement/zzcy;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    goto :goto_4e

    .line 23
    :goto_90
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznb;->zzc:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznb;->zzb:Lcom/google/android/gms/internal/measurement/zzcy;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzZ(Lcom/google/android/gms/internal/measurement/zzcy;Ljava/lang/String;)V

    .line 24
    throw v0
.end method
