.class final Lcom/google/android/gms/measurement/internal/zzlv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/google/android/gms/measurement/internal/zzlt;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzlw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zza:Lcom/google/android/gms/measurement/internal/zzlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdj;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/zzdj;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlv;->zza(Lcom/google/android/gms/internal/measurement/zzdj;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdj;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/zzdj;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzlv;->zzb(Lcom/google/android/gms/internal/measurement/zzdj;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdj;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/zzdj;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzlv;->zzc(Lcom/google/android/gms/internal/measurement/zzdj;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdj;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/zzdj;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzlv;->zzd(Lcom/google/android/gms/internal/measurement/zzdj;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdj;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/zzdj;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlv;->zze(Lcom/google/android/gms/internal/measurement/zzdj;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzdj;Landroid/os/Bundle;)V
    .registers 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zza:Lcom/google/android/gms/measurement/internal/zzlw;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "onActivityCreated"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzdj;->zzc:Landroid/content/Intent;

    if-eqz v2, :cond_89

    .line 4
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 5
    invoke-virtual {v3}, Landroid/net/Uri;->isHierarchical()Z

    move-result v4

    if-nez v4, :cond_22

    goto :goto_24

    :cond_22
    :goto_22
    move-object v4, v3

    goto :goto_3c

    .line 6
    :cond_24
    :goto_24
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3c

    const-string v5, "com.android.vending.referral_url"

    .line 7
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 9
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_22

    :cond_3c
    :goto_3c
    if-eqz v4, :cond_89

    .line 10
    invoke-virtual {v4}, Landroid/net/Uri;->isHierarchical()Z

    move-result v3

    if-nez v3, :cond_45

    goto :goto_89

    .line 11
    :cond_45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    const-string v0, "android.intent.extra.REFERRER_NAME"

    .line 12
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v2, "https://www.google.com"

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v2, "android-app://com.google.appcrawler"

    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    goto :goto_6a

    .line 22
    :cond_67
    const-string v0, "auto"

    goto :goto_6c

    .line 15
    :cond_6a
    :goto_6a
    const-string v0, "gs"

    :goto_6c
    move-object v5, v0

    const-string v0, "referrer"

    .line 16
    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez p2, :cond_77

    const/4 v0, 0x1

    goto :goto_78

    :cond_77
    const/4 v0, 0x0

    :goto_78
    move v3, v0

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzlu;
    :try_end_7f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7f} :catch_97
    .catchall {:try_start_0 .. :try_end_7f} :catchall_94

    move-object v2, p0

    :try_start_80
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlu;-><init>(Lcom/google/android/gms/measurement/internal/zzlv;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V
    :try_end_86
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_86} :catch_87
    .catchall {:try_start_80 .. :try_end_86} :catchall_af

    goto :goto_aa

    :catch_87
    move-exception v0

    goto :goto_99

    :cond_89
    :goto_89
    move-object v2, p0

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 21
    :goto_8c
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzmo;->zzs(Lcom/google/android/gms/internal/measurement/zzdj;Landroid/os/Bundle;)V

    return-void

    :catchall_94
    move-exception v0

    move-object v2, p0

    goto :goto_b0

    :catch_97
    move-exception v0

    move-object v2, p0

    :goto_99
    :try_start_99
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzlv;->zza:Lcom/google/android/gms/measurement/internal/zzlw;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v3, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_aa
    .catchall {:try_start_99 .. :try_end_aa} :catchall_af

    .line 18
    :goto_aa
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzlv;->zza:Lcom/google/android/gms/measurement/internal/zzlw;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    goto :goto_8c

    :catchall_af
    move-exception v0

    .line 20
    :goto_b0
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzlv;->zza:Lcom/google/android/gms/measurement/internal/zzlw;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v1

    .line 22
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzmo;->zzs(Lcom/google/android/gms/internal/measurement/zzdj;Landroid/os/Bundle;)V

    .line 23
    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzdj;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zza:Lcom/google/android/gms/measurement/internal/zzlw;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzmo;->zzt(Lcom/google/android/gms/internal/measurement/zzdj;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzdj;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zza:Lcom/google/android/gms/measurement/internal/zzlw;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzmo;->zzu(Lcom/google/android/gms/internal/measurement/zzdj;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzoi;

    invoke-direct {v3, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzoi;-><init>(Lcom/google/android/gms/measurement/internal/zzop;J)V

    .line 7
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/measurement/zzdj;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zza:Lcom/google/android/gms/measurement/internal/zzlw;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v2

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzoh;

    invoke-direct {v5, v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoh;-><init>(Lcom/google/android/gms/measurement/internal/zzop;J)V

    .line 5
    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzmo;->zzv(Lcom/google/android/gms/internal/measurement/zzdj;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/measurement/zzdj;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zza:Lcom/google/android/gms/measurement/internal/zzlw;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzmo;->zzw(Lcom/google/android/gms/internal/measurement/zzdj;Landroid/os/Bundle;)V

    return-void
.end method
