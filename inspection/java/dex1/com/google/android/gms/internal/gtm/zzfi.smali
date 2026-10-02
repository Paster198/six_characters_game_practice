.class public final Lcom/google/android/gms/internal/gtm/zzfi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field static final zza:Ljava/lang/Object;

.field static zzb:Lcom/google/android/gms/stats/WakeLock;

.field static zzc:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzfi;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfi;->zzc:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_c
    const-string v0, "com.google.android.gms.analytics.AnalyticsReceiver"

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzfs;->zzi(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzfi;->zzc:Ljava/lang/Boolean;

    return p0
.end method

.method public static final zzb(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzm()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v1

    if-nez p1, :cond_10

    const-string p0, "AnalyticsReceiver called with null intent"

    .line 3
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_10
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzj()Lcom/google/android/gms/internal/gtm/zzct;

    const-string v0, "Local AnalyticsReceiver got"

    .line 6
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzfn;->zzh(Landroid/content/Context;)Z

    move-result p1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    .line 9
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    .line 10
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzfi;->zza:Ljava/lang/Object;

    monitor-enter v2

    .line 12
    :try_start_41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-nez p1, :cond_48

    .line 13
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_69

    return-void

    :cond_48
    :try_start_48
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzfi;->zzb:Lcom/google/android/gms/stats/WakeLock;

    if-nez p1, :cond_5a

    .line 14
    new-instance p1, Lcom/google/android/gms/stats/WakeLock;

    const-string v0, "Analytics WakeLock"

    const/4 v3, 0x1

    invoke-direct {p1, p0, v3, v0}, Lcom/google/android/gms/stats/WakeLock;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object p1, Lcom/google/android/gms/internal/gtm/zzfi;->zzb:Lcom/google/android/gms/stats/WakeLock;

    const/4 p0, 0x0

    .line 15
    invoke-virtual {p1, p0}, Lcom/google/android/gms/stats/WakeLock;->setReferenceCounted(Z)V

    :cond_5a
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzfi;->zzb:Lcom/google/android/gms/stats/WakeLock;

    const-wide/16 v3, 0x3e8

    .line 16
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/stats/WakeLock;->acquire(J)V
    :try_end_61
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_61} :catch_62
    .catchall {:try_start_48 .. :try_end_61} :catchall_69

    goto :goto_67

    .line 18
    :catch_62
    :try_start_62
    const-string p0, "Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions."

    .line 17
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    .line 18
    :goto_67
    monitor-exit v2

    goto :goto_6c

    :catchall_69
    move-exception p0

    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_69

    throw p0

    :cond_6c
    :goto_6c
    return-void
.end method
