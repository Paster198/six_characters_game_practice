.class public final Lcom/google/android/gms/tagmanager/InstallReferrerReceiver;
.super Lcom/google/android/gms/analytics/CampaignTrackingReceiver;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/tagmanager/zzcx;->zzd(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/tagmanager/zzcx;->zze(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
