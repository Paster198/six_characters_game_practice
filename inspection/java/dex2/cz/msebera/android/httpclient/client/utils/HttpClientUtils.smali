.class public Lcz/msebera/android/httpclient/client/utils/HttpClientUtils;
.super Ljava/lang/Object;
.source "HttpClientUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 1

    if-eqz p0, :cond_b

    .line 72
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 75
    :try_start_8
    invoke-static {p0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public static closeQuietly(Lcz/msebera/android/httpclient/client/HttpClient;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 140
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_b

    .line 142
    :try_start_6
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method public static closeQuietly(Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)V
    .registers 2

    if-eqz p0, :cond_12

    .line 108
    :try_start_2
    invoke-interface {p0}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_d

    .line 110
    :try_start_9
    invoke-interface {p0}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    return-void

    :catchall_d
    move-exception v0

    invoke-interface {p0}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method
