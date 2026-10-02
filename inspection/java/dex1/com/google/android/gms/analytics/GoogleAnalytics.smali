.class public final Lcom/google/android/gms/analytics/GoogleAnalytics;
.super Lcom/google/android/gms/analytics/zza;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field private static zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Z

.field private zzd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/analytics/zzv;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Z

.field private zzf:Z

.field private volatile zzg:Z

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzb:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/zza;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    new-instance p1, Ljava/util/HashSet;

    .line 2
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzd:Ljava/util/Set;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzc()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object p0

    return-object p0
.end method

.method public static zzf()V
    .registers 3

    const-class v0, Lcom/google/android/gms/analytics/GoogleAnalytics;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzb:Ljava/util/List;

    if-eqz v1, :cond_1e

    .line 1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_b

    :cond_1b
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzb:Ljava/util/List;

    .line 3
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method


# virtual methods
.method public dispatchLocalHits()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzb()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzf()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbq;->zzc()V

    return-void
.end method

.method public enableAutoActivityReports(Landroid/app/Application;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zze:Z

    if-nez v0, :cond_f

    .line 1
    new-instance v0, Lcom/google/android/gms/analytics/zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/zze;-><init>(Lcom/google/android/gms/analytics/GoogleAnalytics;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zze:Z

    :cond_f
    return-void
.end method

.method public getAppOptOut()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzg:Z

    return v0
.end method

.method public getLogger()Lcom/google/android/gms/analytics/Logger;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfa;->zza()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    return-object v0
.end method

.method public isDryRunEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzf:Z

    return v0
.end method

.method public newTracker(I)Lcom/google/android/gms/analytics/Tracker;
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzb()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v1

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/analytics/Tracker;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzez;)V

    if-lez p1, :cond_21

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzfq;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzb()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v2

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/gtm/zzfq;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/gtm/zzfq;->zza(I)Lcom/google/android/gms/internal/gtm/zzcq;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzfr;

    if-eqz p1, :cond_21

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->zzm(Lcom/google/android/gms/internal/gtm/zzfr;)V

    .line 5
    :cond_21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_26
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzb()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/analytics/Tracker;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzez;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzX()V

    .line 10
    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public reportActivityStart(Landroid/app/Activity;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zze:Z

    if-nez v0, :cond_7

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzh(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public reportActivityStop(Landroid/app/Activity;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zze:Z

    if-nez v0, :cond_7

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzi(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public setAppOptOut(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzg:Z

    iget-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzg:Z

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzb()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object p1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbv;->zzf()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbq;->zzg()V

    :cond_11
    return-void
.end method

.method public setDryRun(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzf:Z

    return-void
.end method

.method public setLocalDispatchPeriod(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzb()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzf()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbq;->zzl(I)V

    return-void
.end method

.method public setLogger(Lcom/google/android/gms/analytics/Logger;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzfa;->zzc(Lcom/google/android/gms/analytics/Logger;)V

    iget-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzh:Z

    if-nez p1, :cond_39

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzeu;->zzc:Lcom/google/android/gms/internal/gtm/zzet;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzc:Lcom/google/android/gms/internal/gtm/zzet;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x70

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " DEBUG"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzh:Z

    :cond_39
    return-void
.end method

.method public final zzg()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzb()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzq()Lcom/google/android/gms/internal/gtm/zzft;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzft;->zzf()Z

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzft;->zze()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzft;->zzc()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    .line 5
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzft;->zzf()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzc:Z

    return-void
.end method

.method final zzh(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzd:Ljava/util/Set;

    .line 1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/zzv;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/zzv;->zza(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method final zzi(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzd:Ljava/util/Set;

    .line 1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/zzv;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/zzv;->zzb(Landroid/app/Activity;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final zzj()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzc:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method final zzk(Lcom/google/android/gms/analytics/zzv;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzd:Ljava/util/Set;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzb()Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbv;->zza()Landroid/content/Context;

    move-result-object p1

    .line 3
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_16

    .line 4
    check-cast p1, Landroid/app/Application;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->enableAutoActivityReports(Landroid/app/Application;)V

    :cond_16
    return-void
.end method

.method final zzl(Lcom/google/android/gms/analytics/zzv;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzd:Ljava/util/Set;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
