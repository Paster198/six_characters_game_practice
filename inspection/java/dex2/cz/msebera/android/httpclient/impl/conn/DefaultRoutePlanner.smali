.class public Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;
.super Ljava/lang/Object;
.source "DefaultRoutePlanner.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;


# instance fields
.field private final schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_8

    .line 59
    :cond_6
    sget-object p1, Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;

    :goto_8
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    return-void
.end method


# virtual methods
.method protected determineProxy(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpHost;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 68
    const-string v0, "Request"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_5b

    .line 72
    invoke-static {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 75
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getProxy()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;->determineProxy(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    .line 81
    :cond_1d
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result p2

    if-gtz p2, :cond_43

    .line 83
    :try_start_23
    new-instance p2, Lcz/msebera/android/httpclient/HttpHost;

    .line 84
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    .line 85
    invoke-interface {v2, p1}, Lcz/msebera/android/httpclient/conn/SchemePortResolver;->resolve(Lcz/msebera/android/httpclient/HttpHost;)I

    move-result v2

    .line 86
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, v2, p1}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_36
    .catch Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException; {:try_start_23 .. :try_end_36} :catch_38

    move-object p1, p2

    goto :goto_43

    :catch_38
    move-exception p1

    .line 88
    new-instance p2, Lcz/msebera/android/httpclient/HttpException;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/UnsupportedSchemeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 93
    :cond_43
    :goto_43
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "https"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez v0, :cond_55

    .line 95
    new-instance p3, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {p3, p1, v1, p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Z)V

    return-object p3

    .line 97
    :cond_55
    new-instance p3, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {p3, p1, v1, v0, p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/HttpHost;Z)V

    return-object p3

    .line 70
    :cond_5b
    new-instance p1, Lcz/msebera/android/httpclient/ProtocolException;

    const-string p2, "Target host is not specified"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
