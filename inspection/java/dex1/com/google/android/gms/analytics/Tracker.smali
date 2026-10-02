.class public Lcom/google/android/gms/analytics/Tracker;
.super Lcom/google/android/gms/internal/gtm/zzbs;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field private zza:Z

.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/gtm/zzez;

.field private final zze:Lcom/google/android/gms/analytics/zzv;

.field private zzf:Lcom/google/android/gms/analytics/ExceptionReporter;

.field private zzg:Lcom/google/android/gms/internal/gtm/zzfr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzez;)V
    .registers 11

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbs;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    new-instance p3, Ljava/util/HashMap;

    .line 2
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/analytics/Tracker;->zzb:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzc:Ljava/util/Map;

    if-eqz p2, :cond_18

    const-string v0, "&tid"

    .line 4
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const-string p2, "useSecure"

    const-string v0, "1"

    .line 5
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/util/Random;

    .line 6
    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "&a"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzez;

    const-string v5, "tracking"

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    const/16 v2, 0x3c

    const-wide/16 v3, 0x7d0

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/gtm/zzez;-><init>(IJLjava/lang/String;Lcom/google/android/gms/common/util/Clock;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzd:Lcom/google/android/gms/internal/gtm/zzez;

    new-instance p2, Lcom/google/android/gms/analytics/zzv;

    .line 9
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/analytics/zzv;-><init>(Lcom/google/android/gms/analytics/Tracker;Lcom/google/android/gms/internal/gtm/zzbv;)V

    iput-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->zze:Lcom/google/android/gms/analytics/zzv;

    return-void
.end method

.method private static zzZ(Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_6

    goto :goto_2a

    .line 2
    :cond_6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzn(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_2a
    :goto_2a
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/zzv;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/analytics/Tracker;->zze:Lcom/google/android/gms/analytics/zzv;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzbi;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzr()Lcom/google/android/gms/internal/gtm/zzbi;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzbq;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzs()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzbq;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzs()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzcf;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzu()Lcom/google/android/gms/internal/gtm/zzcf;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzcx;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzx()Lcom/google/android/gms/internal/gtm/zzcx;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzcx;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzx()Lcom/google/android/gms/internal/gtm/zzcx;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzez;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/analytics/Tracker;->zzd:Lcom/google/android/gms/internal/gtm/zzez;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzfb;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzfb;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/internal/gtm/zzfr;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/analytics/Tracker;->zzg:Lcom/google/android/gms/internal/gtm/zzfr;

    return-object p0
.end method

.method private static zzn(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "&"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_16

    goto :goto_22

    .line 3
    :cond_16
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public enableAdvertisingIdCollection(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/Tracker;->zza:Z

    return-void
.end method

.method public enableAutoActivityTracking(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zze:Lcom/google/android/gms/analytics/zzv;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/zzv;->zzc(Z)V

    return-void
.end method

.method public enableExceptionReporting(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzf:Lcom/google/android/gms/analytics/ExceptionReporter;

    if-nez v0, :cond_7

    const/4 v1, 0x0

    goto :goto_8

    :cond_7
    const/4 v1, 0x1

    :goto_8
    if-ne v1, p1, :cond_c

    .line 1
    monitor-exit p0

    return-void

    :cond_c
    if-eqz p1, :cond_26

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object p1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/ExceptionReporter;

    .line 7
    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/analytics/ExceptionReporter;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzf:Lcom/google/android/gms/analytics/ExceptionReporter;

    .line 8
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string p1, "Uncaught exceptions will be reported to Google Analytics"

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    goto :goto_32

    .line 2
    :cond_26
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ExceptionReporter;->zza()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string p1, "Uncaught exceptions will not be reported to Google Analytics"

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    .line 10
    :goto_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return-object v1

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzb:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzb:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1c
    const-string v0, "&ul"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzfs;->zzd(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2d
    const-string v0, "&cid"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzv()Lcom/google/android/gms/internal/gtm/zzcn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcn;->zzb()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3e
    const-string v0, "&sr"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzx()Lcom/google/android/gms/internal/gtm/zzcx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcx;->zzb()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4f
    const-string v0, "&aid"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzu()Lcom/google/android/gms/internal/gtm/zzcf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcf;->zza()Lcom/google/android/gms/internal/gtm/zzav;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzav;->zzd()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_64
    const-string v0, "&an"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzu()Lcom/google/android/gms/internal/gtm/zzcf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcf;->zza()Lcom/google/android/gms/internal/gtm/zzav;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzav;->zzf()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_79
    const-string v0, "&av"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzu()Lcom/google/android/gms/internal/gtm/zzcf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcf;->zza()Lcom/google/android/gms/internal/gtm/zzav;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzav;->zzg()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8e
    const-string v0, "&aiid"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzu()Lcom/google/android/gms/internal/gtm/zzcf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzcf;->zza()Lcom/google/android/gms/internal/gtm/zzav;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzav;->zze()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a3
    return-object v1
.end method

.method public send(Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzp()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getAppOptOut()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p1, "AppOptOut is set to true. Not sending Google Analytics hit"

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzF(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzp()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isDryRunEnabled()Z

    move-result v8

    new-instance v3, Ljava/util/HashMap;

    .line 5
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzb:Ljava/util/Map;

    .line 6
    invoke-static {v0, v3}, Lcom/google/android/gms/analytics/Tracker;->zzZ(Ljava/util/Map;Ljava/util/Map;)V

    .line 7
    invoke-static {p1, v3}, Lcom/google/android/gms/analytics/Tracker;->zzZ(Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzb:Ljava/util/Map;

    const-string v0, "useSecure"

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_6e

    const-string v1, "true"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "yes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    goto :goto_6e

    .line 35
    :cond_53
    const-string v1, "false"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6c

    const-string v1, "no"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6c

    const-string v1, "0"

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6e

    :cond_6c
    move v9, v2

    goto :goto_6f

    :cond_6e
    :goto_6e
    move v9, v0

    .line 9
    :goto_6f
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzc:Ljava/util/Map;

    .line 13
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7c
    :goto_7c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->zzn(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 16
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    :cond_9e
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzc:Ljava/util/Map;

    .line 18
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const-string p1, "t"

    .line 19
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 20
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_bc

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object p1

    const-string v0, "Missing hit type parameter"

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/gtm/zzfb;->zzc(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_bc
    const-string p1, "tid"

    .line 22
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Ljava/lang/String;

    .line 23
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12b

    iget-boolean v4, p0, Lcom/google/android/gms/analytics/Tracker;->zza:Z

    monitor-enter p0

    :try_start_ce
    const-string p1, "screenview"

    .line 24
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_d4
    .catchall {:try_start_ce .. :try_end_d4} :catchall_124

    if-nez p1, :cond_f1

    :try_start_d6
    const-string p1, "pageview"

    .line 25
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f1

    const-string p1, "appview"

    .line 26
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f1

    .line 27
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_ea
    .catchall {:try_start_d6 .. :try_end_ea} :catchall_ed

    if-eqz p1, :cond_115

    goto :goto_f1

    :catchall_ed
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_127

    :cond_f1
    :goto_f1
    :try_start_f1
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzb:Ljava/util/Map;

    const-string v1, "&a"

    .line 28
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v0

    const v1, 0x7fffffff

    if-lt p1, v1, :cond_109

    goto :goto_10a

    :cond_109
    move v0, p1

    :goto_10a
    iget-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzb:Ljava/util/Map;

    const-string v1, "&a"

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_115
    monitor-exit p0
    :try_end_116
    .catchall {:try_start_f1 .. :try_end_116} :catchall_124

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/analytics/zzu;

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/analytics/zzu;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/util/Map;ZLjava/lang/String;JZZLjava/lang/String;)V

    .line 34
    invoke-virtual {p1, v1}, Lcom/google/android/gms/analytics/zzr;->zzi(Ljava/lang/Runnable;)V

    return-void

    :catchall_124
    move-exception v0

    move-object v2, p0

    :goto_126
    move-object p1, v0

    .line 32
    :goto_127
    :try_start_127
    monitor-exit p0
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_129

    throw p1

    :catchall_129
    move-exception v0

    goto :goto_126

    :cond_12b
    move-object v2, p0

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object p1

    const-string v0, "Missing tracking id parameter"

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/gtm/zzfb;->zzc(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "Key should be non-null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzb:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAnonymizeIp(Z)V
    .registers 3

    const-string v0, "&aip"

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzfs;->zzc(Z)Ljava/lang/String;

    move-result-object p1

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&aid"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppInstallerId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&aiid"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&an"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&av"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCampaignParamsOnNextHit(Landroid/net/Uri;)V
    .registers 5

    if-eqz p1, :cond_c8

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_c8

    :cond_a
    const-string v0, "referrer"

    .line 2
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_c8

    .line 4
    :cond_18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "http://hostname/?"

    if-eqz v0, :cond_29

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    .line 24
    :cond_29
    new-instance p1, Ljava/lang/String;

    .line 4
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2e
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "utm_id"

    .line 5
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzc:Ljava/util/Map;

    const-string v2, "&ci"

    .line 6
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    const-string v0, "anid"

    .line 7
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzc:Ljava/util/Map;

    const-string v2, "&anid"

    .line 8
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    const-string v0, "utm_campaign"

    .line 9
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzc:Ljava/util/Map;

    const-string v2, "&cn"

    .line 10
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    const-string v0, "utm_content"

    .line 11
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzc:Ljava/util/Map;

    const-string v2, "&cc"

    .line 12
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    const-string v0, "utm_medium"

    .line 13
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7d

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzc:Ljava/util/Map;

    const-string v2, "&cm"

    .line 14
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    const-string v0, "utm_source"

    .line 15
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8c

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzc:Ljava/util/Map;

    const-string v2, "&cs"

    .line 16
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c
    const-string v0, "utm_term"

    .line 17
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9b

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzc:Ljava/util/Map;

    const-string v2, "&ck"

    .line 18
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9b
    const-string v0, "dclid"

    .line 19
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_aa

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzc:Ljava/util/Map;

    const-string v2, "&dclid"

    .line 20
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_aa
    const-string v0, "gclid"

    .line 21
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b9

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->zzc:Ljava/util/Map;

    const-string v2, "&gclid"

    .line 22
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b9
    const-string v0, "aclid"

    .line 23
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c8

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zzc:Ljava/util/Map;

    const-string v1, "&aclid"

    .line 24
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c8
    :goto_c8
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&cid"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&de"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&dh"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&ul"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&dl"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&dp"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&dr"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSampleRate(D)V
    .registers 4

    const-string v0, "&sf"

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenColors(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&sd"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&cd"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenResolution(II)V
    .registers 5

    if-gez p1, :cond_a

    if-gez p2, :cond_a

    const-string p1, "Invalid width or height. The values should be non-negative."

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x17

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&sr"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSessionTimeout(J)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zze:Lcom/google/android/gms/analytics/zzv;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/analytics/zzv;->zze(J)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&dt"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseSecure(Z)V
    .registers 3

    const-string v0, "useSecure"

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzfs;->zzc(Z)Ljava/lang/String;

    move-result-object p1

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setViewportSize(Ljava/lang/String;)V
    .registers 3

    const-string v0, "&vp"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final zzd()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->zze:Lcom/google/android/gms/analytics/zzv;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzB()Lcom/google/android/gms/internal/gtm/zzft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzft;->zza()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "&an"

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzB()Lcom/google/android/gms/internal/gtm/zzft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzft;->zzb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    const-string v1, "&av"

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method final zzm(Lcom/google/android/gms/internal/gtm/zzfr;)V
    .registers 7

    const-string v0, "Loading Tracker config values"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->zzg:Lcom/google/android/gms/internal/gtm/zzfr;

    iget-object v0, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zza:Ljava/lang/String;

    if-eqz v0, :cond_15

    const-string v1, "&tid"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "trackingId loaded"

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_15
    iget-wide v0, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zzb:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_2b

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&sf"

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Sample frequency loaded"

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    iget v0, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zzc:I

    if-ltz v0, :cond_3c

    int-to-long v1, v0

    .line 7
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/analytics/Tracker;->setSessionTimeout(J)V

    const-string v1, "Session timeout loaded"

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3c
    iget v0, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zzd:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_54

    if-eq v3, v0, :cond_47

    move v0, v2

    goto :goto_48

    :cond_47
    move v0, v3

    .line 9
    :goto_48
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    const-string v4, "Auto activity tracking loaded"

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_54
    iget v0, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zze:I

    if-eq v0, v1, :cond_6f

    if-eqz v0, :cond_61

    const-string v1, "&aip"

    const-string v4, "1"

    .line 11
    invoke-virtual {p0, v1, v4}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    if-eq v3, v0, :cond_65

    move v0, v2

    goto :goto_66

    :cond_65
    move v0, v3

    :goto_66
    const-string v1, "Anonymize ip loaded"

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6f
    iget p1, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zzf:I

    if-ne p1, v3, :cond_74

    move v2, v3

    .line 13
    :cond_74
    invoke-virtual {p0, v2}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    return-void
.end method
