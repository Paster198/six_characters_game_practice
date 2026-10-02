.class public Lcz/msebera/android/httpclient/protocol/HttpService;
.super Ljava/lang/Object;
.source "HttpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/protocol/HttpService$HttpRequestHandlerResolverAdapter;
    }
.end annotation


# instance fields
.field private volatile connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private volatile expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

.field private volatile handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

.field private volatile params:Lcz/msebera/android/httpclient/params/HttpParams;

.field private volatile processor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private volatile responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 81
    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->processor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 82
    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    .line 83
    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 84
    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 85
    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    .line 161
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpService;->setHttpProcessor(Lcz/msebera/android/httpclient/protocol/HttpProcessor;)V

    .line 162
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/protocol/HttpService;->setConnReuseStrategy(Lcz/msebera/android/httpclient/ConnectionReuseStrategy;)V

    .line 163
    invoke-virtual {p0, p3}, Lcz/msebera/android/httpclient/protocol/HttpService;->setResponseFactory(Lcz/msebera/android/httpclient/HttpResponseFactory;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 212
    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/protocol/HttpService;-><init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V
    .registers 7

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 81
    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->processor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 82
    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    .line 83
    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 84
    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 85
    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    .line 186
    const-string v0, "HTTP processor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->processor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    if-eqz p2, :cond_1d

    goto :goto_1f

    .line 187
    :cond_1d
    sget-object p2, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    :goto_1f
    iput-object p2, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    if-eqz p3, :cond_24

    goto :goto_26

    .line 189
    :cond_24
    sget-object p3, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;

    :goto_26
    iput-object p3, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 191
    iput-object p4, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    .line 192
    iput-object p5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerResolver;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    new-instance v4, Lcz/msebera/android/httpclient/protocol/HttpService$HttpRequestHandlerResolverAdapter;

    invoke-direct {v4, p4}, Lcz/msebera/android/httpclient/protocol/HttpService$HttpRequestHandlerResolverAdapter;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerResolver;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/protocol/HttpService;-><init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V

    .line 142
    iput-object p5, v0, Lcz/msebera/android/httpclient/protocol/HttpService;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerResolver;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    new-instance v4, Lcz/msebera/android/httpclient/protocol/HttpService$HttpRequestHandlerResolverAdapter;

    invoke-direct {v4, p4}, Lcz/msebera/android/httpclient/protocol/HttpService$HttpRequestHandlerResolverAdapter;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerResolver;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/protocol/HttpService;-><init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V

    .line 114
    iput-object p6, v0, Lcz/msebera/android/httpclient/protocol/HttpService;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 225
    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/protocol/HttpService;-><init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V

    return-void
.end method

.method private canResponseHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 372
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HEAD"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    return v0

    .line 375
    :cond_14
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_2e

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_2e

    const/16 p2, 0x130

    if-eq p1, p2, :cond_2e

    const/16 p2, 0xcd

    if-eq p1, p2, :cond_2e

    const/4 p1, 0x1

    return p1

    :cond_2e
    return v0
.end method


# virtual methods
.method protected doService(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    if-eqz v0, :cond_b

    .line 433
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;->lookup(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_12

    .line 436
    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;->handle(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void

    :cond_12
    const/16 p1, 0x1f5

    .line 438
    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/HttpResponse;->setStatusCode(I)V

    return-void
.end method

.method public getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    return-object v0
.end method

.method protected handleException(Lcz/msebera/android/httpclient/HttpException;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 4

    .line 391
    instance-of v0, p1, Lcz/msebera/android/httpclient/MethodNotSupportedException;

    if-eqz v0, :cond_a

    const/16 v0, 0x1f5

    .line 392
    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setStatusCode(I)V

    goto :goto_23

    .line 393
    :cond_a
    instance-of v0, p1, Lcz/msebera/android/httpclient/UnsupportedHttpVersionException;

    if-eqz v0, :cond_14

    const/16 v0, 0x1f9

    .line 394
    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setStatusCode(I)V

    goto :goto_23

    .line 395
    :cond_14
    instance-of v0, p1, Lcz/msebera/android/httpclient/ProtocolException;

    if-eqz v0, :cond_1e

    const/16 v0, 0x190

    .line 396
    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setStatusCode(I)V

    goto :goto_23

    :cond_1e
    const/16 v0, 0x1f4

    .line 398
    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setStatusCode(I)V

    .line 400
    :goto_23
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 402
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    :cond_2d
    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 405
    new-instance v0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;-><init>([B)V

    .line 406
    const-string p1, "text/plain; charset=US-ASCII"

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 407
    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void
.end method

.method public handleRequest(Lcz/msebera/android/httpclient/HttpServerConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 301
    const-string v0, "http.connection"

    invoke-interface {p2, v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x1f4

    const/4 v1, 0x0

    .line 307
    :try_start_8
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpServerConnection;->receiveRequestHeader()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v2
    :try_end_c
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_8 .. :try_end_c} :catch_83

    .line 308
    :try_start_c
    instance-of v3, v2, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    const/16 v4, 0xc8

    if-eqz v3, :cond_5b

    .line 310
    move-object v3, v2

    check-cast v3, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 311
    iget-object v3, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    sget-object v5, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const/16 v6, 0x64

    invoke-interface {v3, v5, v6, p2}, Lcz/msebera/android/httpclient/HttpResponseFactory;->newHttpResponse(Lcz/msebera/android/httpclient/ProtocolVersion;ILcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v3

    .line 313
    iget-object v5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;
    :try_end_27
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_c .. :try_end_27} :catch_81

    if-eqz v5, :cond_3c

    .line 315
    :try_start_29
    iget-object v5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    invoke-interface {v5, v2, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;->verify(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    :try_end_2e
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_3c

    :catch_2f
    move-exception v3

    .line 317
    :try_start_30
    iget-object v5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    sget-object v6, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-interface {v5, v6, v0, p2}, Lcz/msebera/android/httpclient/HttpResponseFactory;->newHttpResponse(Lcz/msebera/android/httpclient/ProtocolVersion;ILcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v5

    .line 319
    invoke-virtual {p0, v3, v5}, Lcz/msebera/android/httpclient/protocol/HttpService;->handleException(Lcz/msebera/android/httpclient/HttpException;Lcz/msebera/android/httpclient/HttpResponse;)V

    move-object v3, v5

    .line 322
    :cond_3c
    :goto_3c
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v5

    if-ge v5, v4, :cond_53

    .line 325
    invoke-interface {p1, v3}, Lcz/msebera/android/httpclient/HttpServerConnection;->sendResponseHeader(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 326
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpServerConnection;->flush()V

    .line 328
    move-object v3, v2

    check-cast v3, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {p1, v3}, Lcz/msebera/android/httpclient/HttpServerConnection;->receiveRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    goto :goto_5b

    :cond_53
    move-object v1, v3

    goto :goto_5b

    .line 331
    :cond_55
    move-object v3, v2

    check-cast v3, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {p1, v3}, Lcz/msebera/android/httpclient/HttpServerConnection;->receiveRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    .line 335
    :cond_5b
    :goto_5b
    const-string v3, "http.request"

    invoke-interface {p2, v3, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_72

    .line 338
    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    sget-object v3, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-interface {v1, v3, v4, p2}, Lcz/msebera/android/httpclient/HttpResponseFactory;->newHttpResponse(Lcz/msebera/android/httpclient/ProtocolVersion;ILcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v1

    .line 340
    iget-object v3, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->processor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-interface {v3, v2, p2}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 341
    invoke-virtual {p0, v2, v1, p2}, Lcz/msebera/android/httpclient/protocol/HttpService;->doService(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 345
    :cond_72
    instance-of v3, v2, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v3, :cond_93

    .line 346
    move-object v3, v2

    check-cast v3, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    .line 347
    invoke-static {v3}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    :try_end_80
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_30 .. :try_end_80} :catch_81

    goto :goto_93

    :catch_81
    move-exception v1

    goto :goto_87

    :catch_83
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 351
    :goto_87
    iget-object v3, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    sget-object v4, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    .line 352
    invoke-interface {v3, v4, v0, p2}, Lcz/msebera/android/httpclient/HttpResponseFactory;->newHttpResponse(Lcz/msebera/android/httpclient/ProtocolVersion;ILcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    .line 354
    invoke-virtual {p0, v1, v0}, Lcz/msebera/android/httpclient/protocol/HttpService;->handleException(Lcz/msebera/android/httpclient/HttpException;Lcz/msebera/android/httpclient/HttpResponse;)V

    move-object v1, v0

    .line 357
    :cond_93
    :goto_93
    const-string v0, "http.response"

    invoke-interface {p2, v0, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->processor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-interface {v0, v1, p2}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 360
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpServerConnection;->sendResponseHeader(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 361
    invoke-direct {p0, v2, v1}, Lcz/msebera/android/httpclient/protocol/HttpService;->canResponseHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 362
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpServerConnection;->sendResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 364
    :cond_a9
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpServerConnection;->flush()V

    .line 366
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {v0, v1, p2}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p2

    if-nez p2, :cond_b7

    .line 367
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpServerConnection;->close()V

    :cond_b7
    return-void
.end method

.method public setConnReuseStrategy(Lcz/msebera/android/httpclient/ConnectionReuseStrategy;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    const-string v0, "Connection reuse strategy"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 243
    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    return-void
.end method

.method public setExpectationVerifier(Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    return-void
.end method

.method public setHandlerResolver(Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerResolver;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    new-instance v0, Lcz/msebera/android/httpclient/protocol/HttpService$HttpRequestHandlerResolverAdapter;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpService$HttpRequestHandlerResolverAdapter;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerResolver;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    return-void
.end method

.method public setHttpProcessor(Lcz/msebera/android/httpclient/protocol/HttpProcessor;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    const-string v0, "HTTP processor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->processor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    return-void
.end method

.method public setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public setResponseFactory(Lcz/msebera/android/httpclient/HttpResponseFactory;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    const-string v0, "Response factory"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    return-void
.end method
