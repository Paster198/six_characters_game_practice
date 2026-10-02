.class public final Lim/delight/android/commons/Identity;
.super Ljava/lang/Object;
.source "Identity.java"


# static fields
.field private static final FILE_MODE_READ_ONLY:Ljava/lang/String; = "r"

.field private static final INSTALLATION_ID_FILENAME:Ljava/lang/String; = "INSTALLATION_ID"

.field private static mDeviceId:Ljava/lang/String;

.field private static mInstallationId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 95
    sget-object v0, Lim/delight/android/commons/Identity;->mDeviceId:Ljava/lang/String;

    if-nez v0, :cond_3a

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, ""

    if-eqz v0, :cond_23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 99
    sput-object v0, Lim/delight/android/commons/Identity;->mDeviceId:Ljava/lang/String;

    goto :goto_3a

    .line 103
    :cond_23
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v0, :cond_34

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 104
    sget-object p0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object p0, Lim/delight/android/commons/Identity;->mDeviceId:Ljava/lang/String;

    goto :goto_3a

    .line 107
    :cond_34
    invoke-static {p0}, Lim/delight/android/commons/Identity;->getInstallationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lim/delight/android/commons/Identity;->mDeviceId:Ljava/lang/String;

    .line 116
    :cond_3a
    :goto_3a
    sget-object p0, Lim/delight/android/commons/Identity;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized getInstallationId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v0, Lim/delight/android/commons/Identity;

    monitor-enter v0

    .line 49
    :try_start_3
    sget-object v1, Lim/delight/android/commons/Identity;->mInstallationId:Ljava/lang/String;

    if-nez v1, :cond_29

    .line 50
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "INSTALLATION_ID"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2d

    .line 52
    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1b

    .line 53
    invoke-static {v1}, Lim/delight/android/commons/Identity;->writeInstallationId(Ljava/io/File;)V

    .line 55
    :cond_1b
    invoke-static {v1}, Lim/delight/android/commons/Identity;->readInstallationId(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lim/delight/android/commons/Identity;->mInstallationId:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_22
    .catchall {:try_start_12 .. :try_end_21} :catchall_2d

    goto :goto_29

    :catch_22
    move-exception p0

    .line 58
    :try_start_23
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 62
    :cond_29
    :goto_29
    sget-object p0, Lim/delight/android/commons/Identity;->mInstallationId:Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2d

    monitor-exit v0

    return-object p0

    :catchall_2d
    move-exception p0

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method private static readInstallationId(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array p0, p0, [B

    .line 68
    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 69
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 71
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static writeInstallationId(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 78
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
