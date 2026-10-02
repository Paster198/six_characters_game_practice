.class public final Lcom/google/android/gms/internal/measurement/zzji;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field private static zza:Landroid/os/UserManager;

.field private static volatile zzb:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzc()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzji;->zzb:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzc()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzji;->zzd(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static zzb(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzc()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzji;->zzd(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static zzc()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method private static zzd(Landroid/content/Context;)Z
    .registers 8

    .line 6
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzji;->zzb:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-class v0, Lcom/google/android/gms/internal/measurement/zzji;

    monitor-enter v0

    :try_start_9
    sget-boolean v2, Lcom/google/android/gms/internal/measurement/zzji;->zzb:Z

    if-eqz v2, :cond_f

    monitor-exit v0

    return v1

    :cond_f
    move v2, v1

    :goto_10
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-gt v2, v3, :cond_48

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzji;->zza:Landroid/os/UserManager;

    if-nez v3, :cond_23

    const-class v3, Landroid/os/UserManager;

    .line 1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzji;->zza:Landroid/os/UserManager;

    :cond_23
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzji;->zza:Landroid/os/UserManager;
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_52

    if-nez v3, :cond_29

    move v5, v1

    goto :goto_4c

    .line 2
    :cond_29
    :try_start_29
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v6

    if-nez v6, :cond_39

    .line 3
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_37} :catch_3b
    .catchall {:try_start_29 .. :try_end_37} :catchall_52

    if-nez p0, :cond_48

    :cond_39
    move v5, v1

    goto :goto_48

    :catch_3b
    move-exception v3

    .line 5
    :try_start_3c
    const-string v5, "DirectBootUtils"

    const-string v6, "Failed to check if user is unlocked."

    .line 4
    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v4, Lcom/google/android/gms/internal/measurement/zzji;->zza:Landroid/os/UserManager;

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_48
    :goto_48
    if-eqz v5, :cond_4c

    .line 3
    sput-object v4, Lcom/google/android/gms/internal/measurement/zzji;->zza:Landroid/os/UserManager;

    :cond_4c
    :goto_4c
    if-eqz v5, :cond_50

    .line 1
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzji;->zzb:Z

    .line 5
    :cond_50
    monitor-exit v0

    return v5

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_52

    throw p0
.end method
