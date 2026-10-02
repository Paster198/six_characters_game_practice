.class public Lcom/google/android/gms/common/util/ProcessUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# static fields
.field private static zza:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static zzb:I

.field private static zzc:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMyProcessName()Ljava/lang/String;
    .registers 6

    .line 10
    sget-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zza:Ljava/lang/String;

    if-nez v0, :cond_72

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_11

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zza:Ljava/lang/String;

    goto :goto_72

    :cond_11
    sget v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzb:I

    if-nez v0, :cond_1b

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzb:I

    :cond_1b
    const-string v1, "/cmdline"

    const-string v2, "/proc/"

    const/4 v3, 0x0

    if-gtz v0, :cond_23

    goto :goto_70

    .line 2
    :cond_23
    :try_start_23
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xe

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_43} :catch_6c
    .catchall {:try_start_23 .. :try_end_43} :catchall_67

    :try_start_43
    new-instance v2, Ljava/io/BufferedReader;

    .line 4
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_62

    .line 5
    :try_start_4d
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_6c
    .catchall {:try_start_4d .. :try_end_50} :catchall_67

    .line 7
    :try_start_50
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5e} :catch_6d
    .catchall {:try_start_50 .. :try_end_5e} :catchall_5f

    goto :goto_6d

    :catchall_5f
    move-exception v0

    move-object v3, v2

    goto :goto_68

    :catchall_62
    move-exception v0

    .line 5
    :try_start_63
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 6
    throw v0
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_6c
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v0

    .line 8
    :goto_68
    invoke-static {v3}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 9
    throw v0

    :catch_6c
    move-object v2, v3

    .line 8
    :catch_6d
    :goto_6d
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1
    :goto_70
    sput-object v3, Lcom/google/android/gms/common/util/ProcessUtils;->zza:Ljava/lang/String;

    .line 10
    :cond_72
    :goto_72
    sget-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public static zza()Z
    .registers 4

    .line 4
    sget-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzc:Ljava/lang/Boolean;

    if-nez v0, :cond_38

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_36

    :cond_13
    const/4 v0, 0x0

    .line 5
    :try_start_14
    const-class v1, Landroid/os/Process;

    const-string v2, "isIsolated"

    new-array v3, v0, [Lcom/google/android/gms/internal/common/zzi;

    .line 1
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/common/zzj;->zza(Ljava/lang/Class;Ljava/lang/String;[Lcom/google/android/gms/internal/common/zzi;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "expected a non-null reference"

    if-eqz v1, :cond_28

    check-cast v1, Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_36

    :cond_28
    new-instance v1, Lcom/google/android/gms/internal/common/zzy;

    .line 2
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/common/zzx;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/common/zzy;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_32
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_14 .. :try_end_32} :catch_32

    .line 3
    :catch_32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    :goto_36
    sput-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzc:Ljava/lang/Boolean;

    .line 5
    :cond_38
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
