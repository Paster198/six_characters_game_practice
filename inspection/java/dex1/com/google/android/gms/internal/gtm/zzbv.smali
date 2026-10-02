.class public final Lcom/google/android/gms/internal/gtm/zzbv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field private static volatile zza:Lcom/google/android/gms/internal/gtm/zzbv;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/common/util/Clock;

.field private final zze:Lcom/google/android/gms/internal/gtm/zzct;

.field private final zzf:Lcom/google/android/gms/internal/gtm/zzfb;

.field private final zzg:Lcom/google/android/gms/analytics/zzr;

.field private final zzh:Lcom/google/android/gms/internal/gtm/zzbq;

.field private final zzi:Lcom/google/android/gms/internal/gtm/zzcy;

.field private final zzj:Lcom/google/android/gms/internal/gtm/zzft;

.field private final zzk:Lcom/google/android/gms/internal/gtm/zzfh;

.field private final zzl:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final zzm:Lcom/google/android/gms/internal/gtm/zzcn;

.field private final zzn:Lcom/google/android/gms/internal/gtm/zzbi;

.field private final zzo:Lcom/google/android/gms/internal/gtm/zzcf;

.field private final zzp:Lcom/google/android/gms/internal/gtm/zzcx;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzbw;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbw;->zza()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbw;->zzb()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzb:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzc:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzd:Lcom/google/android/gms/common/util/Clock;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzct;

    .line 4
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzct;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zze:Lcom/google/android/gms/internal/gtm/zzct;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzfb;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzfb;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzf:Lcom/google/android/gms/internal/gtm/zzfb;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzm()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit16 v3, v3, 0x86

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Google Analytics "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzM(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzfh;

    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzfh;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzk:Lcom/google/android/gms/internal/gtm/zzfh;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzft;

    .line 11
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzft;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzj:Lcom/google/android/gms/internal/gtm/zzft;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbq;

    .line 13
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gtm/zzbq;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;Lcom/google/android/gms/internal/gtm/zzbw;)V

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzcn;

    .line 14
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzcn;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzbi;

    .line 15
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/gtm/zzbi;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzcf;

    .line 16
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/gtm/zzcf;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzcx;

    .line 17
    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/gtm/zzcx;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/analytics/zzr;->zzb(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzbu;

    .line 19
    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/gtm/zzbu;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    .line 20
    invoke-virtual {v0, v5}, Lcom/google/android/gms/analytics/zzr;->zzj(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzg:Lcom/google/android/gms/analytics/zzr;

    .line 21
    new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzm:Lcom/google/android/gms/internal/gtm/zzcn;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzn:Lcom/google/android/gms/internal/gtm/zzbi;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    iput-object v3, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzo:Lcom/google/android/gms/internal/gtm/zzcf;

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    iput-object v4, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzp:Lcom/google/android/gms/internal/gtm/zzcx;

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzcy;

    .line 26
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzcy;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzi:Lcom/google/android/gms/internal/gtm/zzcy;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzh:Lcom/google/android/gms/internal/gtm/zzbq;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzg()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbq;->zzm()V

    return-void
.end method

.method public static zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzbv;
    .registers 7

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbv;->zza:Lcom/google/android/gms/internal/gtm/zzbv;

    if-nez v0, :cond_50

    const-class v0, Lcom/google/android/gms/internal/gtm/zzbv;

    monitor-enter v0

    :try_start_a
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzbv;->zza:Lcom/google/android/gms/internal/gtm/zzbv;

    if-nez v1, :cond_4b

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzbw;

    .line 4
    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/gtm/zzbw;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzbv;

    .line 5
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/gtm/zzbv;-><init>(Lcom/google/android/gms/internal/gtm/zzbw;)V

    sput-object p0, Lcom/google/android/gms/internal/gtm/zzbv;->zza:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzf()V

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzeu;->zzQ:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v4, v1

    if-lez v3, :cond_4b

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzm()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object p0

    const-string v3, "Slow initialization (ms)"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v3, v4, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzT(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    :cond_4b
    monitor-exit v0

    goto :goto_50

    :catchall_4d
    move-exception p0

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_a .. :try_end_4f} :catchall_4d

    throw p0

    :cond_50
    :goto_50
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbv;->zza:Lcom/google/android/gms/internal/gtm/zzbv;

    return-object p0
.end method

.method private static final zzs(Lcom/google/android/gms/internal/gtm/zzbs;)V
    .registers 2

    const-string v0, "Analytics service not created/initialized"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzY()Z

    move-result p0

    const-string v0, "Analytics service not initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzb:Landroid/content/Context;

    return-object v0
.end method

.method public final zzb()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzc:Landroid/content/Context;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzj()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/analytics/zzr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzg:Lcom/google/android/gms/analytics/zzr;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzg:Lcom/google/android/gms/analytics/zzr;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/gtm/zzbi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzn:Lcom/google/android/gms/internal/gtm/zzbi;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzs(Lcom/google/android/gms/internal/gtm/zzbs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzn:Lcom/google/android/gms/internal/gtm/zzbi;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/gtm/zzbq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzh:Lcom/google/android/gms/internal/gtm/zzbq;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzs(Lcom/google/android/gms/internal/gtm/zzbs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzh:Lcom/google/android/gms/internal/gtm/zzbq;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/gtm/zzcf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzo:Lcom/google/android/gms/internal/gtm/zzcf;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzs(Lcom/google/android/gms/internal/gtm/zzbs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzo:Lcom/google/android/gms/internal/gtm/zzcf;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/gtm/zzcn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzm:Lcom/google/android/gms/internal/gtm/zzcn;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzs(Lcom/google/android/gms/internal/gtm/zzbs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzm:Lcom/google/android/gms/internal/gtm/zzcn;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/internal/gtm/zzct;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zze:Lcom/google/android/gms/internal/gtm/zzct;

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/gtm/zzcx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzp:Lcom/google/android/gms/internal/gtm/zzcx;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/gtm/zzcy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzi:Lcom/google/android/gms/internal/gtm/zzcy;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzs(Lcom/google/android/gms/internal/gtm/zzbs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzi:Lcom/google/android/gms/internal/gtm/zzcy;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/internal/gtm/zzfb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzf:Lcom/google/android/gms/internal/gtm/zzfb;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzs(Lcom/google/android/gms/internal/gtm/zzbs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzf:Lcom/google/android/gms/internal/gtm/zzfb;

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/internal/gtm/zzfb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzf:Lcom/google/android/gms/internal/gtm/zzfb;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/gtm/zzfh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzk:Lcom/google/android/gms/internal/gtm/zzfh;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzs(Lcom/google/android/gms/internal/gtm/zzbs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzk:Lcom/google/android/gms/internal/gtm/zzfh;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/internal/gtm/zzfh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzk:Lcom/google/android/gms/internal/gtm/zzfh;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzY()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_e

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzk:Lcom/google/android/gms/internal/gtm/zzfh;

    return-object v0

    :cond_e
    :goto_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/gtm/zzft;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzj:Lcom/google/android/gms/internal/gtm/zzft;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzs(Lcom/google/android/gms/internal/gtm/zzbs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzj:Lcom/google/android/gms/internal/gtm/zzft;

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbv;->zzd:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method
