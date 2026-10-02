.class final Lcom/google/android/gms/tagmanager/zzbv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# direct methods
.method static zza(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_7} :catch_1f

    const/16 v2, 0x9

    if-ge v1, v2, :cond_c

    goto :goto_3a

    :cond_c
    new-instance v1, Ljava/io/File;

    .line 3
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 5
    invoke-virtual {v1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 p0, 0x1

    .line 6
    invoke-virtual {v1, p0, p0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 7
    invoke-virtual {v1, p0, p0}, Ljava/io/File;->setWritable(ZZ)Z

    return p0

    :catch_1f
    sget-object p0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Invalid version number: "

    if-eqz v1, :cond_32

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_37

    :cond_32
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_37
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    :goto_3a
    return v0
.end method
