.class final Lcom/google/android/gms/internal/measurement/zzju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjr;


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzju;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Landroid/database/ContentObserver;

.field private zzd:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzju;->zzd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju;->zzb:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju;->zzc:Landroid/database/ContentObserver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzju;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzju;->zzb:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjt;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>(Lcom/google/android/gms/internal/measurement/zzju;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzju;->zzc:Landroid/database/ContentObserver;

    return-void
.end method

.method static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzju;
    .registers 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzju;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzju;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    if-nez v1, :cond_1c

    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-static {p0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_15

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzju;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzju;-><init>(Landroid/content/Context;)V

    goto :goto_1a

    .line 7
    :cond_15
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzju;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzju;-><init>()V

    :goto_1a
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzju;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    :cond_1c
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzju;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    if-eqz v1, :cond_49

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzju;->zzc:Landroid/database/ContentObserver;

    if-eqz v2, :cond_49

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/zzju;->zzd:Z
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_53

    if-nez v1, :cond_49

    .line 3
    :try_start_28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjc;->zza:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzju;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzju;->zzc:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 4
    invoke-virtual {p0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzju;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    .line 5
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzju;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzju;->zzd:Z
    :try_end_40
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_40} :catch_41
    .catchall {:try_start_28 .. :try_end_40} :catchall_53

    goto :goto_49

    :catch_41
    move-exception p0

    .line 8
    :try_start_42
    const-string v1, "GservicesLoader"

    const-string v2, "Unable to register Gservices content observer"

    .line 6
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_49
    :goto_49
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzju;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    .line 7
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzju;

    monitor-exit v0

    return-object p0

    :catchall_53
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_42 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzju;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzju;->zzb:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized zze()V
    .registers 4

    const-class v0, Lcom/google/android/gms/internal/measurement/zzju;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzju;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    if-eqz v1, :cond_1e

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzju;->zzb:Landroid/content/Context;

    if-eqz v2, :cond_1e

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzju;->zzc:Landroid/database/ContentObserver;

    if-eqz v3, :cond_1e

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/zzju;->zzd:Z

    if-eqz v1, :cond_1e

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzju;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzju;->zzc:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1e
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzju;->zza:Lcom/google/android/gms/internal/measurement/zzju;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method


# virtual methods
.method public final bridge synthetic zzb(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzju;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju;->zzb:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzji;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_28

    :cond_c
    :try_start_c
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzjs;-><init>(Lcom/google/android/gms/internal/measurement/zzju;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjp;->zza(Lcom/google/android/gms/internal/measurement/zzjq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_17} :catch_1c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_17} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    goto :goto_1d

    :catch_1a
    move-exception v0

    goto :goto_1d

    :catch_1c
    move-exception v0

    :goto_1d
    const-string v2, "Unable to read GServices for: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "GservicesLoader"

    .line 3
    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    :goto_28
    return-object v1
.end method
