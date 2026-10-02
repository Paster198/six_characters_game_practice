.class final Lcom/google/android/gms/internal/auth/zzco;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzcl;


# static fields
.field private static zza:Lcom/google/android/gms/internal/auth/zzco;


# instance fields
.field private final zzb:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Landroid/database/ContentObserver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzco;->zzb:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzco;->zzc:Landroid/database/ContentObserver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzco;->zzb:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/auth/zzcn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/auth/zzcn;-><init>(Lcom/google/android/gms/internal/auth/zzco;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzco;->zzc:Landroid/database/ContentObserver;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/auth/zzcb;->zza:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzco;
    .registers 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/auth/zzco;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/auth/zzco;->zza:Lcom/google/android/gms/internal/auth/zzco;

    if-nez v1, :cond_1c

    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-static {p0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_15

    new-instance v1, Lcom/google/android/gms/internal/auth/zzco;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/auth/zzco;-><init>(Landroid/content/Context;)V

    goto :goto_1a

    .line 3
    :cond_15
    new-instance v1, Lcom/google/android/gms/internal/auth/zzco;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/auth/zzco;-><init>()V

    :goto_1a
    sput-object v1, Lcom/google/android/gms/internal/auth/zzco;->zza:Lcom/google/android/gms/internal/auth/zzco;

    :cond_1c
    sget-object p0, Lcom/google/android/gms/internal/auth/zzco;->zza:Lcom/google/android/gms/internal/auth/zzco;

    .line 3
    monitor-exit v0

    return-object p0

    :catchall_20
    move-exception p0

    .line 4
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method static declared-synchronized zze()V
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/auth/zzco;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/auth/zzco;->zza:Lcom/google/android/gms/internal/auth/zzco;

    if-eqz v1, :cond_1a

    iget-object v2, v1, Lcom/google/android/gms/internal/auth/zzco;->zzb:Landroid/content/Context;

    if-eqz v2, :cond_1a

    iget-object v1, v1, Lcom/google/android/gms/internal/auth/zzco;->zzc:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1a

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/auth/zzco;->zza:Lcom/google/android/gms/internal/auth/zzco;

    iget-object v2, v2, Lcom/google/android/gms/internal/auth/zzco;->zzc:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1a
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/internal/auth/zzco;->zza:Lcom/google/android/gms/internal/auth/zzco;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-void

    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method


# virtual methods
.method public final bridge synthetic zzb(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzco;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzco;->zzb:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzcc;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2c

    :cond_c
    :try_start_c
    new-instance v0, Lcom/google/android/gms/internal/auth/zzcm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/auth/zzcm;-><init>(Lcom/google/android/gms/internal/auth/zzco;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzcj;->zza(Lcom/google/android/gms/internal/auth/zzck;)Ljava/lang/Object;

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
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "GservicesLoader"

    const-string v3, "Unable to read GServices for: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    :goto_2c
    return-object v1
.end method

.method final synthetic zzd(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzco;->zzb:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/auth/zzcb;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
