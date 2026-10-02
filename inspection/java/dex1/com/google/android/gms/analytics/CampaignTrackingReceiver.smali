.class public Lcom/google/android/gms/analytics/CampaignTrackingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field static zza:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static zzb(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zza:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_c
    const-string v0, "com.google.android.gms.analytics.CampaignTrackingReceiver"

    const/4 v1, 0x1

    .line 3
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzfs;->zzi(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zza:Ljava/lang/Boolean;

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzbv;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzm()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v1

    if-nez p2, :cond_10

    const-string p1, "CampaignTrackingReceiver received null intent"

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    return-void

    :cond_10
    const-string v2, "referrer"

    .line 4
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v3, "CampaignTrackingReceiver received"

    .line 6
    invoke-virtual {v1, v3, p2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "com.android.vending.INSTALL_REFERRER"

    .line 7
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_69

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2e

    goto :goto_69

    .line 9
    :cond_2e
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zza(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzj()Lcom/google/android/gms/internal/gtm/zzct;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzj()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzf()I

    move-result p1

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, p1, :cond_42

    goto :goto_58

    .line 13
    :cond_42
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 15
    const-string v4, "Campaign data exceed the maximum supported size and will be clipped. size, limit"

    invoke-virtual {v1, v4, p2, v3}, Lcom/google/android/gms/internal/gtm/zzbr;->zzT(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 16
    invoke-virtual {v2, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 17
    :goto_58
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzf()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/analytics/zzc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/zzc;-><init>(Lcom/google/android/gms/analytics/CampaignTrackingReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 19
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbq;->zzf(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    .line 7
    :cond_69
    :goto_69
    const-string p1, "CampaignTrackingReceiver received unexpected intent without referrer extra"

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    return-void
.end method

.method protected zza(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
