.class public Lorg/cocos2dx/lib/GameControllerUtils;
.super Ljava/lang/Object;
.source "GameControllerUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureDirectoryExist(Ljava/lang/String;)V
    .registers 2

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_e

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_e
    return-void
.end method

.method public static readJsonFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_d

    return-object v1

    .line 26
    :cond_d
    :try_start_d
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 28
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 29
    new-array v0, v0, [B

    .line 31
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 32
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 34
    new-instance p0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {p0, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method
