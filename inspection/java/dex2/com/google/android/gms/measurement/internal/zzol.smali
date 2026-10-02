.class final Lcom/google/android/gms/measurement/internal/zzol;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzop;

.field private zzb:Lcom/google/android/gms/measurement/internal/zzok;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzop;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzol;->zza:Lcom/google/android/gms/measurement/internal/zzop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(J)V
    .registers 10

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzol;->zza:Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Lcom/google/android/gms/measurement/internal/zzol;JJ)V

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzol;->zzb:Lcom/google/android/gms/measurement/internal/zzok;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzop;->zzh(Lcom/google/android/gms/measurement/internal/zzop;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, v1, Lcom/google/android/gms/measurement/internal/zzol;->zzb:Lcom/google/android/gms/measurement/internal/zzok;

    const-wide/16 v2, 0x7d0

    .line 3
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final zzb()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzol;->zza:Lcom/google/android/gms/measurement/internal/zzop;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzol;->zzb:Lcom/google/android/gms/measurement/internal/zzok;

    if-eqz v1, :cond_10

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzop;->zzh(Lcom/google/android/gms/measurement/internal/zzop;)Landroid/os/Handler;

    move-result-object v2

    .line 2
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_10
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 4
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzht;->zzn:Lcom/google/android/gms/measurement/internal/zzhn;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhn;->zza(Z)V

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzop;->zzm(Z)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    const/4 v3, 0x0

    .line 7
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzaZ:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 8
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zzlw;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzlw;->zzap()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Retrying trigger URI registration in foreground"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zzlw;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlw;->zzU()V

    :cond_4c
    return-void
.end method
