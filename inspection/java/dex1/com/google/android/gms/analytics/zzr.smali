.class public final Lcom/google/android/gms/analytics/zzr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field private static volatile zza:Lcom/google/android/gms/analytics/zzr;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/zzs;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/analytics/zzg;

.field private final zze:Lcom/google/android/gms/analytics/zzn;

.field private volatile zzf:Lcom/google/android/gms/internal/gtm/zzav;

.field private zzg:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzr;->zzb:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/analytics/zzn;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/analytics/zzn;-><init>(Lcom/google/android/gms/analytics/zzr;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzr;->zze:Lcom/google/android/gms/analytics/zzn;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzr;->zzc:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/google/android/gms/analytics/zzg;

    invoke-direct {p1}, Lcom/google/android/gms/analytics/zzg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzr;->zzd:Lcom/google/android/gms/analytics/zzg;

    return-void
.end method

.method public static zzb(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzr;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/zzr;->zza:Lcom/google/android/gms/analytics/zzr;

    if-nez v0, :cond_1a

    const-class v0, Lcom/google/android/gms/analytics/zzr;

    monitor-enter v0

    :try_start_a
    sget-object v1, Lcom/google/android/gms/analytics/zzr;->zza:Lcom/google/android/gms/analytics/zzr;

    if-nez v1, :cond_15

    new-instance v1, Lcom/google/android/gms/analytics/zzr;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/zzr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/analytics/zzr;->zza:Lcom/google/android/gms/analytics/zzr;

    .line 3
    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw p0

    :cond_1a
    :goto_1a
    sget-object p0, Lcom/google/android/gms/analytics/zzr;->zza:Lcom/google/android/gms/analytics/zzr;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/analytics/zzr;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/analytics/zzr;->zzg:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/analytics/zzr;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/analytics/zzr;->zzc:Ljava/util/List;

    return-object p0
.end method

.method public static zzh()V
    .registers 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/analytics/zzq;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zza()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzr;->zzb:Landroid/content/Context;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/gtm/zzav;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzr;->zzf:Lcom/google/android/gms/internal/gtm/zzav;

    if-nez v0, :cond_6e

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzr;->zzf:Lcom/google/android/gms/internal/gtm/zzav;

    if-nez v0, :cond_69

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzav;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzav;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzr;->zzb:Landroid/content/Context;

    .line 1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzr;->zzb:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzav;->zzi(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gtm/zzav;->zzj(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_6b

    const/4 v3, 0x0

    :try_start_25
    iget-object v4, p0, Lcom/google/android/gms/analytics/zzr;->zzb:Landroid/content/Context;

    .line 5
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_61

    .line 6
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    :cond_42
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_44} :catch_45
    .catchall {:try_start_25 .. :try_end_44} :catchall_6b

    goto :goto_61

    .line 14
    :catch_45
    :try_start_45
    const-string v1, "GAv4"

    const-string v4, "Error retrieving package info: appName set to "

    .line 11
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_58

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5e

    :cond_58
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_5e
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_61
    :goto_61
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzav;->zzk(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gtm/zzav;->zzl(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzr;->zzf:Lcom/google/android/gms/internal/gtm/zzav;

    .line 14
    :cond_69
    monitor-exit p0

    goto :goto_6e

    :catchall_6b
    move-exception v0

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_45 .. :try_end_6d} :catchall_6b

    throw v0

    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzr;->zzf:Lcom/google/android/gms/internal/gtm/zzav;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/gtm/zzba;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzr;->zzb:Landroid/content/Context;

    .line 1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzba;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzba;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzfs;->zzd(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gtm/zzba;->zze(Ljava/lang/String;)V

    .line 3
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Lcom/google/android/gms/internal/gtm/zzba;->zza:I

    .line 4
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v1, Lcom/google/android/gms/internal/gtm/zzba;->zzb:I

    return-object v1
.end method

.method public final zzg(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/analytics/zzq;

    if-eqz v0, :cond_14

    new-instance v0, Ljava/util/concurrent/FutureTask;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzr;->zze:Lcom/google/android/gms/analytics/zzn;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/zzn;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzr;->zze:Lcom/google/android/gms/analytics/zzn;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/zzn;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final zzj(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzr;->zzg:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method final zzk(Lcom/google/android/gms/analytics/zzh;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzh;->zzl()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzh;->zzm()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 5
    new-instance v0, Lcom/google/android/gms/analytics/zzh;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/zzh;-><init>(Lcom/google/android/gms/analytics/zzh;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzh;->zzi()V

    iget-object p1, p0, Lcom/google/android/gms/analytics/zzr;->zze:Lcom/google/android/gms/analytics/zzn;

    new-instance v1, Lcom/google/android/gms/analytics/zzl;

    .line 4
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/analytics/zzl;-><init>(Lcom/google/android/gms/analytics/zzr;Lcom/google/android/gms/analytics/zzh;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/analytics/zzn;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Measurement can only be submitted once"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 0
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Measurement prototype can\'t be submitted"

    .line 1
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
