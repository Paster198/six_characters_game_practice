.class final Lcom/google/android/gms/analytics/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/analytics/GoogleAnalytics;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/GoogleAnalytics;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/zze;->zza:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/zze;->zza:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzh(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/zze;->zza:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzi(Landroid/app/Activity;)V

    return-void
.end method
