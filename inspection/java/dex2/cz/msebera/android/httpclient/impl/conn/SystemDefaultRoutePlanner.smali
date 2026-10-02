.class public Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;
.super Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;
.source "SystemDefaultRoutePlanner.java"


# instance fields
.field private final proxySelector:Ljava/net/ProxySelector;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;Ljava/net/ProxySelector;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    if-eqz p2, :cond_6

    goto :goto_a

    .line 61
    :cond_6
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object p2

    :goto_a
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    return-void
.end method

.method public constructor <init>(Ljava/net/ProxySelector;)V
    .registers 3

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;Ljava/net/ProxySelector;)V

    return-void
.end method

.method private chooseProxy(Ljava/util/List;)Ljava/net/Proxy;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;)",
            "Ljava/net/Proxy;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-nez v0, :cond_27

    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 109
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Proxy;

    .line 110
    sget-object v3, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner$1;->$SwitchMap$java$net$Proxy$Type:[I

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_23

    const/4 v4, 0x2

    if-eq v3, v4, :cond_23

    goto :goto_24

    :cond_23
    move-object v0, v2

    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_27
    if-nez v0, :cond_2c

    .line 127
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object p1

    :cond_2c
    return-object v0
.end method

.method private getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 3

    .line 100
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 101
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected determineProxy(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpHost;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 75
    :try_start_0
    new-instance p2, Ljava/net/URI;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->toURI()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_9} :catch_52

    .line 79
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;->chooseProxy(Ljava/util/List;)Ljava/net/Proxy;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p2

    sget-object p3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p2, p3, :cond_50

    .line 84
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/InetSocketAddress;

    if-eqz p2, :cond_37

    .line 87
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    .line 89
    new-instance p2, Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;->getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-direct {p2, p3, p1}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;I)V

    return-object p2

    .line 85
    :cond_37
    new-instance p2, Lcz/msebera/android/httpclient/HttpException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unable to handle non-Inet proxy address: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_50
    const/4 p1, 0x0

    return-object p1

    :catch_52
    move-exception p2

    .line 77
    new-instance p3, Lcz/msebera/android/httpclient/HttpException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot convert host to URI: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method
