.class Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;
.super Ljava/lang/Object;
.source "CacheableRequestPolicy.java"


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    return-void
.end method


# virtual methods
.method public isServableFromCache(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .registers 11

    .line 57
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v1

    .line 60
    sget-object v2, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/HttpVersion;->compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 61
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "non-HTTP/1.1 request was not serveable from cache"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v2

    .line 65
    :cond_21
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "HEAD"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 67
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "non-GET or non-HEAD request was not serveable from cache"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v2

    .line 71
    :cond_39
    const-string v0, "Pragma"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_4a

    .line 72
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "request with Pragma header was not serveable from cache"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v2

    .line 76
    :cond_4a
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    .line 77
    array-length v0, p1

    move v1, v2

    :goto_52
    if-ge v1, v0, :cond_8e

    aget-object v3, p1, v1

    .line 78
    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_5c
    if-ge v5, v4, :cond_8b

    aget-object v6, v3, v5

    .line 79
    const-string v7, "no-store"

    .line 80
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    .line 79
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 81
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "Request with no-store was not serveable from cache"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v2

    .line 85
    :cond_74
    const-string v7, "no-cache"

    .line 86
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 87
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "Request with no-cache was not serveable from cache"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v2

    :cond_88
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    :cond_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 93
    :cond_8e
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "Request was serveable from cache"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
