.class public final Lcom/google/android/gms/analytics/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-analytics@@17.0.1"


# instance fields
.field private zza:Lcom/google/android/gms/internal/gtm/zzfi;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zza:Lcom/google/android/gms/internal/gtm/zzfi;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzfi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zza:Lcom/google/android/gms/internal/gtm/zzfi;

    .line 1
    :cond_b
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zzfi;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
