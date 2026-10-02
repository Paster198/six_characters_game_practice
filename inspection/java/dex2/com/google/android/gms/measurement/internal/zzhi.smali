.class final Lcom/google/android/gms/measurement/internal/zzhi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzhk;

.field private final zzb:Ljava/net/URL;

.field private final zzc:[B

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzhg;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhk;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzhg;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzb:Ljava/net/URL;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzc:[B

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzd:Lcom/google/android/gms/measurement/internal/zzhg;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zze:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzf:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .line 1
    const-string v1, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzaY()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_9
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzb:Ljava/net/URL;

    .line 2
    sget v5, Lcom/google/android/gms/internal/measurement/zzcm;->zzb:I

    .line 3
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 4
    instance-of v5, v4, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_10f

    .line 6
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 7
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const v6, 0xea60

    .line 9
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const v6, 0xee48

    .line 11
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 12
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v6, 0x1

    .line 13
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_35} :catch_155
    .catchall {:try_start_9 .. :try_end_35} :catchall_117

    :try_start_35
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzf:Ljava/util/Map;

    if-eqz v7, :cond_5d

    .line 14
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_41
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_5d
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzc:[B

    if-eqz v7, :cond_a5

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzB([B)[B

    move-result-object v0

    .line 18
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 19
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v7, "Uploading data. size"

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    .line 21
    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 23
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 24
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_91} :catch_10a
    .catchall {:try_start_35 .. :try_end_91} :catchall_106

    .line 25
    :try_start_91
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 26
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_97} :catch_9e
    .catchall {:try_start_91 .. :try_end_97} :catchall_98

    goto :goto_a5

    :catchall_98
    move-exception v0

    move v6, v2

    move-object v9, v3

    move-object v3, v5

    goto/16 :goto_11b

    :catch_9e
    move-exception v0

    move-object v8, v0

    move v7, v2

    move-object v10, v3

    move-object v3, v5

    goto/16 :goto_15a

    .line 27
    :cond_a5
    :goto_a5
    :try_start_a5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a9} :catch_10a
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_106

    .line 28
    :try_start_a9
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ad} :catch_101
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_fc

    .line 29
    :try_start_ad
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_b6
    .catchall {:try_start_ad .. :try_end_b6} :catchall_eb

    const/16 v6, 0x400

    :try_start_b8
    new-array v6, v6, [B

    .line 31
    :goto_ba
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_c4

    .line 32
    invoke-virtual {v0, v6, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_ba

    .line 33
    :cond_c4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10
    :try_end_c8
    .catchall {:try_start_b8 .. :try_end_c8} :catchall_e9

    if-eqz v5, :cond_cd

    .line 34
    :try_start_ca
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_f8
    .catchall {:try_start_ca .. :try_end_cd} :catchall_f3

    :cond_cd
    if-eqz v4, :cond_d2

    .line 36
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhk;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zze:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzd:Lcom/google/android/gms/measurement/internal/zzhg;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzhh;

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 38
    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/zzhh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzhg;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzhj;)V

    .line 39
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    :catchall_e9
    move-exception v0

    goto :goto_ed

    :catchall_eb
    move-exception v0

    move-object v5, v3

    :goto_ed
    if-eqz v5, :cond_f2

    .line 34
    :try_start_ef
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 35
    :cond_f2
    throw v0
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f3} :catch_f8
    .catchall {:try_start_ef .. :try_end_f3} :catchall_f3

    :catchall_f3
    move-exception v0

    move-object v2, v0

    move v6, v8

    move-object v9, v11

    goto :goto_11c

    :catch_f8
    move-exception v0

    move v7, v8

    move-object v10, v11

    goto :goto_104

    :catchall_fc
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    move v6, v8

    goto :goto_11c

    :catch_101
    move-exception v0

    move-object v10, v3

    move v7, v8

    :goto_104
    move-object v8, v0

    goto :goto_15a

    :catchall_106
    move-exception v0

    move v6, v2

    move-object v9, v3

    goto :goto_11b

    :catch_10a
    move-exception v0

    move-object v8, v0

    move v7, v2

    move-object v10, v3

    goto :goto_15a

    .line 4
    :cond_10f
    :try_start_10f
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Failed to obtain HTTP connection"

    .line 5
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_117} :catch_155
    .catchall {:try_start_10f .. :try_end_117} :catchall_117

    :catchall_117
    move-exception v0

    move v6, v2

    move-object v4, v3

    move-object v9, v4

    :goto_11b
    move-object v2, v0

    :goto_11c
    if-eqz v3, :cond_138

    .line 40
    :try_start_11e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_122

    goto :goto_138

    :catch_122
    move-exception v0

    .line 43
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhk;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zze:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 43
    invoke-virtual {v3, v1, v5, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_138
    :goto_138
    if-eqz v4, :cond_13d

    .line 36
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_13d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhk;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zze:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzd:Lcom/google/android/gms/measurement/internal/zzhg;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzhh;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 38
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/measurement/internal/zzhh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzhg;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzhj;)V

    .line 39
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    .line 44
    throw v2

    :catch_155
    move-exception v0

    move-object v8, v0

    move v7, v2

    move-object v4, v3

    move-object v10, v4

    :goto_15a
    if-eqz v3, :cond_176

    .line 40
    :try_start_15c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_15f} :catch_160

    goto :goto_176

    :catch_160
    move-exception v0

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhk;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zze:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 43
    invoke-virtual {v2, v1, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_176
    :goto_176
    if-eqz v4, :cond_17b

    .line 36
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhk;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zze:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzhi;->zzd:Lcom/google/android/gms/measurement/internal/zzhg;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzhh;

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 38
    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/zzhh;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzhg;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzhj;)V

    .line 39
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method
