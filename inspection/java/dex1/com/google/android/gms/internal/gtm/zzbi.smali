.class public final Lcom/google/android/gms/internal/gtm/zzbi;
.super Lcom/google/android/gms/internal/gtm/zzbs;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field public static zza:Z


# instance fields
.field private zzb:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzfo;

.field private zzd:Ljava/lang/String;

.field private zze:Z

.field private final zzf:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbs;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zze:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzf:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbv;->zzr()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzfo;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzc:Lcom/google/android/gms/internal/gtm/zzfo;

    return-void
.end method

.method private final declared-synchronized zzc()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzc:Lcom/google/android/gms/internal/gtm/zzfo;

    const-wide/16 v1, 0x3e8

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzfo;->zzc(J)Z

    move-result v0

    if-eqz v0, :cond_170

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzc:Lcom/google/android/gms/internal/gtm/zzfo;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfo;->zzb()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_174

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    :try_start_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_1a} :catch_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1b
    .catchall {:try_start_12 .. :try_end_1a} :catchall_174

    goto :goto_2e

    :catch_1b
    move-exception v2

    .line 5
    :try_start_1c
    sget-boolean v3, Lcom/google/android/gms/internal/gtm/zzbi;->zza:Z

    if-nez v3, :cond_2d

    sput-boolean v0, Lcom/google/android/gms/internal/gtm/zzbi;->zza:Z

    const-string v3, "Error getting advertiser id"

    .line 4
    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2d

    .line 6
    :catch_28
    const-string v2, "IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added \'<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />\' to your application manifest file. See http://goo.gl/naFqQk for details."

    .line 5
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    move-object v2, v1

    .line 3
    :goto_2e
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzb:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v2, :cond_34

    move-object v4, v1

    goto :goto_38

    .line 6
    :cond_34
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v4

    .line 7
    :goto_38
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_40

    goto/16 :goto_15b

    .line 8
    :cond_40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzv()Lcom/google/android/gms/internal/gtm/zzcn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzcn;->zzb()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzf:Ljava/lang/Object;

    monitor-enter v6
    :try_end_4b
    .catchall {:try_start_1c .. :try_end_4b} :catchall_174

    :try_start_4b
    iget-boolean v7, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zze:Z
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_16d

    const/4 v8, 0x0

    if-nez v7, :cond_a7

    .line 9
    :try_start_50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v3

    const-string v7, "gaClientIdData"

    invoke-virtual {v3, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    const/16 v7, 0x80

    new-array v9, v7, [B

    .line 10
    invoke-virtual {v3, v9, v8, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    .line 11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v10

    if-lez v10, :cond_7a

    const-string v7, "Hash file seems corrupted, deleting it."

    .line 12
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v3

    const-string v7, "gaClientIdData"

    invoke-virtual {v3, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_a2

    :cond_7a
    if-gtz v7, :cond_85

    .line 24
    const-string v7, "Hash file is empty."

    .line 15
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_a2

    :cond_85
    new-instance v10, Ljava/lang/String;

    .line 17
    invoke-direct {v10, v9, v8, v7}, Ljava/lang/String;-><init>([BII)V
    :try_end_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_8a} :catch_a2
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_8a} :catch_90
    .catchall {:try_start_50 .. :try_end_8a} :catchall_16d

    .line 18
    :try_start_8a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_8a .. :try_end_8d} :catch_a1
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e
    .catchall {:try_start_8a .. :try_end_8d} :catchall_16d

    goto :goto_a1

    :catch_8e
    move-exception v1

    goto :goto_93

    :catch_90
    move-exception v3

    move-object v10, v1

    move-object v1, v3

    .line 35
    :goto_93
    :try_start_93
    const-string v3, "Error reading Hash file, deleting it"

    .line 19
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v1

    const-string v3, "gaClientIdData"

    invoke-virtual {v1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :catch_a1
    :goto_a1
    move-object v1, v10

    .line 14
    :catch_a2
    :goto_a2
    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzd:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zze:Z

    goto :goto_f2

    .line 18
    :cond_a7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzd:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f2

    if-nez v3, :cond_b2

    goto :goto_b6

    .line 22
    :cond_b2
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_b6
    if-nez v1, :cond_d8

    .line 34
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_cb

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d1

    :cond_cb
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_d1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbi;->zzf(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v6

    goto/16 :goto_159

    .line 23
    :cond_d8
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e7

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_ec

    :cond_e7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_ec
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbi;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzd:Ljava/lang/String;

    .line 24
    :cond_f2
    :goto_f2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_105

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10b

    .line 33
    :cond_105
    new-instance v1, Ljava/lang/String;

    .line 24
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_10b
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbi;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_117

    .line 26
    monitor-exit v6

    goto :goto_15e

    .line 37
    :cond_117
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzd:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 28
    monitor-exit v6

    goto :goto_15b

    :cond_121
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzd:Ljava/lang/String;

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13b

    const-string v0, "Resetting the client id because Advertising Id changed."

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzv()Lcom/google/android/gms/internal/gtm/zzcn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcn;->zze()Ljava/lang/String;

    move-result-object v5

    const-string v0, "New client Id"

    .line 32
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    :cond_13b
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_14e

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_154

    :cond_14e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_154
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbi;->zzf(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v6
    :try_end_159
    .catchall {:try_start_93 .. :try_end_159} :catchall_16d

    :goto_159
    if-eqz v0, :cond_15e

    .line 7
    :goto_15b
    :try_start_15b
    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzb:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    goto :goto_170

    .line 26
    :cond_15e
    :goto_15e
    const-string v0, "Failed to reset client id on adid change. Not using adid"

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    const-string v1, ""

    invoke-direct {v0, v1, v8}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzb:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_16c
    .catchall {:try_start_15b .. :try_end_16c} :catchall_174

    goto :goto_170

    :catchall_16d
    move-exception v0

    .line 35
    :try_start_16e
    monitor-exit v6
    :try_end_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_16d

    :try_start_16f
    throw v0

    .line 7
    :cond_170
    :goto_170
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzb:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_172
    .catchall {:try_start_16f .. :try_end_172} :catchall_174

    monitor-exit p0

    return-object v0

    :catchall_174
    move-exception v0

    :try_start_175
    monitor-exit p0
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_174

    throw v0
.end method

.method private static zze(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfs;->zze(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/math/BigInteger;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-direct {v2, v0, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%032X"

    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzf(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzbi;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Storing hashed adid."

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gaClientIdData"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbi;->zzd:Ljava/lang/String;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_20} :catch_22

    const/4 p1, 0x1

    return p1

    :catch_22
    move-exception p1

    const-string v1, "Error creating hash file"

    .line 7
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbi;->zzc()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    move-object v0, v1

    .line 4
    :goto_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    return-object v1

    :cond_17
    return-object v0
.end method

.method public final zzb()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbi;->zzc()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    return v1
.end method

.method protected final zzd()V
    .registers 1

    return-void
.end method
