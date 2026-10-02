.class public Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/RequestDirector;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

.field protected final connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

.field private execCount:I

.field protected final httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field protected final keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

.field private final maxRedirects:I

.field protected final params:Lcz/msebera/android/httpclient/params/HttpParams;

.field protected final proxyAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

.field protected final proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private redirectCount:I

.field protected final redirectHandler:Lcz/msebera/android/httpclient/client/RedirectHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

.field protected final requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field protected final retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

.field protected final reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field protected final routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

.field protected final targetAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

.field protected final targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field protected final userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

.field private virtualHost:Lcz/msebera/android/httpclient/HttpHost;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    new-instance v1, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-class p1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;

    invoke-direct {v1, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 p1, p10

    invoke-direct {v10, p1}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V

    new-instance v11, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 p1, p11

    invoke-direct {v11, p1}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 15

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    const-string v0, "Log"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    const-string v0, "Request executor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    const-string v0, "Client connection manager"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    const-string v0, "Connection reuse strategy"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    const-string v0, "Connection keep alive strategy"

    invoke-static {p5, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string v0, "Route planner"

    invoke-static {p6, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    const-string v0, "HTTP protocol processor"

    invoke-static {p7, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    const-string v0, "HTTP request retry handler"

    invoke-static {p8, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    const-string v0, "Redirect strategy"

    invoke-static {p9, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    const-string v0, "Target authentication strategy"

    invoke-static {p10, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    const-string v0, "Proxy authentication strategy"

    invoke-static {p11, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    const-string v0, "User token handler"

    invoke-static {p12, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    const-string v0, "HTTP parameters"

    invoke-static {p13, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 285
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    .line 286
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 287
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 288
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 289
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    .line 290
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    .line 291
    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 292
    iput-object p8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    .line 293
    iput-object p9, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 294
    iput-object p10, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 295
    iput-object p11, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    .line 296
    iput-object p12, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    .line 297
    iput-object p13, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 299
    instance-of p1, p9, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;

    const/4 p2, 0x0

    if-eqz p1, :cond_73

    .line 300
    check-cast p9, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;

    invoke-virtual {p9}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->getHandler()Lcz/msebera/android/httpclient/client/RedirectHandler;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectHandler:Lcz/msebera/android/httpclient/client/RedirectHandler;

    goto :goto_75

    .line 302
    :cond_73
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectHandler:Lcz/msebera/android/httpclient/client/RedirectHandler;

    .line 304
    :goto_75
    instance-of p1, p10, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    if-eqz p1, :cond_82

    .line 305
    check-cast p10, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    invoke-virtual {p10}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->getHandler()Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    goto :goto_84

    .line 307
    :cond_82
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    .line 309
    :goto_84
    instance-of p1, p11, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    if-eqz p1, :cond_91

    .line 310
    check-cast p11, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    invoke-virtual {p11}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->getHandler()Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    goto :goto_93

    .line 312
    :cond_91
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    .line 315
    :goto_93
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    const/4 p1, 0x0

    .line 317
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->execCount:I

    .line 318
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 319
    new-instance p1, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 320
    new-instance p1, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 321
    const-string p1, "http.protocol.max-redirects"

    const/16 p2, 0x64

    invoke-interface {p13, p1, p2}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->maxRedirects:I

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 27
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    new-instance v1, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-class v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    new-instance v9, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;

    move-object/from16 v0, p8

    invoke-direct {v9, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/RedirectHandler;)V

    new-instance v10, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p9

    invoke-direct {v10, v0}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V

    new-instance v11, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p10

    invoke-direct {v11, v0}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method private abortConnection()V
    .registers 5

    .line 1128
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    .line 1132
    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 1134
    :try_start_7
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->abortConnection()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_1d

    :catch_b
    move-exception v1

    .line 1136
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1137
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1142
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_29

    :catch_21
    move-exception v0

    .line 1144
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Error releasing connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_29
    :goto_29
    return-void
.end method

.method private tryConnect(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    .line 602
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRequest()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object p1

    const/4 v1, 0x0

    .line 606
    :cond_9
    :goto_9
    const-string v2, "http.request"

    invoke-interface {p2, v2, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    .line 610
    :try_start_10
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_20

    .line 611
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v2, v0, p2, v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    goto :goto_2b

    .line 613
    :cond_20
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v3

    invoke-interface {v2, v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->setSocketTimeout(I)V

    .line 615
    :goto_2b
    invoke-virtual {p0, v0, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->establishRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception v2

    .line 619
    :try_start_30
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_35

    .line 622
    :catch_35
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    invoke-interface {v3, v2, v1, p2}, Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 623
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 624
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "I/O exception ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") caught when connecting to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 628
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 624
    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    .line 629
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 630
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 632
    :cond_8a
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Retrying connect to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 635
    :cond_a0
    throw v2
.end method

.method private tryExecute(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRequest()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v0

    .line 647
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    .line 653
    :cond_a
    :goto_a
    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->execCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->execCount:I

    .line 655
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->incrementExecCount()V

    .line 656
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v3

    if-nez v3, :cond_32

    .line 657
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "Cannot retry non-repeatable request"

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    if-eqz v2, :cond_2a

    .line 659
    new-instance p1, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;

    const-string p2, "Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed."

    invoke-direct {p1, p2, v2}, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 663
    :cond_2a
    new-instance p1, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;

    const-string p2, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 669
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_57

    .line 672
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 673
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Reopening the direct connection."

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 674
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v2, p1, p2, v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    goto :goto_57

    .line 677
    :cond_4f
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Proxied connection. Need to start over."

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_87

    .line 682
    :cond_57
    :goto_57
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 683
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->execCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to execute request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 685
    :cond_7f
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-virtual {v2, v0, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v1
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_87} :catch_88

    :goto_87
    return-object v1

    :catch_88
    move-exception v2

    .line 689
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Closing the connection."

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 691
    :try_start_90
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_95} :catch_95

    .line 694
    :catch_95
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getExecCount()I

    move-result v4

    invoke-interface {v3, v2, v4, p2}, Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 695
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 696
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "I/O exception ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") caught when processing request to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 700
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 696
    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    .line 702
    :cond_dd
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 703
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 705
    :cond_ee
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 706
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Retrying request to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 710
    :cond_10c
    instance-of p2, v2, Lcz/msebera/android/httpclient/NoHttpResponseException;

    if-eqz p2, :cond_138

    .line 711
    new-instance p2, Lcz/msebera/android/httpclient/NoHttpResponseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p1

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " failed to respond"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v2}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcz/msebera/android/httpclient/NoHttpResponseException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 714
    throw p2

    .line 716
    :cond_138
    throw v2
.end method

.method private wrapRequest(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    .line 327
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_c

    .line 328
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;

    check-cast p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    return-object v0

    .line 331
    :cond_c
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpRequest;)V

    return-object v0
.end method


# virtual methods
.method protected createConnectRequest(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpRequest;
    .registers 5

    .line 988
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p1

    .line 990
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p2

    .line 991
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v0

    if-gez v0, :cond_20

    .line 993
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 994
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object p1

    .line 995
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getDefaultPort()I

    move-result v0

    .line 998
    :cond_20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 999
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    .line 1000
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1004
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {p2}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->getVersion(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object p2

    .line 1005
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    const-string v1, "CONNECT"

    invoke-direct {v0, v1, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    return-object v0
.end method

.method protected createTunnelToProxy(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    new-instance p1, Lcz/msebera/android/httpclient/HttpException;

    const-string p2, "Proxy chains are not supported."

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createTunnelToTarget(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    .line 857
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v6

    .line 861
    :goto_8
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_17

    .line 862
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v0, p1, p2, v2}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 865
    :cond_17
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->createConnectRequest(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v0

    .line 866
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v0, v2}, Lcz/msebera/android/httpclient/HttpRequest;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 869
    const-string v2, "http.target_host"

    invoke-interface {p2, v2, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 870
    const-string v2, "http.route"

    invoke-interface {p2, v2, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 871
    const-string v2, "http.proxy_host"

    invoke-interface {p2, v2, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 872
    const-string v2, "http.connection"

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p2, v2, v3}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    const-string v2, "http.request"

    invoke-interface {p2, v2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 875
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v2, v0, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->preProcess(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 877
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-virtual {v2, v0, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v2

    .line 879
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 880
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v0, v2, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->postProcess(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 882
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_e3

    .line 888
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v0}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->isAuthenticating(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 889
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p2

    if-eqz p2, :cond_a0

    .line 891
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->authenticate(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p2

    if-eqz p2, :cond_a0

    .line 894
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {p2, v2, v5}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p2

    if-eqz p2, :cond_9a

    .line 895
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "Connection kept alive"

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 897
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p2

    .line 898
    invoke-static {p2}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    goto :goto_e0

    .line 900
    :cond_9a
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    goto :goto_e0

    .line 911
    :cond_a0
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p2, 0x12b

    if-le p1, p2, :cond_d8

    .line 916
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_ba

    .line 918
    new-instance p2, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {v2, p2}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 921
    :cond_ba
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    .line 922
    new-instance p1, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "CONNECT refused by proxy: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 923
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)V

    throw p1

    .line 926
    :cond_d8
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    const/4 p1, 0x0

    return p1

    :cond_df
    move-object v5, p2

    :goto_e0
    move-object p2, v5

    goto/16 :goto_8

    .line 884
    :cond_e3
    new-instance p1, Lcz/msebera/android/httpclient/HttpException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected response to CONNECT request: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 885
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    if-eqz p1, :cond_5

    goto :goto_11

    .line 763
    :cond_5
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object p1

    const-string v1, "http.default-host"

    .line 764
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/HttpHost;

    .line 762
    :goto_11
    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;->determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object p1

    return-object p1
.end method

.method protected establishRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;-><init>()V

    .line 784
    :cond_5
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v1

    .line 785
    invoke-interface {v0, p1, v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;->nextStep(Lcz/msebera/android/httpclient/conn/routing/RouteInfo;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)I

    move-result v2

    packed-switch v2, :pswitch_data_8e

    .line 824
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown step indicator "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " from RouteDirector."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 814
    :pswitch_2d
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v1, p2, v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->layerProtocol(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    goto :goto_6c

    .line 805
    :pswitch_35
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getHopCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 806
    invoke-virtual {p0, p1, v1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->createTunnelToProxy(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    .line 807
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "Tunnel to proxy created."

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 808
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getHopTarget(I)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v4, v1, v3, v5}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    goto :goto_6c

    .line 795
    :pswitch_52
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->createTunnelToTarget(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v1

    .line 796
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Tunnel to target created."

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 797
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v3, v1, v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->tunnelTarget(ZLcz/msebera/android/httpclient/params/HttpParams;)V

    goto :goto_6c

    .line 791
    :pswitch_65
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v1, p1, p2, v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    :goto_6c
    :pswitch_6c
    if-gtz v2, :cond_5

    return-void

    .line 818
    :pswitch_6f
    new-instance p2, Lcz/msebera/android/httpclient/HttpException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to establish route: planned = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; current = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_8e
    .packed-switch -0x1
        :pswitch_6f
        :pswitch_6c
        :pswitch_65
        :pswitch_65
        :pswitch_52
        :pswitch_35
        :pswitch_2d
    .end packed-switch
.end method

.method public execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    const-string v0, "http.user-token"

    const-string v1, "http.auth.target-scope"

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-interface {p3, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    const-string v1, "http.auth.proxy-scope"

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-interface {p3, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->wrapRequest(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v1

    .line 380
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 381
    invoke-virtual {p0, p1, v1, p3}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v2

    .line 383
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v3

    const-string v4, "http.virtual-host"

    invoke-interface {v3, v4}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/HttpHost;

    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v3, :cond_55

    .line 386
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_55

    if-eqz p1, :cond_38

    move-object v3, p1

    goto :goto_3c

    .line 387
    :cond_38
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    .line 388
    :goto_3c
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v3

    if-eq v3, v4, :cond_55

    .line 390
    new-instance v4, Lcz/msebera/android/httpclient/HttpHost;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 394
    :cond_55
    new-instance v3, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;

    invoke-direct {v3, v1, v2}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;-><init>(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    :cond_5f
    :goto_5f
    if-nez v1, :cond_25b

    .line 406
    :try_start_61
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRequest()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v3

    .line 407
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v5

    .line 411
    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 414
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-nez v7, :cond_c8

    .line 415
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    invoke-interface {v7, v5, v6}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;

    move-result-object v7

    .line 417
    instance-of v8, p2, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;

    if-eqz v8, :cond_81

    .line 418
    move-object v8, p2

    check-cast v8, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;

    invoke-interface {v8, v7}, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;->setConnectionRequest(Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;)V

    .line 421
    :cond_81
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v8}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->getConnectionManagerTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)J

    move-result-wide v8
    :try_end_87
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_61 .. :try_end_87} :catch_259
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_61 .. :try_end_87} :catch_257
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_87} :catch_255
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_87} :catch_253

    .line 423
    :try_start_87
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-result-object v7

    iput-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    :try_end_8f
    .catch Ljava/lang/InterruptedException; {:try_start_87 .. :try_end_8f} :catch_bb
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_87 .. :try_end_8f} :catch_259
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_87 .. :try_end_8f} :catch_257
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8f} :catch_255
    .catch Ljava/lang/RuntimeException; {:try_start_87 .. :try_end_8f} :catch_253

    .line 429
    :try_start_8f
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v7}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->isStaleCheckingEnabled(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v7

    if-eqz v7, :cond_c8

    .line 431
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v7}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_c8

    .line 432
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v8, "Stale connection check"

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 433
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v7}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isStale()Z

    move-result v7

    if-eqz v7, :cond_c8

    .line 434
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v8, "Stale connection detected"

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 435
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v7}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    goto :goto_c8

    .line 425
    :catch_bb
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 426
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 441
    :cond_c8
    :goto_c8
    instance-of v7, p2, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;

    if-eqz v7, :cond_d4

    .line 442
    move-object v7, p2

    check-cast v7, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v7, v8}, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;)V
    :try_end_d4
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_8f .. :try_end_d4} :catch_259
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_8f .. :try_end_d4} :catch_257
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_d4} :catch_255
    .catch Ljava/lang/RuntimeException; {:try_start_8f .. :try_end_d4} :catch_253

    .line 446
    :cond_d4
    :try_start_d4
    invoke-direct {p0, v4, p3}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->tryConnect(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    :try_end_d7
    .catch Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException; {:try_start_d4 .. :try_end_d7} :catch_23c
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_d4 .. :try_end_d7} :catch_259
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_d4 .. :try_end_d7} :catch_257
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_255
    .catch Ljava/lang/RuntimeException; {:try_start_d4 .. :try_end_d7} :catch_253

    .line 455
    :try_start_d7
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f0

    .line 457
    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    new-instance v9, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    invoke-direct {v9}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>()V

    new-instance v10, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;

    invoke-direct {v10, v7}, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lcz/msebera/android/httpclient/auth/AuthState;->update(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V

    .line 462
    :cond_f0
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v7, :cond_f6

    move-object p1, v7

    goto :goto_104

    .line 465
    :cond_f6
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v7

    .line 466
    invoke-virtual {v7}, Ljava/net/URI;->isAbsolute()Z

    move-result v8

    if-eqz v8, :cond_104

    .line 467
    invoke-static {v7}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p1

    :cond_104
    :goto_104
    if-nez p1, :cond_10a

    .line 471
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p1

    .line 475
    :cond_10a
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->resetHeaders()V

    .line 477
    invoke-virtual {p0, v3, v5}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 480
    const-string v7, "http.target_host"

    invoke-interface {p3, v7, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    const-string v7, "http.route"

    invoke-interface {p3, v7, v5}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    const-string v5, "http.connection"

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p3, v5, v7}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v5, v3, v7, p3}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->preProcess(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 487
    invoke-direct {p0, v4, p3}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->tryExecute(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v3

    if-nez v3, :cond_130

    goto/16 :goto_5f

    .line 494
    :cond_130
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v3, v2}, Lcz/msebera/android/httpclient/HttpResponse;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 495
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v2, v3, v5, p3}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->postProcess(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 499
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {v2, v3, p3}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 502
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v5, v3, p3}, Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)J

    move-result-wide v7

    .line 503
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_192

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_178

    .line 506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_17a

    .line 508
    :cond_178
    const-string v5, "indefinitely"

    .line 510
    :goto_17a
    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connection can be kept alive "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 512
    :cond_192
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v7, v8, v9}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    .line 515
    :cond_199
    invoke-virtual {p0, v4, v3, p3}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->handleResponse(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/impl/client/RoutedRequest;

    move-result-object v5

    if-nez v5, :cond_1a2

    const/4 v1, 0x1

    goto/16 :goto_224

    :cond_1a2
    if-eqz v2, :cond_1b1

    .line 521
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v7

    .line 522
    invoke-static {v7}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 525
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v7}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    goto :goto_212

    .line 527
    :cond_1b1
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v7}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    .line 528
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v7

    sget-object v8, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->CHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-lez v7, :cond_1e4

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 529
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v7

    if-eqz v7, :cond_1e4

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 530
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v7

    invoke-interface {v7}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v7

    if-eqz v7, :cond_1e4

    .line 531
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v8, "Resetting proxy auth state"

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 532
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 534
    :cond_1e4
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v7

    sget-object v8, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->CHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-lez v7, :cond_212

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 535
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v7

    if-eqz v7, :cond_212

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 536
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v7

    invoke-interface {v7}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v7

    if-eqz v7, :cond_212

    .line 537
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v8, "Resetting target auth state"

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 538
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 542
    :cond_212
    :goto_212
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v7

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_223

    .line 543
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->releaseConnection()V

    :cond_223
    move-object v4, v5

    .line 548
    :goto_224
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v5, :cond_5f

    if-nez v6, :cond_233

    .line 550
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    invoke-interface {v5, p3}, Lcz/msebera/android/httpclient/client/UserTokenHandler;->getUserToken(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v6

    .line 551
    invoke-interface {p3, v0, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_233
    if-eqz v6, :cond_5f

    .line 554
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v5, v6}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    goto/16 :goto_5f

    :catch_23c
    move-exception p1

    .line 448
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_24e

    .line 449
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 451
    :cond_24e
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;->getResponse()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v3

    goto :goto_25b

    :catch_253
    move-exception p1

    goto :goto_288

    :catch_255
    move-exception p1

    goto :goto_28c

    :catch_257
    move-exception p1

    goto :goto_290

    :catch_259
    move-exception p1

    goto :goto_294

    :cond_25b
    :goto_25b
    if-eqz v3, :cond_27d

    .line 562
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_27d

    .line 563
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result p1

    if-nez p1, :cond_26e

    goto :goto_27d

    .line 571
    :cond_26e
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    .line 572
    new-instance p2, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;

    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-direct {p2, p1, p3, v2}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/conn/ManagedClientConnection;Z)V

    .line 573
    invoke-interface {v3, p2}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    goto :goto_287

    :cond_27d
    :goto_27d
    if-eqz v2, :cond_284

    .line 566
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    .line 568
    :cond_284
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->releaseConnection()V
    :try_end_287
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_d7 .. :try_end_287} :catch_259
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_d7 .. :try_end_287} :catch_257
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_287} :catch_255
    .catch Ljava/lang/RuntimeException; {:try_start_d7 .. :try_end_287} :catch_253

    :goto_287
    return-object v3

    .line 590
    :goto_288
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 591
    throw p1

    .line 587
    :goto_28c
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 588
    throw p1

    .line 584
    :goto_290
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 585
    throw p1

    .line 579
    :goto_294
    new-instance p2, Ljava/io/InterruptedIOException;

    const-string p3, "Connection has been shut down"

    invoke-direct {p2, p3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p2, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 582
    throw p2
.end method

.method protected handleResponse(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v5, p3

    .line 1030
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v6

    .line 1031
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRequest()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v7

    .line 1033
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v8

    .line 1035
    invoke-static {v8}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->isAuthenticating(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1036
    const-string v0, "http.target_host"

    invoke-interface {v5, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    if-nez v0, :cond_22

    .line 1038
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    .line 1040
    :cond_22
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v1

    if-gez v1, :cond_45

    .line 1041
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v1

    .line 1042
    new-instance v2, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getDefaultPort()I

    move-result v1

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v1, v0}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v2

    goto :goto_46

    :cond_45
    move-object v1, v0

    .line 1045
    :goto_46
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v9

    move-object v10, v1

    .line 1048
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    if-nez v0, :cond_5c

    .line 1051
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    :cond_5c
    move-object v1, v0

    .line 1053
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object v2, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v11

    move-object v12, v1

    if-eqz v9, :cond_7e

    .line 1057
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object v2, p2

    move-object/from16 v5, p3

    move-object v1, v10

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->authenticate(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_7e

    goto :goto_90

    :cond_7e
    if-eqz v11, :cond_91

    .line 1064
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object v2, p2

    move-object/from16 v5, p3

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->authenticate(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_93

    :goto_90
    return-object p1

    :cond_91
    move-object/from16 v5, p3

    .line 1072
    :cond_93
    invoke-static {v8}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->isRedirecting(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_162

    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    .line 1073
    invoke-interface {p1, v7, p2, v5}, Lcz/msebera/android/httpclient/client/RedirectStrategy;->isRedirected(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p1

    if-eqz p1, :cond_162

    .line 1075
    iget p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectCount:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->maxRedirects:I

    if-ge p1, v1, :cond_145

    add-int/lit8 p1, p1, 0x1

    .line 1079
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 1082
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 1084
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    invoke-interface {p1, v7, p2, v5}, Lcz/msebera/android/httpclient/client/RedirectStrategy;->getRedirect(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    move-result-object p1

    .line 1085
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object p2

    .line 1086
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1088
    invoke-interface {p1}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p2

    .line 1089
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_130

    .line 1095
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f9

    .line 1096
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Resetting target auth state"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 1097
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 1098
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v1

    if-eqz v1, :cond_f9

    .line 1099
    invoke-interface {v1}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 1100
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Resetting proxy auth state"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 1101
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    .line 1105
    :cond_f9
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->wrapRequest(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object p1

    .line 1106
    invoke-virtual {p1, v8}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 1108
    invoke-virtual {p0, v0, p1, v5}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    .line 1109
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;

    invoke-direct {v1, p1, v0}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;-><init>(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 1111
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_12f

    .line 1112
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Redirecting to \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "\' via "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_12f
    return-object v1

    .line 1091
    :cond_130
    new-instance p1, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Redirect URI does not specify a valid host name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1076
    :cond_145
    new-instance p1, Lcz/msebera/android/httpclient/client/RedirectException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Maximum redirects ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->maxRedirects:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ") exceeded"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_162
    return-object v0
.end method

.method protected releaseConnection()V
    .registers 4

    .line 734
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 736
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "IOException releasing connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_e
    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    return-void
.end method

.method protected rewriteRequestURI(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    .line 342
    :try_start_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 343
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_25

    .line 345
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_20

    .line 346
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p2

    .line 347
    invoke-static {v0, p2, v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object p2

    goto :goto_35

    .line 349
    :cond_20
    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p2

    goto :goto_35

    .line 353
    :cond_25
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result p2

    if-eqz p2, :cond_31

    const/4 p2, 0x0

    .line 354
    invoke-static {v0, p2, v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object p2

    goto :goto_35

    .line 356
    :cond_31
    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p2

    .line 359
    :goto_35
    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_38
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception p2

    .line 362
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
