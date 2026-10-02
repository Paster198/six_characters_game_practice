.class final Lcom/google/android/gms/measurement/internal/zzma;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzmb;

.field private final zzb:Ljava/net/URL;

.field private final zzc:[B

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzly;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzmb;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzly;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzma;->zza:Lcom/google/android/gms/measurement/internal/zzmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzma;->zzb:Ljava/net/URL;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzma;->zzc:[B

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzma;->zzd:Lcom/google/android/gms/measurement/internal/zzly;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzma;->zze:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzma;->zzf:Ljava/util/Map;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/measurement/internal/zzma;ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzma;->zzd:Lcom/google/android/gms/measurement/internal/zzly;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzma;->zze:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzly;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method

.method private final zzb(ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzma;->zza:Lcom/google/android/gms/measurement/internal/zzmb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzlz;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzlz;-><init>(Lcom/google/android/gms/measurement/internal/zzma;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 1
    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzma;->zza:Lcom/google/android/gms/measurement/internal/zzmb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzaY()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_9
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzma;->zzb:Ljava/net/URL;

    .line 2
    sget v5, Lcom/google/android/gms/internal/measurement/zzcm;->zzb:I

    .line 3
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 4
    instance-of v5, v4, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_120

    .line 6
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 7
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const v5, 0xea60

    .line 9
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const v5, 0xee48

    .line 11
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 12
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v5, 0x1

    .line 13
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_35} :catch_151
    .catchall {:try_start_9 .. :try_end_35} :catchall_128

    :try_start_35
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzma;->zzf:Ljava/util/Map;

    if-eqz v6, :cond_5d

    .line 14
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_5d
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzma;->zzc:[B
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_5f} :catch_11d
    .catchall {:try_start_35 .. :try_end_5f} :catchall_11a

    if-eqz v6, :cond_c7

    .line 16
    :try_start_61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 17
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 18
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    invoke-virtual {v7, v6}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 20
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 21
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 22
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_7b} :catch_b4
    .catchall {:try_start_61 .. :try_end_7b} :catchall_11a

    :try_start_7b
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzma;->zza:Lcom/google/android/gms/measurement/internal/zzmb;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 26
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 27
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v7, "Uploading data. size"

    array-length v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    .line 29
    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 31
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 32
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_a5} :catch_11d
    .catchall {:try_start_7b .. :try_end_a5} :catchall_11a

    .line 33
    :try_start_a5
    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 34
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ab} :catch_b0
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_ac

    goto :goto_c7

    :catchall_ac
    move-exception v1

    move-object v6, v3

    goto/16 :goto_12c

    :catch_b0
    move-exception v1

    move-object v6, v3

    goto/16 :goto_155

    :catch_b4
    move-exception v1

    .line 50
    :try_start_b5
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzma;->zza:Lcom/google/android/gms/measurement/internal/zzmb;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v6, "Failed to gzip post request content"

    invoke-virtual {v5, v6, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    throw v1

    .line 35
    :cond_c7
    :goto_c7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_cb} :catch_11d
    .catchall {:try_start_b5 .. :try_end_cb} :catchall_11a

    .line 36
    :try_start_cb
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_cf} :catch_115
    .catchall {:try_start_cb .. :try_end_cf} :catchall_110

    .line 37
    :try_start_cf
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_d8
    .catchall {:try_start_cf .. :try_end_d8} :catchall_fa

    const/16 v8, 0x400

    :try_start_da
    new-array v8, v8, [B

    .line 39
    :goto_dc
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_e6

    .line 40
    invoke-virtual {v6, v8, v2, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_dc

    .line 41
    :cond_e6
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_ea
    .catchall {:try_start_da .. :try_end_ea} :catchall_f8

    if-eqz v7, :cond_ef

    .line 42
    :try_start_ec
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_109
    .catchall {:try_start_ec .. :try_end_ef} :catchall_102

    :cond_ef
    if-eqz v4, :cond_f4

    .line 44
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 45
    :cond_f4
    invoke-direct {p0, v1, v3, v2, v5}, Lcom/google/android/gms/measurement/internal/zzma;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void

    :catchall_f8
    move-exception v2

    goto :goto_fc

    :catchall_fa
    move-exception v2

    move-object v7, v3

    :goto_fc
    if-eqz v7, :cond_101

    .line 42
    :try_start_fe
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 43
    :cond_101
    throw v2
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_102} :catch_109
    .catchall {:try_start_fe .. :try_end_102} :catchall_102

    :catchall_102
    move-exception v2

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    move-object v6, v5

    move-object v5, v3

    goto :goto_12c

    :catch_109
    move-exception v2

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    move-object v6, v5

    move-object v5, v3

    goto :goto_155

    :catchall_110
    move-exception v2

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    goto :goto_11b

    :catch_115
    move-exception v2

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    goto :goto_11e

    :catchall_11a
    move-exception v1

    :goto_11b
    move-object v5, v3

    goto :goto_12b

    :catch_11d
    move-exception v1

    :goto_11e
    move-object v5, v3

    goto :goto_154

    .line 4
    :cond_120
    :try_start_120
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Failed to obtain HTTP connection"

    .line 5
    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_128} :catch_151
    .catchall {:try_start_120 .. :try_end_128} :catchall_128

    :catchall_128
    move-exception v1

    move-object v4, v3

    move-object v5, v4

    :goto_12b
    move-object v6, v5

    :goto_12c
    if-eqz v5, :cond_148

    .line 46
    :try_start_12e
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_132

    goto :goto_148

    :catch_132
    move-exception v5

    .line 49
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzma;->zza:Lcom/google/android/gms/measurement/internal/zzmb;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 47
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v7

    .line 48
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzma;->zze:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 49
    invoke-virtual {v7, v0, v8, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_148
    :goto_148
    if-eqz v4, :cond_14d

    .line 44
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 45
    :cond_14d
    invoke-direct {p0, v2, v3, v3, v6}, Lcom/google/android/gms/measurement/internal/zzma;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 50
    throw v1

    :catch_151
    move-exception v1

    move-object v4, v3

    move-object v5, v4

    :goto_154
    move-object v6, v5

    :goto_155
    if-eqz v5, :cond_171

    .line 46
    :try_start_157
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_15a} :catch_15b

    goto :goto_171

    :catch_15b
    move-exception v5

    .line 43
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzma;->zza:Lcom/google/android/gms/measurement/internal/zzmb;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 47
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v7

    .line 48
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzma;->zze:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 49
    invoke-virtual {v7, v0, v8, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_171
    :goto_171
    if-eqz v4, :cond_176

    .line 44
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 45
    :cond_176
    invoke-direct {p0, v2, v1, v3, v6}, Lcom/google/android/gms/measurement/internal/zzma;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
