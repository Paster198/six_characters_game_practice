.class public final Lcom/google/android/gms/tagmanager/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Lcom/google/android/gms/tagmanager/zzd;


# instance fields
.field private volatile zzc:J

.field private volatile zzd:J

.field private volatile zze:Z

.field private volatile zzf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private volatile zzg:J

.field private volatile zzh:J

.field private final zzi:Landroid/content/Context;

.field private final zzj:Lcom/google/android/gms/common/util/Clock;

.field private final zzk:Ljava/lang/Thread;

.field private final zzl:Ljava/lang/Object;

.field private final zzm:Lcom/google/android/gms/tagmanager/zzc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzd;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzc;Lcom/google/android/gms/common/util/Clock;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzc:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzd:J

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzd;->zze:Z

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzd;->zzl:Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/tagmanager/zza;

    .line 1
    invoke-direct {p2, p0}, Lcom/google/android/gms/tagmanager/zza;-><init>(Lcom/google/android/gms/tagmanager/zzd;)V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzd;->zzm:Lcom/google/android/gms/tagmanager/zzc;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzd;->zzj:Lcom/google/android/gms/common/util/Clock;

    if-eqz p1, :cond_28

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzd;->zzi:Landroid/content/Context;

    goto :goto_2b

    :cond_28
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzd;->zzi:Landroid/content/Context;

    .line 3
    :goto_2b
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzd;->zzg:J

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/google/android/gms/tagmanager/zzb;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/tagmanager/zzb;-><init>(Lcom/google/android/gms/tagmanager/zzd;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzd;->zzk:Ljava/lang/Thread;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/tagmanager/zzd;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzi:Landroid/content/Context;

    return-object p0
.end method

.method public static zzb(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzd;
    .registers 5

    sget-object v0, Lcom/google/android/gms/tagmanager/zzd;->zzb:Lcom/google/android/gms/tagmanager/zzd;

    if-nez v0, :cond_21

    sget-object v0, Lcom/google/android/gms/tagmanager/zzd;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/tagmanager/zzd;->zzb:Lcom/google/android/gms/tagmanager/zzd;

    if-nez v1, :cond_1c

    new-instance v1, Lcom/google/android/gms/tagmanager/zzd;

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/google/android/gms/tagmanager/zzd;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzc;Lcom/google/android/gms/common/util/Clock;)V

    sput-object v1, Lcom/google/android/gms/tagmanager/zzd;->zzb:Lcom/google/android/gms/tagmanager/zzd;

    iget-object p0, v1, Lcom/google/android/gms/tagmanager/zzd;->zzk:Ljava/lang/Thread;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 3
    :cond_1c
    monitor-exit v0

    goto :goto_21

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw p0

    :cond_21
    :goto_21
    sget-object p0, Lcom/google/android/gms/tagmanager/zzd;->zzb:Lcom/google/android/gms/tagmanager/zzd;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/tagmanager/zzd;)V
    .registers 5

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zze:Z

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzm:Lcom/google/android/gms/tagmanager/zzc;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzc;->zza()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-eqz v0, :cond_22

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzj:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzh:J

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    const-string v1, "Obtained fresh AdvertisingId info from GmsCore."

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbg;->zzb(Ljava/lang/String;)V

    :cond_22
    monitor-enter p0

    .line 5
    :try_start_23
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_3e

    :try_start_27
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzl:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_36

    :try_start_2a
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzd;->zzl:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzd;->zzc:J

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 8
    monitor-exit v0

    goto :goto_5

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_33

    :try_start_35
    throw v1
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_36} :catch_36

    .line 6
    :catch_36
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    const-string v1, "sleep interrupted in AdvertiserDataPoller thread; continuing"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbg;->zzb(Ljava/lang/String;)V

    goto :goto_5

    :catchall_3e
    move-exception v0

    .line 6
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0

    :cond_41
    return-void
.end method

.method private final zzg()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzj:Lcom/google/android/gms/common/util/Clock;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzd;->zzh:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    :cond_13
    return-void
.end method

.method private final zzh()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzj:Lcom/google/android/gms/common/util/Clock;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzd;->zzg:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzd;->zzd:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzd;->zzl:Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 3
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_21

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzj:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzg:J

    return-void

    :catchall_21
    move-exception v1

    .line 3
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1

    :cond_24
    return-void
.end method

.method private final zzi()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zze:Z

    if-nez v0, :cond_10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzd;->zzh()V

    const-wide/16 v0, 0x1f4

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_d} :catch_10
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception v0

    goto :goto_12

    .line 3
    :catch_10
    :cond_10
    :goto_10
    :try_start_10
    monitor-exit p0

    return-void

    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_e

    throw v0
.end method


# virtual methods
.method public final zzc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzd;->zzi()V

    goto :goto_b

    .line 2
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzd;->zzh()V

    .line 3
    :goto_b
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzd;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zze()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zze:Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzk:Ljava/lang/Thread;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final zzf()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzd;->zzi()V

    goto :goto_b

    .line 2
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzd;->zzh()V

    .line 3
    :goto_b
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzd;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzd;->zzf:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    return v0

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method
