.class public final Lcom/google/android/gms/measurement/internal/zzmg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"


# direct methods
.method public static zza(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_41

    .line 1
    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_32

    .line 3
    :try_start_d
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 5
    new-instance p0, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_2e

    .line 7
    :try_start_21
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_2c

    .line 8
    :try_start_25
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 9
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    return-object v1

    :catchall_2c
    move-exception v1

    goto :goto_36

    :catchall_2e
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    goto :goto_36

    :catchall_32
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    move-object v2, p0

    :goto_36
    if-eqz v2, :cond_3b

    .line 8
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    :cond_3b
    if-eqz p0, :cond_40

    .line 9
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    .line 10
    :cond_40
    throw v1
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_41} :catch_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_41} :catch_41

    :catch_41
    :cond_41
    return-object v0
.end method

.method public static zzb(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    array-length v1, p2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_24

    .line 4
    aget-object v2, p1, v1

    if-nez p0, :cond_15

    if-eqz v2, :cond_1e

    :cond_15
    if-nez p0, :cond_18

    goto :goto_21

    .line 5
    :cond_18
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 6
    :cond_1e
    aget-object p0, p2, v1

    return-object p0

    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzig;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_11
    const-string p0, "google_app_id"

    .line 5
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzig;->zzb(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
