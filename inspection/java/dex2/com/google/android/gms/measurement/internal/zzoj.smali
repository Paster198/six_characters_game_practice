.class public final synthetic Lcom/google/android/gms/measurement/internal/zzoj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzok;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzok;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoj;->zza:Lcom/google/android/gms/measurement/internal/zzok;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzoj;->zza:Lcom/google/android/gms/measurement/internal/zzok;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzok;->zzc:Lcom/google/android/gms/measurement/internal/zzol;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzol;->zza:Lcom/google/android/gms/measurement/internal/zzop;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzok;->zza:J

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzok;->zzb:J

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v7, "Application going to the background"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v6

    .line 5
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzht;->zzn:Lcom/google/android/gms/measurement/internal/zzhn;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzhn;->zza(Z)V

    .line 6
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzop;->zzm(Z)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()Z

    move-result v6

    if-nez v6, :cond_3c

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Lcom/google/android/gms/measurement/internal/zzon;

    const/4 v7, 0x0

    .line 9
    invoke-virtual {v6, v7, v7, v4, v5}, Lcom/google/android/gms/measurement/internal/zzon;->zzd(ZZJ)Z

    .line 10
    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzon;->zzb(J)V

    .line 11
    :cond_3c
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Application backgrounded at: timestamp_millis"

    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zzlw;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzad()Z

    move-result v4

    if-nez v4, :cond_6c

    goto :goto_7b

    .line 34
    :cond_6c
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzm()I

    move-result v2

    const v4, 0x3b3a8

    if-lt v2, v4, :cond_82

    .line 22
    :goto_7b
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzz()V

    .line 24
    :cond_82
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    const/4 v3, 0x0

    .line 25
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzaS:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 26
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzak(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    const-wide/16 v2, 0x3e8

    goto :goto_be

    .line 31
    :cond_ac
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzD:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 34
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)J

    move-result-wide v2

    .line 35
    :goto_be
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v4, "[sgtm] Scheduling batch upload with minimum latency in millis"

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 38
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzs()Lcom/google/android/gms/measurement/internal/zzmd;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzmd;->zzj(J)V

    :cond_d6
    return-void
.end method
