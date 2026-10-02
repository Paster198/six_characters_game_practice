.class public final Lcom/google/android/gms/analytics/AnalyticsService;
.super Landroid/app/Service;
.source "com.google.android.gms:play-services-analytics@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzfm;


# instance fields
.field private zza:Lcom/google/android/gms/internal/gtm/zzfn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzfn<",
            "Lcom/google/android/gms/analytics/AnalyticsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private final zzb()Lcom/google/android/gms/internal/gtm/zzfn;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/gtm/zzfn<",
            "Lcom/google/android/gms/analytics/AnalyticsService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->zza:Lcom/google/android/gms/internal/gtm/zzfn;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfn;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzfn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->zza:Lcom/google/android/gms/internal/gtm/zzfn;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->zza:Lcom/google/android/gms/internal/gtm/zzfn;

    return-object v0
.end method


# virtual methods
.method public callServiceStopSelfResult(I)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/AnalyticsService;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzb()Lcom/google/android/gms/internal/gtm/zzfn;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzb()Lcom/google/android/gms/internal/gtm/zzfn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfn;->zze()V

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzb()Lcom/google/android/gms/internal/gtm/zzfn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfn;->zzf()V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzb()Lcom/google/android/gms/internal/gtm/zzfn;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzfn;->zza(Landroid/content/Intent;II)I

    const/4 p1, 0x2

    return p1
.end method

.method public final zza(Landroid/app/job/JobParameters;Z)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 1
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
