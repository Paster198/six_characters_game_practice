.class public final Lcom/google/android/gms/tagmanager/zzfs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# instance fields
.field private zza:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final zzb:Landroid/content/Context;

.field private zzc:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfs;->zzb:Landroid/content/Context;

    return-void
.end method

.method private final declared-synchronized zzb(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfs;->zza:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfs;->zzb:Landroid/content/Context;

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfs;->zza:Lcom/google/android/gms/analytics/GoogleAnalytics;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfr;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzfr;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLogger(Lcom/google/android/gms/analytics/Logger;)V

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfs;->zza:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const-string v0, "_GTM_DEFAULT_TRACKER_"

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfs;->zzc:Lcom/google/android/gms/analytics/Tracker;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_23

    monitor-exit p0

    return-void

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .registers 2

    const-string p1, "_GTM_DEFAULT_TRACKER_"

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfs;->zzb(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfs;->zzc:Lcom/google/android/gms/analytics/Tracker;

    return-object p1
.end method
