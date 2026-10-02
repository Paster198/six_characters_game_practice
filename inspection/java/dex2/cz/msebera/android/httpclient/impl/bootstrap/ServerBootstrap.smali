.class public Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
.super Ljava/lang/Object;
.source "ServerBootstrap.java"


# instance fields
.field private connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

.field private connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/HttpConnectionFactory<",
            "+",
            "Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;",
            ">;"
        }
    .end annotation
.end field

.field private exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

.field private expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

.field private handlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

.field private httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private listenerPort:I

.field private localAddress:Ljava/net/InetAddress;

.field private requestFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private requestLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

.field private responseFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private serverInfo:Ljava/lang/String;

.field private serverSocketFactory:Ljavax/net/ServerSocketFactory;

.field private socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bootstrap()Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 1

    .line 91
    new-instance v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    .line 181
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_e

    .line 182
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    .line 184
    :cond_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    .line 147
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_e

    .line 148
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    .line 150
    :cond_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    .line 198
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    if-nez v0, :cond_e

    .line 199
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    .line 201
    :cond_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    .line 164
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    if-nez v0, :cond_e

    .line 165
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    .line 167
    :cond_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public create()Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;
    .registers 18

    move-object/from16 v0, p0

    .line 315
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    const/4 v2, 0x0

    if-nez v1, :cond_9a

    .line 318
    invoke-static {}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->create()Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object v1

    .line 319
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    if-eqz v3, :cond_23

    .line 320
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 321
    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_13

    .line 324
    :cond_23
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    if-eqz v3, :cond_3b

    .line 325
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 326
    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_2b

    .line 330
    :cond_3b
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverInfo:Ljava/lang/String;

    if-nez v3, :cond_41

    .line 332
    const-string v3, "Apache-HttpCore/1.1"

    :cond_41
    const/4 v4, 0x4

    .line 335
    new-array v4, v4, [Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    new-instance v5, Lcz/msebera/android/httpclient/protocol/ResponseDate;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/protocol/ResponseDate;-><init>()V

    aput-object v5, v4, v2

    new-instance v5, Lcz/msebera/android/httpclient/protocol/ResponseServer;

    invoke-direct {v5, v3}, Lcz/msebera/android/httpclient/protocol/ResponseServer;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v5, v4, v3

    new-instance v3, Lcz/msebera/android/httpclient/protocol/ResponseContent;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/protocol/ResponseContent;-><init>()V

    const/4 v5, 0x2

    aput-object v3, v4, v5

    new-instance v3, Lcz/msebera/android/httpclient/protocol/ResponseConnControl;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/protocol/ResponseConnControl;-><init>()V

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAll([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 340
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    if-eqz v3, :cond_7e

    .line 341
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 342
    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_6e

    .line 345
    :cond_7e
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    if-eqz v3, :cond_96

    .line 346
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    .line 347
    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_86

    .line 350
    :cond_96
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->build()Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-result-object v1

    :cond_9a
    move-object v4, v1

    .line 353
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    if-nez v1, :cond_cc

    .line 355
    new-instance v1, Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;-><init>()V

    .line 356
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    if-eqz v3, :cond_cc

    .line 357
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 358
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;

    invoke-virtual {v1, v6, v5}, Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;)V

    goto :goto_b0

    :cond_cc
    move-object v7, v1

    .line 364
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    if-nez v1, :cond_d3

    .line 366
    sget-object v1, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    :cond_d3
    move-object v5, v1

    .line 369
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    if-nez v1, :cond_da

    .line 371
    sget-object v1, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;

    :cond_da
    move-object v6, v1

    .line 374
    new-instance v3, Lcz/msebera/android/httpclient/protocol/HttpService;

    iget-object v8, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    invoke-direct/range {v3 .. v8}, Lcz/msebera/android/httpclient/protocol/HttpService;-><init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V

    .line 378
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    if-nez v1, :cond_f3

    .line 380
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v1, :cond_ef

    .line 381
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v1

    goto :goto_f3

    .line 383
    :cond_ef
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v1

    :cond_f3
    :goto_f3
    move-object v12, v1

    .line 387
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    if-nez v1, :cond_106

    .line 389
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    if-eqz v1, :cond_104

    .line 390
    new-instance v1, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-direct {v1, v4}, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;-><init>(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    goto :goto_106

    .line 392
    :cond_104
    sget-object v1, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;

    :cond_106
    :goto_106
    move-object v14, v1

    .line 396
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    if-nez v1, :cond_10d

    .line 398
    sget-object v1, Lcz/msebera/android/httpclient/ExceptionLogger;->NO_OP:Lcz/msebera/android/httpclient/ExceptionLogger;

    :cond_10d
    move-object/from16 v16, v1

    .line 401
    new-instance v8, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;

    iget v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->listenerPort:I

    if-lez v1, :cond_117

    move v9, v1

    goto :goto_118

    :cond_117
    move v9, v2

    :goto_118
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->localAddress:Ljava/net/InetAddress;

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    if-eqz v1, :cond_11f

    goto :goto_121

    :cond_11f
    sget-object v1, Lcz/msebera/android/httpclient/config/SocketConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/SocketConfig;

    :goto_121
    move-object v11, v1

    iget-object v15, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    move-object v13, v3

    invoke-direct/range {v8 .. v16}, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;-><init>(ILjava/net/InetAddress;Lcz/msebera/android/httpclient/config/SocketConfig;Ljavax/net/ServerSocketFactory;Lcz/msebera/android/httpclient/protocol/HttpService;Lcz/msebera/android/httpclient/HttpConnectionFactory;Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;Lcz/msebera/android/httpclient/ExceptionLogger;)V

    return-object v8
.end method

.method public final registerHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 4

    if-eqz p1, :cond_15

    if-nez p2, :cond_5

    goto :goto_15

    .line 254
    :cond_5
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    if-nez v0, :cond_10

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    .line 257
    :cond_10
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_15
    return-object p0
.end method

.method public final setConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2

    .line 125
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    return-object p0
.end method

.method public final setConnectionFactory(Lcz/msebera/android/httpclient/HttpConnectionFactory;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpConnectionFactory<",
            "+",
            "Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lcz/msebera/android/httpclient/ConnectionReuseStrategy;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2

    .line 220
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    return-object p0
.end method

.method public final setExceptionLogger(Lcz/msebera/android/httpclient/ExceptionLogger;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2

    .line 309
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    return-object p0
.end method

.method public final setExpectationVerifier(Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2

    .line 265
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    return-object p0
.end method

.method public final setHandlerMapper(Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2

    .line 236
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    return-object p0
.end method

.method public final setHttpProcessor(Lcz/msebera/android/httpclient/protocol/HttpProcessor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2

    .line 133
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    return-object p0
.end method

.method public final setListenerPort(I)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2

    .line 98
    iput p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->listenerPort:I

    return-object p0
.end method

.method public final setLocalAddress(Ljava/net/InetAddress;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2

    .line 106
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->localAddress:Ljava/net/InetAddress;

    return-object p0
.end method

.method public final setResponseFactory(Lcz/msebera/android/httpclient/HttpResponseFactory;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2

    .line 228
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    return-object p0
.end method

.method public final setServerInfo(Ljava/lang/String;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2

    .line 212
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final setServerSocketFactory(Ljavax/net/ServerSocketFactory;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2

    .line 290
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    return-object p0
.end method

.method public final setSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2

    .line 114
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    return-object p0
.end method

.method public final setSslContext(Ljavax/net/ssl/SSLContext;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2

    .line 301
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method

.method public final setSslSetupHandler(Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .registers 2

    .line 282
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    return-object p0
.end method
