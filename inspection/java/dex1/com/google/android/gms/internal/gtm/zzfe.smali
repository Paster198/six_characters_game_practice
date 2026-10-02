.class final Lcom/google/android/gms/internal/gtm/zzfe;
.super Lcom/google/android/gms/internal/gtm/zzbs;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\n"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzfe;->zza:[B

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbs;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzbt;->zza:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfs;->zzd(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v0, "GoogleAnalytics"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    .line 4
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbv;->zzr()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzfo;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzc:Lcom/google/android/gms/internal/gtm/zzfo;

    return-void
.end method

.method static bridge synthetic zzf()[B
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfe;->zza:[B

    return-object v0
.end method

.method private final zzg(Ljava/net/URL;[B)I
    .registers 8

    const-string v0, "Error closing http post connection output stream"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v1, p2

    const-string v2, "POST bytes, url"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzH(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfe;->zzV()Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/String;

    .line 5
    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    const-string v3, "Post payload\n"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_22
    const/4 v2, 0x0

    .line 6
    :try_start_23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzfe;->zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2e} :catch_76
    .catchall {:try_start_23 .. :try_end_2e} :catchall_72

    const/4 v3, 0x1

    .line 8
    :try_start_2f
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 9
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 10
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 11
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 12
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzfe;->zzk(Ljava/net/HttpURLConnection;)V

    .line 14
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_52

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzs()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbq;->zzi()V

    move p2, v1

    :cond_52
    const-string v1, "POST status"

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/internal/gtm/zzbr;->zzG(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_5b} :catch_6d
    .catchall {:try_start_2f .. :try_end_5b} :catchall_6b

    if-eqz v2, :cond_65

    .line 18
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_65

    :catch_61
    move-exception v1

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_65
    :goto_65
    if-eqz p1, :cond_6a

    .line 20
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6a
    return p2

    :catchall_6b
    move-exception p2

    goto :goto_93

    :catch_6d
    move-exception p2

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_79

    :catchall_72
    move-exception p1

    move-object p2, p1

    move-object p1, v2

    goto :goto_93

    :catch_76
    move-exception p1

    move-object p2, p1

    move-object p1, v2

    :goto_79
    :try_start_79
    const-string v1, "Network POST connection error"

    .line 17
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_8f

    if-eqz p1, :cond_88

    .line 18
    :try_start_80
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_88

    :catch_84
    move-exception p1

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_88
    :goto_88
    if-eqz v2, :cond_8d

    .line 20
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8d
    const/4 p1, 0x0

    return p1

    :catchall_8f
    move-exception p2

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    :goto_93
    if-eqz v2, :cond_9d

    .line 18
    :try_start_95
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_9d

    :catch_99
    move-exception v1

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9d
    :goto_9d
    if-eqz p1, :cond_a2

    .line 20
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 21
    :cond_a2
    throw p2
.end method

.method private final zzh()Ljava/net/URL;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzeu;->zzt:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 3
    :cond_1d
    new-instance v1, Ljava/lang/String;

    .line 1
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 3
    :goto_23
    :try_start_23
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/net/MalformedURLException; {:try_start_23 .. :try_end_28} :catch_29

    return-object v1

    :catch_29
    move-exception v0

    .line 1
    const-string v1, "Error trying to parse the hardcoded host url"

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzi(Lcom/google/android/gms/internal/gtm/zzex;)Ljava/net/URL;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzh()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_44

    .line 4
    :cond_1f
    new-instance v0, Ljava/lang/String;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_43

    .line 3
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_44

    :cond_3e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_43
    move-object p1, v0

    .line 4
    :goto_44
    :try_start_44
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/net/MalformedURLException; {:try_start_44 .. :try_end_49} :catch_4a

    return-object v0

    :catch_4a
    move-exception p1

    .line 3
    const-string v0, "Error trying to parse the hardcoded host url"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzj(Lcom/google/android/gms/internal/gtm/zzex;Ljava/lang/String;)Ljava/net/URL;
    .registers 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzh()Z

    move-result p1

    const-string v0, "?"

    if-eqz p1, :cond_3c

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6f

    .line 3
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_6f
    :try_start_6f
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/net/MalformedURLException; {:try_start_6f .. :try_end_74} :catch_75

    return-object p2

    :catch_75
    move-exception p1

    .line 3
    const-string p2, "Error trying to parse the hardcoded host url"

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzk(Ljava/net/HttpURLConnection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error closing http connection input stream"

    .line 1
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_1d

    const/16 v1, 0x400

    :try_start_8
    new-array v1, v1, [B

    .line 2
    :cond_a
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1b

    if-gtz v2, :cond_a

    if-eqz p1, :cond_1a

    .line 3
    :try_start_12
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1a
    return-void

    :catchall_1b
    move-exception v1

    goto :goto_1f

    :catchall_1d
    move-exception v1

    const/4 p1, 0x0

    :goto_1f
    if-eqz p1, :cond_29

    .line 3
    :try_start_21
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception p1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    :cond_29
    :goto_29
    throw v1
.end method

.method private static final zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x26

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_b
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/gtm/zzex;Z)Ljava/lang/String;
    .registers 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :try_start_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzg()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_18} :catch_9b

    const-string v3, "z"

    const-string v4, "qt"

    const-string v5, "ht"

    if-eqz v2, :cond_58

    :try_start_20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 6
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "AppUID"

    .line 7
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 8
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "_gmsv"

    .line 9
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v6, v2}, Lcom/google/android/gms/internal/gtm/zzfe;->zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 11
    :cond_58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzd()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/google/android/gms/internal/gtm/zzfe;->zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzd()J

    move-result-wide v5

    sub-long/2addr v1, v5

    .line 13
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/gtm/zzfe;->zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    if-eqz p2, :cond_96

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzc()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long p2, v1, v4

    if-eqz p2, :cond_8b

    .line 17
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_93

    .line 16
    :cond_8b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzex;->zzb()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 18
    :goto_93
    invoke-static {v0, v3, p1}, Lcom/google/android/gms/internal/gtm/zzfe;->zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_9a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_9a} :catch_9b

    return-object p1

    :catch_9b
    move-exception p1

    .line 16
    const-string p2, "Failed to encode name or value"

    .line 20
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_41

    .line 4
    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzeu;->zzE:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzeu;->zzF:Lcom/google/android/gms/internal/gtm/zzet;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 10
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object p1

    .line 2
    :cond_41
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to obtain http connection"

    .line 3
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(Ljava/util/List;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzex;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    const-string v2, "Error closing http compressed post connection output stream"

    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzct;->zza()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_88

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzfe;->zzc:Lcom/google/android/gms/internal/gtm/zzfo;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 6
    sget-object v5, Lcom/google/android/gms/internal/gtm/zzeu;->zzC:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    .line 5
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/gtm/zzfo;->zzc(J)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_88

    .line 7
    :cond_38
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzv:Lcom/google/android/gms/internal/gtm/zzet;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "BATCH_BY_SESSION"

    .line 9
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    :goto_4b
    move v0, v4

    goto :goto_72

    .line 16
    :cond_4d
    const-string v5, "BATCH_BY_TIME"

    .line 10
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    goto :goto_4b

    :cond_56
    const-string v5, "BATCH_BY_BRUTE_FORCE"

    .line 11
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    goto :goto_4b

    :cond_5f
    const-string v5, "BATCH_BY_COUNT"

    .line 12
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    goto :goto_4b

    :cond_68
    const-string v5, "BATCH_BY_SIZE"

    .line 13
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    goto :goto_4b

    :cond_71
    const/4 v0, 0x0

    .line 14
    :goto_72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    sget-object v5, Lcom/google/android/gms/internal/gtm/zzeu;->zzw:Lcom/google/android/gms/internal/gtm/zzet;

    .line 15
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 16
    const-string v6, "GZIP"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eq v4, v5, :cond_86

    goto :goto_89

    :cond_86
    move v5, v4

    goto :goto_8a

    :cond_88
    :goto_88
    const/4 v0, 0x0

    :goto_89
    const/4 v5, 0x0

    :goto_8a
    const/16 v6, 0xc8

    if-eqz v0, :cond_221

    .line 48
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 49
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Uploading batched hits. compression, count"

    invoke-virtual {v1, v9, v0, v8}, Lcom/google/android/gms/internal/gtm/zzbr;->zzQ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzfd;

    .line 50
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/gtm/zzfd;-><init>(Lcom/google/android/gms/internal/gtm/zzfe;)V

    new-instance v9, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/gtm/zzex;

    .line 53
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/gtm/zzfd;->zzb(Lcom/google/android/gms/internal/gtm/zzex;)Z

    move-result v11

    if-nez v11, :cond_c8

    goto :goto_d4

    .line 54
    :cond_c8
    invoke-virtual {v10}, Lcom/google/android/gms/internal/gtm/zzex;->zzb()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    .line 53
    :cond_d4
    :goto_d4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzfd;->zza()I

    move-result v0

    if-nez v0, :cond_dc

    goto/16 :goto_220

    .line 55
    :cond_dc
    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzfe;->zzh()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_ec

    const-string v0, "Failed to build batching endpoint url"

    .line 56
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_ec
    if-eqz v5, :cond_1e3

    .line 58
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzfd;->zzc()[B

    move-result-object v5

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :try_start_f8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 62
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    new-instance v11, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v11, v10}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 64
    invoke-virtual {v11, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 65
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 66
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 67
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "POST compressed size, ratio %, url"

    .line 68
    array-length v12, v10

    .line 69
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    int-to-long v14, v12

    const-wide/16 v16, 0x64

    mul-long v14, v14, v16

    array-length v7, v5

    int-to-long v3, v7

    div-long/2addr v14, v3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 68
    invoke-virtual {v1, v11, v13, v3, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzI(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-le v12, v7, :cond_137

    const-string v3, "Compressed payload is larger then uncompressed. compressed, uncompressed"

    .line 70
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 71
    invoke-virtual {v1, v3, v13, v4}, Lcom/google/android/gms/internal/gtm/zzbr;->zzT(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    :cond_137
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfe;->zzV()Z

    move-result v3

    if-eqz v3, :cond_15a

    const-string v3, "Post payload"

    const-string v4, "\n"

    new-instance v7, Ljava/lang/String;

    .line 73
    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_151

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_157

    .line 97
    :cond_151
    new-instance v5, Ljava/lang/String;

    .line 73
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_157
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    :cond_15a
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzfe;->zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_15e} :catch_1b2
    .catchall {:try_start_f8 .. :try_end_15e} :catchall_1ac

    const/4 v0, 0x1

    .line 75
    :try_start_15f
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Encoding"

    const-string v4, "gzip"

    .line 76
    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 78
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 79
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_173} :catch_1a9
    .catchall {:try_start_15f .. :try_end_173} :catchall_1a4

    .line 80
    :try_start_173
    invoke-virtual {v4, v10}, Ljava/io/OutputStream;->write([B)V

    .line 81
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_179} :catch_19f
    .catchall {:try_start_173 .. :try_end_179} :catchall_19a

    .line 82
    :try_start_179
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/gtm/zzfe;->zzk(Ljava/net/HttpURLConnection;)V

    .line 83
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-ne v0, v6, :cond_18a

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzs()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbq;->zzi()V

    move v0, v6

    :cond_18a
    const-string v4, "POST status"

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/gtm/zzbr;->zzG(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_193} :catch_1a9
    .catchall {:try_start_179 .. :try_end_193} :catchall_1a4

    if-eqz v3, :cond_198

    .line 89
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_198
    move v3, v0

    goto :goto_1eb

    :catchall_19a
    move-exception v0

    move-object/from16 v16, v3

    move-object v7, v4

    goto :goto_1d2

    :catch_19f
    move-exception v0

    move-object v7, v3

    move-object/from16 v16, v4

    goto :goto_1b6

    :catchall_1a4
    move-exception v0

    move-object/from16 v16, v3

    const/4 v7, 0x0

    goto :goto_1d2

    :catch_1a9
    move-exception v0

    move-object v7, v3

    goto :goto_1b4

    :catchall_1ac
    move-exception v0

    move-object v3, v0

    const/4 v7, 0x0

    const/16 v16, 0x0

    goto :goto_1d3

    :catch_1b2
    move-exception v0

    const/4 v7, 0x0

    :goto_1b4
    const/16 v16, 0x0

    .line 13
    :goto_1b6
    :try_start_1b6
    const-string v3, "Network compressed POST connection error"

    .line 86
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1bb
    .catchall {:try_start_1b6 .. :try_end_1bb} :catchall_1cc

    if-eqz v16, :cond_1c5

    .line 87
    :try_start_1bd
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_1c0
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1c0} :catch_1c1

    goto :goto_1c5

    :catch_1c1
    move-exception v0

    .line 88
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1c5
    :goto_1c5
    if-eqz v7, :cond_1ca

    .line 89
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1ca
    const/4 v3, 0x0

    goto :goto_1eb

    :catchall_1cc
    move-exception v0

    move-object/from16 v3, v16

    move-object/from16 v16, v7

    move-object v7, v3

    :goto_1d2
    move-object v3, v0

    :goto_1d3
    if-eqz v7, :cond_1dd

    .line 87
    :try_start_1d5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1d8
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1d8} :catch_1d9

    goto :goto_1dd

    :catch_1d9
    move-exception v0

    .line 88
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1dd
    :goto_1dd
    if-eqz v16, :cond_1e2

    .line 89
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 90
    :cond_1e2
    throw v3

    .line 91
    :cond_1e3
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzfd;->zzc()[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/gtm/zzfe;->zzg(Ljava/net/URL;[B)I

    move-result v3

    :goto_1eb
    if-ne v3, v6, :cond_1fb

    .line 89
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzfd;->zza()I

    move-result v0

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Batched upload completed. Hits batched"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_220

    .line 93
    :cond_1fb
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Network error uploading hits. status code"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzct;->zza()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21c

    const-string v0, "Server instructed the client to stop batching"

    .line 95
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzfe;->zzc:Lcom/google/android/gms/internal/gtm/zzfo;

    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfo;->zzb()V

    .line 97
    :cond_21c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    :goto_220
    return-object v9

    .line 54
    :cond_221
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_321

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzex;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzex;->zzh()Z

    move-result v4

    const/16 v18, 0x1

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/gtm/zzfe;->zza(Lcom/google/android/gms/internal/gtm/zzex;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_257

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v4

    const-string v5, "Error formatting hit for upload"

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/gtm/zzfb;->zzb(Lcom/google/android/gms/internal/gtm/zzex;Ljava/lang/String;)V

    :goto_254
    const/4 v4, 0x0

    goto/16 :goto_309

    .line 22
    :cond_257
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 23
    sget-object v7, Lcom/google/android/gms/internal/gtm/zzeu;->zzu:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v5, v7, :cond_2c6

    .line 24
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/gtm/zzfe;->zzj(Lcom/google/android/gms/internal/gtm/zzex;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    if-nez v4, :cond_278

    const-string v0, "Failed to build collect GET endpoint url"

    .line 44
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V

    return-object v2

    .line 25
    :cond_278
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "GET request"

    .line 26
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/gtm/zzbr;->zzG(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    :try_start_280
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/gtm/zzfe;->zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_284
    .catch Ljava/io/IOException; {:try_start_280 .. :try_end_284} :catch_2b2
    .catchall {:try_start_280 .. :try_end_284} :catchall_2af

    .line 28
    :try_start_284
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 29
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/gtm/zzfe;->zzk(Ljava/net/HttpURLConnection;)V

    .line 30
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    if-ne v5, v6, :cond_298

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzs()Lcom/google/android/gms/internal/gtm/zzbq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzbq;->zzi()V

    move v5, v6

    :cond_298
    const-string v7, "GET status"

    .line 32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/gtm/zzbr;->zzG(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2a1
    .catch Ljava/io/IOException; {:try_start_284 .. :try_end_2a1} :catch_2ac
    .catchall {:try_start_284 .. :try_end_2a1} :catchall_2a9

    if-eqz v4, :cond_2a6

    .line 33
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2a6
    if-ne v5, v6, :cond_321

    goto :goto_254

    :catchall_2a9
    move-exception v0

    move-object v7, v4

    goto :goto_2c0

    :catch_2ac
    move-exception v0

    move-object v7, v4

    goto :goto_2b4

    :catchall_2af
    move-exception v0

    const/4 v7, 0x0

    goto :goto_2c0

    :catch_2b2
    move-exception v0

    const/4 v7, 0x0

    .line 90
    :goto_2b4
    :try_start_2b4
    const-string v3, "Network GET connection error"

    .line 45
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2b9
    .catchall {:try_start_2b4 .. :try_end_2b9} :catchall_2bf

    if-eqz v7, :cond_321

    .line 33
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_321

    :catchall_2bf
    move-exception v0

    :goto_2c0
    if-eqz v7, :cond_2c5

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 46
    :cond_2c5
    throw v0

    :cond_2c6
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/gtm/zzfe;->zza(Lcom/google/android/gms/internal/gtm/zzex;Z)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2d7

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v5

    const-string v7, "Error formatting hit for POST upload"

    invoke-virtual {v5, v3, v7}, Lcom/google/android/gms/internal/gtm/zzfb;->zzb(Lcom/google/android/gms/internal/gtm/zzex;Ljava/lang/String;)V

    goto :goto_309

    .line 36
    :cond_2d7
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 37
    array-length v7, v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    sget-object v8, Lcom/google/android/gms/internal/gtm/zzeu;->zzz:Lcom/google/android/gms/internal/gtm/zzet;

    .line 38
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v7, v8, :cond_2f7

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzz()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object v5

    const-string v7, "Hit payload exceeds size limit"

    invoke-virtual {v5, v3, v7}, Lcom/google/android/gms/internal/gtm/zzfb;->zzb(Lcom/google/android/gms/internal/gtm/zzex;Ljava/lang/String;)V

    goto :goto_309

    .line 40
    :cond_2f7
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/gtm/zzfe;->zzi(Lcom/google/android/gms/internal/gtm/zzex;)Ljava/net/URL;

    move-result-object v7

    if-nez v7, :cond_303

    const-string v0, "Failed to build collect POST endpoint url"

    .line 47
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V

    return-object v2

    .line 41
    :cond_303
    invoke-direct {v1, v7, v5}, Lcom/google/android/gms/internal/gtm/zzfe;->zzg(Ljava/net/URL;[B)I

    move-result v5

    if-ne v5, v6, :cond_321

    .line 42
    :goto_309
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzex;->zzb()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzct;->zzh()I

    move-result v5

    if-lt v3, v5, :cond_22e

    :cond_321
    :goto_321
    return-object v2
.end method

.method protected final zzd()V
    .registers 3

    const-string v0, "Network initialized. User agent"

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Ljava/lang/String;

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zze()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4
    :try_start_12
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_23

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x1

    return v0

    :cond_23
    :goto_23
    const-string v0, "No network connectivity"

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
