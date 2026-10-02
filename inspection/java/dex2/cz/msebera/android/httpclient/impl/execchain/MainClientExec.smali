.class public Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;
.super Ljava/lang/Object;
.source "MainClientExec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# instance fields
.field private final authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

.field private final connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private final keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private final proxyHttpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private final requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private final routeDirector:Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;

.field private final targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private final userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)V
    .registers 17

    .line 143
    new-instance v5, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    const/4 v0, 0x1

    new-array v0, v0, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    new-instance v1, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {v5, v0}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)V
    .registers 11

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 115
    const-string v0, "HTTP request executor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    const-string v0, "Client connection manager"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    const-string v0, "Connection reuse strategy"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v0, "Connection keep alive strategy"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v0, "Proxy HTTP processor"

    invoke-static {p5, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    const-string v0, "Target authentication strategy"

    invoke-static {p6, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    const-string v0, "Proxy authentication strategy"

    invoke-static {p7, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    const-string v0, "User token handler"

    invoke-static {p8, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    .line 124
    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->routeDirector:Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;

    .line 125
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 126
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 127
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 128
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 129
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyHttpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 130
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 131
    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 132
    iput-object p8, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    return-void
.end method

.method private createTunnelToProxy(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 541
    new-instance p1, Lcz/msebera/android/httpclient/HttpException;

    const-string p2, "Proxy chains are not supported."

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createTunnelToTarget(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    invoke-virtual {p5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectTimeout()I

    move-result v1

    .line 451
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    .line 452
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v4

    .line 455
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v2

    .line 456
    new-instance v9, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    const-string v3, "CONNECT"

    invoke-interface {p4}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object p4

    invoke-direct {v9, v3, v2, p4}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 458
    iget-object p4, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyHttpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {p4, v9, v2, p5}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->preProcess(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    const/4 p4, 0x0

    move-object v2, p4

    :goto_28
    const/4 v3, 0x0

    if-nez v2, :cond_ac

    .line 461
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_39

    .line 462
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    if-lez v1, :cond_36

    move v3, v1

    :cond_36
    invoke-interface {v2, p2, p3, v3, p5}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->connect(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 469
    :cond_39
    const-string v2, "Proxy-Authorization"

    invoke-interface {v9, v2}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 470
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    invoke-virtual {v2, v9, p1, p5}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->generateAuthResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 472
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-virtual {v2, v9, p2, p5}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v5

    .line 474
    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_93

    .line 480
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 481
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object v7, p1

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 483
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    invoke-virtual/range {v3 .. v8}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 486
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {p1, v5, v8}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 487
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p5, "Connection kept alive"

    invoke-virtual {p1, p5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 489
    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    .line 490
    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    goto :goto_8b

    .line 492
    :cond_88
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    :goto_8b
    move-object v2, p4

    goto :goto_90

    :cond_8d
    move-object v7, p1

    move-object v8, p5

    :cond_8f
    move-object v2, v5

    :goto_90
    move-object p1, v7

    move-object p5, v8

    goto :goto_28

    .line 476
    :cond_93
    new-instance p1, Lcz/msebera/android/httpclient/HttpException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected response to CONNECT request: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 500
    :cond_ac
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p3, 0x12b

    if-le p1, p3, :cond_e2

    .line 505
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_c6

    .line 507
    new-instance p3, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;

    invoke-direct {p3, p1}, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {v2, p3}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 510
    :cond_c6
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    .line 511
    new-instance p1, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "CONNECT refused by proxy: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)V

    throw p1

    :cond_e2
    return v3
.end method

.method private needAuthentication(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z
    .registers 16

    .line 550
    invoke-virtual {p5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 552
    invoke-virtual {p5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    if-nez v0, :cond_14

    .line 554
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    .line 556
    :cond_14
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v1

    if-gez v1, :cond_31

    .line 557
    new-instance v1, Lcz/msebera/android/httpclient/HttpHost;

    .line 558
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v3

    .line 560
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v5, v1

    goto :goto_32

    :cond_31
    move-object v5, v0

    .line 562
    :goto_32
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object v8, p1

    move-object v6, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p1

    move-object p4, v5

    move-object v2, v6

    move-object v5, v9

    .line 565
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p5

    if-nez p5, :cond_4a

    .line 568
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p5

    :cond_4a
    move-object v1, p5

    .line 570
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p2

    if-eqz p1, :cond_62

    .line 574
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object v6, v2

    move-object v9, v5

    move-object v5, p4

    invoke-virtual/range {v4 .. v9}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p1

    return p1

    :cond_62
    if-eqz p2, :cond_6d

    .line 578
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p1

    return p1

    :cond_6d
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method establishRoute(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    invoke-virtual {p5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectTimeout()I

    move-result v0

    .line 371
    new-instance v1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-direct {v1, p3}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;-><init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 374
    :goto_d
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->toRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v2

    .line 375
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->routeDirector:Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;

    invoke-interface {v3, p3, v2}, Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;->nextStep(Lcz/msebera/android/httpclient/conn/routing/RouteInfo;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_de

    move-object p1, p0

    .line 426
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unknown step indicator "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " from RouteDirector."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 415
    :pswitch_37
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {v2, p2, p3, p5}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->upgrade(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 416
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isSecure()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layerProtocol(Z)V

    goto :goto_5c

    .line 408
    :pswitch_44
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getHopCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 409
    invoke-direct {p0, p3, v2, p5}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->createTunnelToProxy(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z

    move-result v4

    .line 410
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Tunnel to proxy created."

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 411
    invoke-virtual {p3, v2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getHopTarget(I)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V

    :goto_5c
    move-object v5, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto/16 :goto_b2

    .line 397
    :pswitch_64
    invoke-direct/range {p0 .. p5}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->createTunnelToTarget(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z

    move-result v2

    move-object v5, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 399
    iget-object v4, p1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Tunnel to target created."

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 400
    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelTarget(Z)V

    goto :goto_b2

    :pswitch_79
    move-object v5, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 388
    iget-object v2, p1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    if-lez v0, :cond_85

    move v6, v0

    goto :goto_86

    :cond_85
    move v6, v4

    :goto_86
    invoke-interface {v2, p3, p4, v6, v5}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->connect(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 393
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    .line 394
    invoke-virtual {v1, v2, v4}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connectProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V

    goto :goto_b2

    :pswitch_91
    move-object v5, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 380
    iget-object v2, p1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    if-lez v0, :cond_9c

    move v4, v0

    :cond_9c
    invoke-interface {v2, p3, p4, v4, v5}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->connect(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 385
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isSecure()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connectTarget(Z)V

    goto :goto_b2

    :pswitch_a7
    move-object v5, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 423
    iget-object v2, p1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {v2, p3, p4, v5}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->routeComplete(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    :goto_b2
    if-gtz v3, :cond_b5

    return-void

    :cond_b5
    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, v5

    goto/16 :goto_d

    :pswitch_bc
    move-object p1, p0

    move-object p4, p3

    .line 420
    new-instance p2, Lcz/msebera/android/httpclient/HttpException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Unable to establish route: planned = "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "; current = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_de
    .packed-switch -0x1
        :pswitch_bc
        :pswitch_a7
        :pswitch_91
        :pswitch_79
        :pswitch_64
        :pswitch_44
        :pswitch_37
    .end packed-switch
.end method

.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v0, p4

    .line 154
    const-string v7, "Proxy-Authorization"

    const-string v8, "Authorization"

    const-string v2, "HTTP route"

    invoke-static {v4, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    const-string v2, "HTTP request"

    invoke-static {v5, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    const-string v2, "HTTP context"

    invoke-static {v6, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetAuthState()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 160
    new-instance v2, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    .line 161
    const-string v3, "http.auth.target-scope"

    invoke-virtual {v6, v3, v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2d
    move-object v9, v2

    .line 163
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getProxyAuthState()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 165
    new-instance v2, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    .line 166
    const-string v3, "http.auth.proxy-scope"

    invoke-virtual {v6, v3, v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    :cond_3e
    instance-of v3, v5, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v3, :cond_48

    .line 170
    move-object v3, v5

    check-cast v3, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-static {v3}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->enhance(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    .line 173
    :cond_48
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getUserToken()Ljava/lang/Object;

    move-result-object v10

    .line 175
    iget-object v3, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {v3, v4, v10}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ConnectionRequest;

    move-result-object v3

    .line 176
    const-string v11, "Request aborted"

    if-eqz v0, :cond_69

    .line 177
    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v12

    if-nez v12, :cond_60

    .line 181
    invoke-interface {v0, v3}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->setCancellable(Lcz/msebera/android/httpclient/concurrent/Cancellable;)V

    goto :goto_69

    .line 178
    :cond_60
    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/ConnectionRequest;->cancel()Z

    .line 179
    new-instance v0, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    invoke-direct {v0, v11}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_69
    :goto_69
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v12

    .line 189
    :try_start_6d
    invoke-virtual {v12}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v13

    const-wide/16 v16, 0x0

    if-lez v13, :cond_77

    int-to-long v14, v13

    goto :goto_79

    :cond_77
    move-wide/from16 v14, v16

    .line 190
    :goto_79
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v14, v15, v13}, Lcz/msebera/android/httpclient/conn/ConnectionRequest;->get(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/HttpClientConnection;

    move-result-object v3
    :try_end_7f
    .catch Ljava/lang/InterruptedException; {:try_start_6d .. :try_end_7f} :catch_340
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6d .. :try_end_7f} :catch_32f

    .line 202
    const-string v13, "http.connection"

    invoke-virtual {v6, v13, v3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    invoke-virtual {v12}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isStaleConnectionCheckEnabled()Z

    move-result v13

    if-eqz v13, :cond_a7

    .line 206
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpClientConnection;->isOpen()Z

    move-result v13

    if-eqz v13, :cond_a7

    .line 207
    iget-object v13, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v14, "Stale connection check"

    invoke-virtual {v13, v14}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 208
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpClientConnection;->isStale()Z

    move-result v13

    if-eqz v13, :cond_a7

    .line 209
    iget-object v13, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v14, "Stale connection detected"

    invoke-virtual {v13, v14}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 210
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    .line 215
    :cond_a7
    new-instance v13, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    iget-object v14, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iget-object v15, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-direct {v13, v14, v15, v3}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/HttpClientConnection;)V

    if-eqz v0, :cond_c2

    .line 218
    :try_start_b2
    invoke-interface {v0, v13}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->setCancellable(Lcz/msebera/android/httpclient/concurrent/Cancellable;)V

    goto :goto_c2

    :catch_b6
    move-exception v0

    goto/16 :goto_318

    :catch_b9
    move-exception v0

    goto/16 :goto_31c

    :catch_bc
    move-exception v0

    goto/16 :goto_320

    :catch_bf
    move-exception v0

    goto/16 :goto_324

    :cond_c2
    :goto_c2
    const/4 v14, 0x1

    move v15, v14

    :goto_c4
    if-le v15, v14, :cond_d5

    .line 224
    invoke-static {v5}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->isRepeatable(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v18

    if-eqz v18, :cond_cd

    goto :goto_d5

    .line 225
    :cond_cd
    new-instance v0, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;

    const-string v2, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d5
    :goto_d5
    if-eqz v0, :cond_e4

    .line 229
    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v18

    if-nez v18, :cond_de

    goto :goto_e4

    .line 230
    :cond_de
    new-instance v0, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    invoke-direct {v0, v11}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_e4
    :goto_e4
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpClientConnection;->isOpen()Z

    move-result v18

    if-nez v18, :cond_13e

    .line 234
    iget-object v14, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;
    :try_end_ec
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_b2 .. :try_end_ec} :catch_bf
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_b2 .. :try_end_ec} :catch_bc
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_ec} :catch_b9
    .catch Ljava/lang/RuntimeException; {:try_start_b2 .. :try_end_ec} :catch_b6

    :try_start_ec
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v2

    const-string v2, "Opening connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_104
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_ec .. :try_end_104} :catch_139
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_ec .. :try_end_104} :catch_134
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_104} :catch_12f
    .catch Ljava/lang/RuntimeException; {:try_start_ec .. :try_end_104} :catch_12a

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    .line 236
    :try_start_108
    invoke-virtual/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->establishRoute(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)V
    :try_end_10b
    .catch Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException; {:try_start_108 .. :try_end_10b} :catch_110
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_108 .. :try_end_10b} :catch_bf
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_108 .. :try_end_10b} :catch_bc
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10b} :catch_b9
    .catch Ljava/lang/RuntimeException; {:try_start_108 .. :try_end_10b} :catch_b6

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    move-object v14, v5

    goto :goto_142

    :catch_110
    move-exception v0

    .line 238
    :try_start_111
    iget-object v2, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_122

    .line 239
    iget-object v2, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 241
    :cond_122
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;->getResponse()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    move-object/from16 v19, v10

    goto/16 :goto_2e6

    :catch_12a
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_318

    :catch_12f
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_31c

    :catch_134
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_320

    :catch_139
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_324

    :cond_13e
    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    move-object v14, v5

    .line 245
    :goto_142
    invoke-virtual {v12}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getSocketTimeout()I

    move-result v4

    if-ltz v4, :cond_14b

    .line 247
    invoke-interface {v2, v4}, Lcz/msebera/android/httpclient/HttpClientConnection;->setSocketTimeout(I)V

    :cond_14b
    if-eqz v0, :cond_15a

    .line 250
    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v4

    if-nez v4, :cond_154

    goto :goto_15a

    .line 251
    :cond_154
    new-instance v0, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    invoke-direct {v0, v11}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_15a
    :goto_15a
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_181

    .line 255
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v10

    const-string v10, "Executing request "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_183

    :cond_181
    move-object/from16 v19, v10

    .line 258
    :goto_183
    invoke-virtual {v14, v8}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b2

    .line 259
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1ad

    .line 260
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Target auth state: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 262
    :cond_1ad
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    invoke-virtual {v4, v14, v9, v6}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->generateAuthResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 264
    :cond_1b2
    invoke-virtual {v14, v7}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e7

    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v4

    if-nez v4, :cond_1e7

    .line 265
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1e2

    .line 266
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Proxy auth state: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 268
    :cond_1e2
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    invoke-virtual {v4, v14, v3, v6}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->generateAuthResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 271
    :cond_1e7
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-virtual {v4, v14, v2, v6}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v5

    .line 274
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {v4, v5, v6}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v4
    :try_end_1f3
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_111 .. :try_end_1f3} :catch_bf
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_111 .. :try_end_1f3} :catch_bc
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_1f3} :catch_b9
    .catch Ljava/lang/RuntimeException; {:try_start_111 .. :try_end_1f3} :catch_b6

    if-eqz v4, :cond_254

    .line 276
    :try_start_1f5
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    move-object v10, v2

    move-object/from16 v20, v3

    invoke-interface {v4, v5, v6}, Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)J

    move-result-wide v2

    .line 277
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4
    :try_end_204
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_1f5 .. :try_end_204} :catch_139
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_1f5 .. :try_end_204} :catch_134
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_204} :catch_12f
    .catch Ljava/lang/RuntimeException; {:try_start_1f5 .. :try_end_204} :catch_12a

    if-eqz v4, :cond_249

    cmp-long v4, v2, v16

    if-lez v4, :cond_22c

    .line 280
    :try_start_20a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    const-string v5, "for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_22b
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_20a .. :try_end_22b} :catch_bf
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_20a .. :try_end_22b} :catch_bc
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_22b} :catch_b9
    .catch Ljava/lang/RuntimeException; {:try_start_20a .. :try_end_22b} :catch_b6

    goto :goto_230

    :cond_22c
    move-object/from16 v21, v5

    .line 282
    :try_start_22e
    const-string v4, "indefinitely"

    .line 284
    :goto_230
    iget-object v5, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection can be kept alive "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_24b

    :cond_249
    move-object/from16 v21, v5

    .line 286
    :goto_24b
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v2, v3, v1}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->setValidFor(JLjava/util/concurrent/TimeUnit;)V

    .line 287
    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->markReusable()V

    goto :goto_25c

    :cond_254
    move-object v10, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    .line 289
    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->markNonReusable()V
    :try_end_25c
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_22e .. :try_end_25c} :catch_139
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_22e .. :try_end_25c} :catch_134
    .catch Ljava/io/IOException; {:try_start_22e .. :try_end_25c} :catch_12f
    .catch Ljava/lang/RuntimeException; {:try_start_22e .. :try_end_25c} :catch_12a

    :goto_25c
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object v2, v9

    move-object/from16 v3, v20

    move-object/from16 v5, v21

    .line 292
    :try_start_267
    invoke-direct/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->needAuthentication(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z

    move-result v9

    if-eqz v9, :cond_2e5

    .line 295
    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v4

    .line 296
    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->isReusable()Z

    move-result v5

    if-eqz v5, :cond_27b

    .line 297
    invoke-static {v4}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    goto :goto_2c2

    .line 299
    :cond_27b
    invoke-interface {v10}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    .line 300
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v4

    sget-object v5, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->SUCCESS:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    if-ne v4, v5, :cond_2a0

    .line 301
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v4

    if-eqz v4, :cond_2a0

    .line 302
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v4

    if-eqz v4, :cond_2a0

    .line 303
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Resetting proxy auth state"

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 304
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 306
    :cond_2a0
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v4

    sget-object v5, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->SUCCESS:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    if-ne v4, v5, :cond_2c2

    .line 307
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v4

    if-eqz v4, :cond_2c2

    .line 308
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v4

    if-eqz v4, :cond_2c2

    .line 309
    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Resetting target auth state"

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 310
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 314
    :cond_2c2
    :goto_2c2
    invoke-virtual {v14}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v4

    .line 315
    invoke-interface {v4, v8}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2cf

    .line 316
    invoke-virtual {v14, v8}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 318
    :cond_2cf
    invoke-interface {v4, v7}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2d8

    .line 319
    invoke-virtual {v14, v7}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    :cond_2d8
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, p1

    move-object v9, v2

    move-object v2, v3

    move-object v3, v10

    move-object v5, v14

    move-object/from16 v10, v19

    const/4 v14, 0x1

    goto/16 :goto_c4

    :cond_2e5
    move-object v0, v5

    :goto_2e6
    if-nez v19, :cond_2f4

    .line 327
    iget-object v2, v1, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    invoke-interface {v2, v6}, Lcz/msebera/android/httpclient/client/UserTokenHandler;->getUserToken(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v10

    .line 328
    const-string v2, "http.user-token"

    invoke-virtual {v6, v2, v10}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2f6

    :cond_2f4
    move-object/from16 v10, v19

    :goto_2f6
    if-eqz v10, :cond_2fb

    .line 331
    invoke-virtual {v13, v10}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->setState(Ljava/lang/Object;)V

    .line 335
    :cond_2fb
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_30e

    .line 336
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v2

    if-nez v2, :cond_308

    goto :goto_30e

    .line 341
    :cond_308
    new-instance v2, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;

    invoke-direct {v2, v0, v13}, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;-><init>(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V

    return-object v2

    .line 338
    :cond_30e
    :goto_30e
    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->releaseConnection()V

    .line 339
    new-instance v2, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;-><init>(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V
    :try_end_317
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_267 .. :try_end_317} :catch_bf
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_267 .. :try_end_317} :catch_bc
    .catch Ljava/io/IOException; {:try_start_267 .. :try_end_317} :catch_b9
    .catch Ljava/lang/RuntimeException; {:try_start_267 .. :try_end_317} :catch_b6

    return-object v2

    .line 355
    :goto_318
    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 356
    throw v0

    .line 352
    :goto_31c
    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 353
    throw v0

    .line 349
    :goto_320
    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 350
    throw v0

    .line 344
    :goto_324
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "Connection has been shut down"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v2, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 347
    throw v2

    :catch_32f
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_337

    goto :goto_338

    :cond_337
    move-object v0, v2

    .line 199
    :goto_338
    new-instance v2, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    const-string v3, "Request execution failed"

    invoke-direct {v2, v3, v0}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_340
    move-exception v0

    .line 192
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 193
    new-instance v2, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    invoke-direct {v2, v11, v0}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
