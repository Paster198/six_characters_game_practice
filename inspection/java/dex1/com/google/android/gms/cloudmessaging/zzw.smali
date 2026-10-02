.class public final Lcom/google/android/gms/cloudmessaging/zzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@17.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:I

.field private zzc:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cloudmessaging/zzw;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzw;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()I
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/zzw;->zzb:I

    if-nez v0, :cond_2a

    const-string v0, "com.google.android.gms"
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2e

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/zzw;->zza:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_12} :catch_13
    .catchall {:try_start_7 .. :try_end_12} :catchall_2e

    goto :goto_24

    :catch_13
    move-exception v0

    .line 3
    :try_start_14
    const-string v1, "Failed to find package "

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Metadata"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_2a

    .line 3
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/google/android/gms/cloudmessaging/zzw;->zzb:I

    :cond_2a
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/zzw;->zzb:I
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return v0

    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public final declared-synchronized zzb()I
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/zzw;->zzc:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_77

    if-eqz v0, :cond_7

    monitor-exit p0

    return v0

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzw;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const-string v2, "com.google.android.c2dm.permission.SEND"

    const-string v3, "com.google.android.gms"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_26

    const-string v0, "Metadata"

    const-string v1, "Google Play services missing or without correct permission."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_77

    monitor-exit p0

    return v3

    .line 4
    :cond_26
    :try_start_26
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_46

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.google.android.c2dm.intent.REGISTER"

    .line 5
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    .line 6
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_60

    :cond_46
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.google.iid.TOKEN_REQUEST"

    .line 9
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    .line 10
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_64

    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    move v2, v1

    .line 8
    :goto_60
    iput v2, p0, Lcom/google/android/gms/cloudmessaging/zzw;->zzc:I
    :try_end_62
    .catchall {:try_start_26 .. :try_end_62} :catchall_77

    monitor-exit p0

    return v2

    .line 12
    :cond_64
    :try_start_64
    const-string v0, "Metadata"

    const-string v3, "Failed to resolve IID implementation package, falling back"

    .line 13
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eq v2, v0, :cond_72

    goto :goto_73

    :cond_72
    move v2, v1

    :goto_73
    iput v2, p0, Lcom/google/android/gms/cloudmessaging/zzw;->zzc:I
    :try_end_75
    .catchall {:try_start_64 .. :try_end_75} :catchall_77

    monitor-exit p0

    return v2

    :catchall_77
    move-exception v0

    :try_start_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v0
.end method
