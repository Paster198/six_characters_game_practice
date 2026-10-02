.class final Lcom/google/android/gms/internal/gtm/zzsc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzsd;


# instance fields
.field private zza:Ljava/net/HttpURLConnection;

.field private zzb:Ljava/io/InputStream;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzsc;->zzb:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x4e20

    .line 4
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 5
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzsc;->zza:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_24

    .line 7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzsc;->zzb:Ljava/io/InputStream;

    return-object p1

    :cond_24
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    .line 8
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Bad response: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x194

    if-eq v0, v1, :cond_4b

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_45

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzsf;

    .line 10
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzsf;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_45
    new-instance v0, Ljava/io/IOException;

    .line 11
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_4b
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 9
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzsc;->zza:Ljava/net/HttpURLConnection;

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzsc;->zzb:Ljava/io/InputStream;

    if-eqz v1, :cond_28

    .line 1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_28

    :catch_a
    move-exception v1

    .line 2
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "HttpUrlConnectionNetworkClient: Error when closing http input stream: "

    if-eqz v3, :cond_20

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 3
    :cond_20
    new-instance v2, Ljava/lang/String;

    .line 2
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3
    :goto_25
    invoke-static {v2, v1}, Lcom/google/android/gms/tagmanager/zzdh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28
    :goto_28
    if-eqz v0, :cond_2d

    .line 4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2d
    return-void
.end method
