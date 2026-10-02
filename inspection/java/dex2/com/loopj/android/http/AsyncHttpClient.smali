.class public Lcom/loopj/android/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field public static final DEFAULT_MAX_RETRIES:I = 0x5

.field public static final DEFAULT_RETRY_SLEEP_TIME_MILLIS:I = 0x5dc

.field public static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final LOG_TAG:Ljava/lang/String; = "AsyncHttpClient"

.field public static log:Lcom/loopj/android/http/LogInterface;


# instance fields
.field private final clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connectTimeout:I

.field private final httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

.field private final httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

.field private isUrlEncodingEnabled:Z

.field private maxConnections:I

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/loopj/android/http/RequestHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field private responseTimeout:I

.field private threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Lcom/loopj/android/http/LogHandler;

    invoke-direct {v0}, Lcom/loopj/android/http/LogHandler;-><init>()V

    sput-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x50

    const/16 v1, 0x1bb

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0, v2, v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x1bb

    .line 156
    invoke-direct {p0, v0, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .registers 7

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 137
    iput v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    const/16 v1, 0x2710

    .line 138
    iput v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    .line 139
    iput v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    const/4 v1, 0x1

    .line 141
    iput-boolean v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    .line 187
    new-instance v2, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    .line 189
    iget v3, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->setTimeout(Lcz/msebera/android/httpclient/params/HttpParams;J)V

    .line 190
    new-instance v3, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    iget v4, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;)V

    .line 191
    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->setMaxTotalConnections(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 193
    iget v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 194
    iget v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 195
    invoke-static {v2, v1}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setTcpNoDelay(Lcz/msebera/android/httpclient/params/HttpParams;Z)V

    const/16 v0, 0x2000

    .line 196
    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setSocketBufferSize(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    .line 198
    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-static {v2, v0}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->setVersion(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 200
    invoke-virtual {p0, p1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->createConnectionManager(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcz/msebera/android/httpclient/params/BasicHttpParams;)Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_47

    goto :goto_48

    :cond_47
    move v1, v0

    .line 201
    :goto_48
    const-string v3, "Custom implementation of #createConnectionManager(SchemeRegistry, BasicHttpParams) returned null"

    invoke-static {v1, v3}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpClient;->getDefaultThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 204
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    .line 205
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 207
    new-instance v1, Lcz/msebera/android/httpclient/protocol/SyncBasicHttpContext;

    new-instance v3, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v1, v3}, Lcz/msebera/android/httpclient/protocol/SyncBasicHttpContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 208
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v1, p1, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V

    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    .line 209
    new-instance p1, Lcom/loopj/android/http/AsyncHttpClient$1;

    invoke-direct {p1, p0}, Lcom/loopj/android/http/AsyncHttpClient$1;-><init>(Lcom/loopj/android/http/AsyncHttpClient;)V

    invoke-virtual {v1, p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->addRequestInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    .line 232
    new-instance p1, Lcom/loopj/android/http/AsyncHttpClient$2;

    invoke-direct {p1, p0}, Lcom/loopj/android/http/AsyncHttpClient$2;-><init>(Lcom/loopj/android/http/AsyncHttpClient;)V

    invoke-virtual {v1, p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->addResponseInterceptor(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V

    .line 251
    new-instance p1, Lcom/loopj/android/http/AsyncHttpClient$3;

    invoke-direct {p1, p0}, Lcom/loopj/android/http/AsyncHttpClient$3;-><init>(Lcom/loopj/android/http/AsyncHttpClient;)V

    invoke-virtual {v1, p1, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->addRequestInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;I)V

    .line 270
    new-instance p1, Lcom/loopj/android/http/RetryHandler;

    const/4 v0, 0x5

    const/16 v2, 0x5dc

    invoke-direct {p1, v0, v2}, Lcom/loopj/android/http/RetryHandler;-><init>(II)V

    invoke-virtual {v1, p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .registers 4

    .line 177
    invoke-static {p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->getDefaultSchemeRegistry(ZII)Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method static synthetic access$000(Lcom/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/List;Z)V
    .registers 3

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Ljava/util/List;Z)V

    return-void
.end method

.method private addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;
    .registers 3

    if-eqz p2, :cond_5

    .line 1593
    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_5
    return-object p1
.end method

.method public static allowRetryExceptionClass(Ljava/lang/Class;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 313
    invoke-static {p0}, Lcom/loopj/android/http/RetryHandler;->addClassToWhitelist(Ljava/lang/Class;)V

    :cond_5
    return-void
.end method

.method public static blockRetryExceptionClass(Ljava/lang/Class;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 319
    invoke-static {p0}, Lcom/loopj/android/http/RetryHandler;->addClassToBlacklist(Ljava/lang/Class;)V

    :cond_5
    return-void
.end method

.method private cancelRequests(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/loopj/android/http/RequestHandle;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_16

    .line 909
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/RequestHandle;

    .line 910
    invoke-virtual {v0, p2}, Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static endEntityViaReflection(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 7

    .line 426
    instance-of v0, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;

    if-eqz v0, :cond_3d

    .line 429
    :try_start_4
    const-class v0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 430
    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    .line 431
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wrappedEntity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_21

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_20
    const/4 v3, 0x0

    :goto_21
    if-eqz v3, :cond_3d

    const/4 v0, 0x1

    .line 437
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 438
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/HttpEntity;

    if-eqz p0, :cond_3d

    .line 440
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->consumeContent()V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception p0

    .line 444
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "wrappedEntity consume"

    invoke-interface {v0, v1, v2, p0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3d
    return-void
.end method

.method private static getDefaultSchemeRegistry(ZII)Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .registers 7

    .line 281
    const-string v0, "AsyncHttpClient"

    if-eqz p0, :cond_b

    .line 282
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v2, "Beware! Using the fix is insecure, as it doesn\'t verify SSL certificates."

    invoke-interface {v1, v0, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/4 v1, 0x1

    if-ge p1, v1, :cond_17

    .line 287
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v2, "Invalid HTTP port number specified, defaulting to 80"

    invoke-interface {p1, v0, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x50

    :cond_17
    if-ge p2, v1, :cond_22

    .line 292
    sget-object p2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "Invalid HTTPS port number specified, defaulting to 443"

    invoke-interface {p2, v0, v1}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x1bb

    :cond_22
    if-eqz p0, :cond_29

    .line 299
    invoke-static {}, Lcom/loopj/android/http/MySSLSocketFactory;->getFixedSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    move-result-object p0

    goto :goto_2d

    .line 301
    :cond_29
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    move-result-object p0

    .line 304
    :goto_2d
    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;-><init>()V

    .line 305
    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 306
    new-instance p1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string v1, "https"

    invoke-direct {p1, v1, p0, p2}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    return-object v0
.end method

.method public static getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;
    .registers 12

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p0, :cond_42

    .line 337
    :try_start_6
    const-string p0, "UTF-8"

    invoke-static {p1, p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 338
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 339
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_36} :catch_37

    goto :goto_42

    :catch_37
    move-exception v0

    move-object p0, v0

    .line 343
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "getUrlWithQueryString encoding URL"

    invoke-interface {v0, v1, v2, p0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    if-eqz p2, :cond_86

    .line 350
    invoke-virtual {p2}, Lcom/loopj/android/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 354
    const-string p2, ""

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_86

    const-string p2, "?"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6d

    const-string p2, "&"

    :cond_6d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 356
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_86
    return-object p1
.end method

.method public static isInputStreamGZIPCompressed(Ljava/io/PushbackInputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x2

    .line 374
    new-array v2, v1, [B

    move v3, v0

    :goto_8
    if-ge v3, v1, :cond_1d

    rsub-int/lit8 v4, v3, 0x2

    .line 378
    :try_start_c
    invoke-virtual {p0, v2, v3, v4}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v4
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_18

    if-gez v4, :cond_16

    .line 383
    invoke-virtual {p0, v2, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    return v0

    :cond_16
    add-int/2addr v3, v4

    goto :goto_8

    :catchall_18
    move-exception v1

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    throw v1

    :cond_1d
    invoke-virtual {p0, v2, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 385
    aget-byte p0, v2, v0

    and-int/lit16 p0, p0, 0xff

    const/4 v1, 0x1

    aget-byte v2, v2, v1

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr p0, v2

    const v2, 0x8b1f

    if-ne v2, p0, :cond_34

    return v1

    :cond_34
    return v0
.end method

.method private paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 1567
    :try_start_3
    invoke-virtual {p1, p2}, Lcom/loopj/android/http/RequestParams;->getEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p1

    :catch_8
    move-exception p1

    if-eqz p2, :cond_10

    const/4 v1, 0x0

    .line 1571
    invoke-interface {p2, v1, v0, v0, p1}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendFailureMessage(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    goto :goto_13

    .line 1573
    :cond_10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_13
    :goto_13
    return-object v0
.end method

.method public static silentCloseInputStream(Ljava/io/InputStream;)V
    .registers 4

    if-eqz p0, :cond_10

    .line 397
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 400
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Cannot close input stream"

    invoke-interface {v0, v1, v2, p0}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    return-void
.end method

.method public static silentCloseOutputStream(Ljava/io/OutputStream;)V
    .registers 4

    if-eqz p0, :cond_10

    .line 412
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 415
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Cannot close output stream"

    invoke-interface {v0, v1, v2, p0}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 782
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelAllRequests(Z)V
    .registers 5

    .line 925
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_a

    .line 927
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loopj/android/http/RequestHandle;

    .line 928
    invoke-virtual {v2, p1}, Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z

    goto :goto_1c

    .line 932
    :cond_2c
    iget-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .registers 5

    if-nez p1, :cond_c

    .line 887
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string p2, "AsyncHttpClient"

    const-string v0, "Passed null Context to cancelRequests"

    invoke-interface {p1, p2, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 891
    :cond_c
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 892
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_2e

    .line 895
    new-instance p1, Lcom/loopj/android/http/AsyncHttpClient$4;

    invoke-direct {p1, p0, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient$4;-><init>(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/List;Z)V

    .line 901
    iget-object p2, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 903
    :cond_2e
    invoke-direct {p0, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Ljava/util/List;Z)V

    return-void
.end method

.method public cancelRequestsByTAG(Ljava/lang/Object;Z)V
    .registers 7

    if-nez p1, :cond_c

    .line 946
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string p2, "AsyncHttpClient"

    const-string v0, "cancelRequestsByTAG, passed TAG is null, cannot proceed"

    invoke-interface {p1, p2, v0}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 949
    :cond_c
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_16

    .line 951
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loopj/android/http/RequestHandle;

    .line 952
    invoke-virtual {v2}, Lcom/loopj/android/http/RequestHandle;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 953
    invoke-virtual {v2, p2}, Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z

    goto :goto_28

    :cond_42
    return-void
.end method

.method public clearCredentialsProvider()V
    .registers 2

    .line 872
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->getCredentialsProvider()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->clear()V

    return-void
.end method

.method protected createConnectionManager(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcz/msebera/android/httpclient/params/BasicHttpParams;)Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .registers 4

    .line 579
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, p2, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 11

    .line 1391
    new-instance v3, Lcom/loopj/android/http/HttpDelete;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/net/URI;)V

    .line 1392
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .line 1452
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    new-instance v0, Lcom/loopj/android/http/HttpDelete;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v6, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .line 1433
    new-instance v3, Lcom/loopj/android/http/HttpDelete;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_10

    .line 1434
    invoke-virtual {v3, p3}, Lcom/loopj/android/http/HttpDelete;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1435
    :cond_10
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 12

    .line 1405
    new-instance v3, Lcom/loopj/android/http/HttpDelete;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/net/URI;)V

    if-eqz p3, :cond_e

    .line 1406
    invoke-virtual {v3, p3}, Lcom/loopj/android/http/HttpDelete;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1407
    :cond_e
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 4

    const/4 v0, 0x0

    .line 1377
    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .registers 11

    .line 1418
    new-instance v3, Lcom/loopj/android/http/HttpDelete;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 1419
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 12

    .line 1078
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    new-instance v3, Lcom/loopj/android/http/HttpGet;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/loopj/android/http/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 5

    const/4 v0, 0x0

    .line 1065
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .line 1113
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    new-instance v0, Lcom/loopj/android/http/HttpGet;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/loopj/android/http/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v6, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .line 1093
    new-instance v3, Lcom/loopj/android/http/HttpGet;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/loopj/android/http/HttpGet;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_10

    .line 1094
    invoke-interface {v3, p3}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1095
    :cond_10
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 5

    const/4 v0, 0x0

    .line 1052
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 4

    const/4 v0, 0x0

    .line 1037
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public getConnectTimeout()I
    .registers 2

    .line 680
    iget v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    return v0
.end method

.method protected getDefaultThreadPool()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 568
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lcz/msebera/android/httpclient/client/HttpClient;
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lcz/msebera/android/httpclient/protocol/HttpContext;
    .registers 2

    .line 467
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    return-object v0
.end method

.method public getLogInterface()Lcom/loopj/android/http/LogInterface;
    .registers 2

    .line 516
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    return-object v0
.end method

.method public getLoggingLevel()I
    .registers 2

    .line 497
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    invoke-interface {v0}, Lcom/loopj/android/http/LogInterface;->getLoggingLevel()I

    move-result v0

    return v0
.end method

.method public getMaxConnections()I
    .registers 2

    .line 643
    iget v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    return v0
.end method

.method public getResponseTimeout()I
    .registers 2

    .line 703
    iget v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    return v0
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 548
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method protected getURI(Ljava/lang/String;)Ljava/net/URI;
    .registers 2

    .line 1542
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 12

    .line 1008
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    new-instance v3, Lcz/msebera/android/httpclient/client/methods/HttpHead;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcz/msebera/android/httpclient/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 5

    const/4 v0, 0x0

    .line 995
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .line 1023
    new-instance v3, Lcz/msebera/android/httpclient/client/methods/HttpHead;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcz/msebera/android/httpclient/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_10

    .line 1024
    invoke-interface {v3, p3}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1025
    :cond_10
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public head(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 5

    const/4 v0, 0x0

    .line 982
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public head(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 4

    const/4 v0, 0x0

    .line 970
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public isLoggingEnabled()Z
    .registers 2

    .line 477
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    invoke-interface {v0}, Lcom/loopj/android/http/LogInterface;->isLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public isUrlEncodingEnabled()Z
    .registers 2

    .line 1581
    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    return v0
.end method

.method protected newAsyncHttpRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/AsyncHttpRequest;
    .registers 7

    .line 1468
    new-instance p4, Lcom/loopj/android/http/AsyncHttpRequest;

    invoke-direct {p4, p1, p2, p3, p5}, Lcom/loopj/android/http/AsyncHttpRequest;-><init>(Lcz/msebera/android/httpclient/impl/client/AbstractHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    return-object p4
.end method

.method public patch(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 11

    .line 1328
    invoke-direct {p0, p3, p4}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->patch(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public patch(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .line 1345
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPatch;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/client/methods/HttpPatch;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v6, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public patch(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 15

    .line 1364
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPatch;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/client/methods/HttpPatch;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v4

    if-eqz p3, :cond_12

    .line 1365
    invoke-virtual {v4, p3}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1366
    :cond_12
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    move-object v1, p0

    move-object v7, p1

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v7}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public patch(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 5

    const/4 v0, 0x0

    .line 1315
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->patch(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public patch(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 4

    const/4 v0, 0x0

    .line 1303
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->patch(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 11

    .line 1152
    invoke-direct {p0, p3, p4}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .line 1169
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPost;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v6, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcom/loopj/android/http/RequestParams;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 14

    .line 1187
    new-instance v3, Lcz/msebera/android/httpclient/client/methods/HttpPost;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v3, p2}, Lcz/msebera/android/httpclient/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    if-eqz p4, :cond_12

    .line 1188
    invoke-direct {p0, p4, p6}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_12
    if-eqz p3, :cond_17

    .line 1189
    invoke-virtual {v3, p3}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1190
    :cond_17
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    move-object v0, p0

    move-object v6, p1

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 15

    .line 1211
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPost;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v4

    if-eqz p3, :cond_12

    .line 1212
    invoke-virtual {v4, p3}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1213
    :cond_12
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    move-object v1, p0

    move-object v7, p1

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v7}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 5

    const/4 v0, 0x0

    .line 1139
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 4

    const/4 v0, 0x0

    .line 1124
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 11

    .line 1249
    invoke-direct {p0, p3, p4}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 13

    .line 1267
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPut;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v6, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 15

    .line 1286
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpPut;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v4

    if-eqz p3, :cond_12

    .line 1287
    invoke-virtual {v4, p3}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1288
    :cond_12
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    move-object v1, p0

    move-object v7, p1

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v7}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 5

    const/4 v0, 0x0

    .line 1236
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .registers 4

    const/4 v0, 0x0

    .line 1224
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public removeAllHeaders()V
    .registers 2

    .line 772
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 3

    .line 791
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;
    .registers 10

    if-eqz p3, :cond_a5

    if-eqz p5, :cond_9c

    .line 1492
    invoke-interface {p5}, Lcom/loopj/android/http/ResponseHandlerInterface;->getUseSynchronousMode()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p5}, Lcom/loopj/android/http/ResponseHandlerInterface;->getUsePoolThread()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 1493
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Synchronous ResponseHandler used in AsyncHttpClient. You should create your response handler in a looper thread or use SyncHttpClient instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    :goto_19
    if-eqz p4, :cond_3f

    .line 1497
    instance-of v0, p3, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v0, :cond_3a

    move-object v0, p3

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_3a

    const-string v0, "Content-Type"

    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1498
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Passed contentType will be ignored because HttpEntity sets content type"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 1500
    :cond_3a
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    :cond_3f
    :goto_3f
    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->setRequestHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 1505
    invoke-interface {p3}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->setRequestURI(Ljava/net/URI;)V

    .line 1507
    invoke-virtual/range {p0 .. p6}, Lcom/loopj/android/http/AsyncHttpClient;->newAsyncHttpRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/AsyncHttpRequest;

    move-result-object p1

    move-object p2, p0

    .line 1508
    iget-object p3, p2, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p3, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1509
    new-instance p3, Lcom/loopj/android/http/RequestHandle;

    invoke-direct {p3, p1}, Lcom/loopj/android/http/RequestHandle;-><init>(Lcom/loopj/android/http/AsyncHttpRequest;)V

    if-eqz p6, :cond_9b

    .line 1514
    iget-object p1, p2, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    monitor-enter p1

    .line 1515
    :try_start_61
    iget-object p4, p2, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {p4, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    if-nez p4, :cond_79

    .line 1517
    new-instance p4, Ljava/util/LinkedList;

    invoke-direct {p4}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    .line 1518
    iget-object p5, p2, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {p5, p6, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    :cond_79
    monitor-exit p1
    :try_end_7a
    .catchall {:try_start_61 .. :try_end_7a} :catchall_97

    .line 1522
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1525
    :cond_81
    :goto_81
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_9b

    .line 1526
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/loopj/android/http/RequestHandle;

    invoke-virtual {p4}, Lcom/loopj/android/http/RequestHandle;->shouldBeGarbageCollected()Z

    move-result p4

    if-eqz p4, :cond_81

    .line 1527
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_81

    :catchall_97
    move-exception v0

    move-object p3, v0

    .line 1520
    :try_start_99
    monitor-exit p1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_97

    throw p3

    :cond_9b
    return-object p3

    :cond_9c
    move-object p2, p0

    .line 1489
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "ResponseHandler must not be null"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a5
    move-object p2, p0

    .line 1485
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "HttpUriRequest must not be null"

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAuthenticationPreemptive(Z)V
    .registers 4

    if-eqz p1, :cond_e

    .line 860
    iget-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    new-instance v0, Lcom/loopj/android/http/PreemptiveAuthorizationHttpRequestInterceptor;

    invoke-direct {v0}, Lcom/loopj/android/http/PreemptiveAuthorizationHttpRequestInterceptor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->addRequestInterceptor(Lcz/msebera/android/httpclient/HttpRequestInterceptor;I)V

    return-void

    .line 862
    :cond_e
    iget-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    const-class v0, Lcom/loopj/android/http/PreemptiveAuthorizationHttpRequestInterceptor;

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 802
    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthScope;)V
    .registers 5

    const/4 v0, 0x0

    .line 826
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthScope;Z)V

    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthScope;Z)V
    .registers 6

    .line 839
    new-instance v0, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0, p3, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;)V

    .line 841
    invoke-virtual {p0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->setAuthenticationPreemptive(Z)V

    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 814
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthScope;Z)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 4

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_6

    const/16 p1, 0x2710

    .line 690
    :cond_6
    iput p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    .line 691
    iget-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object p1

    .line 692
    iget v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->setTimeout(Lcz/msebera/android/httpclient/params/HttpParams;J)V

    .line 693
    iget v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    return-void
.end method

.method public setCookieStore(Lcz/msebera/android/httpclient/client/CookieStore;)V
    .registers 4

    .line 538
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;)V
    .registers 4

    if-nez p2, :cond_c

    .line 846
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string p2, "AsyncHttpClient"

    const-string v0, "Provided credentials are null, not setting"

    invoke-interface {p1, p2, v0}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 849
    :cond_c
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->getCredentialsProvider()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v0

    if-nez p1, :cond_16

    sget-object p1, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY:Lcz/msebera/android/httpclient/auth/AuthScope;

    :cond_16
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->setCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;)V

    return-void
.end method

.method public setEnableRedirects(Z)V
    .registers 2

    .line 613
    invoke-virtual {p0, p1, p1, p1}, Lcom/loopj/android/http/AsyncHttpClient;->setEnableRedirects(ZZZ)V

    return-void
.end method

.method public setEnableRedirects(ZZ)V
    .registers 4

    const/4 v0, 0x1

    .line 605
    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setEnableRedirects(ZZZ)V

    return-void
.end method

.method public setEnableRedirects(ZZZ)V
    .registers 6

    .line 592
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    xor-int/lit8 p2, p2, 0x1

    const-string v1, "http.protocol.reject-relative-redirect"

    invoke-interface {v0, v1, p2}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 593
    iget-object p2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object p2

    const-string v0, "http.protocol.allow-circular-redirects"

    invoke-interface {p2, v0, p3}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 594
    iget-object p2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    new-instance p3, Lcom/loopj/android/http/MyRedirectHandler;

    invoke-direct {p3, p1}, Lcom/loopj/android/http/MyRedirectHandler;-><init>(Z)V

    invoke-virtual {p2, p3}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->setRedirectHandler(Lcz/msebera/android/httpclient/client/RedirectHandler;)V

    return-void
.end method

.method public setLogInterface(Lcom/loopj/android/http/LogInterface;)V
    .registers 2

    if-eqz p1, :cond_4

    .line 527
    sput-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    :cond_4
    return-void
.end method

.method public setLoggingEnabled(Z)V
    .registers 3

    .line 487
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    invoke-interface {v0, p1}, Lcom/loopj/android/http/LogInterface;->setLoggingEnabled(Z)V

    return-void
.end method

.method public setLoggingLevel(I)V
    .registers 3

    .line 507
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    invoke-interface {v0, p1}, Lcom/loopj/android/http/LogInterface;->setLoggingLevel(I)V

    return-void
.end method

.method public setMaxConnections(I)V
    .registers 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    const/16 p1, 0xa

    .line 654
    :cond_5
    iput p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    .line 655
    iget-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object p1

    .line 656
    new-instance v0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    iget v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;)V

    return-void
.end method

.method public setMaxRetriesAndTimeout(II)V
    .registers 5

    .line 764
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/loopj/android/http/RetryHandler;

    invoke-direct {v1, p1, p2}, Lcom/loopj/android/http/RetryHandler;-><init>(II)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)V

    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .registers 4

    .line 725
    new-instance v0, Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 726
    iget-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object p1

    .line 727
    const-string p2, "http.route.default-proxy"

    invoke-interface {p1, p2, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 739
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->getCredentialsProvider()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v0

    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthScope;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;

    invoke-direct {v2, p3, p4}, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->setCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;)V

    .line 742
    new-instance p3, Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {p3, p1, p2}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 743
    iget-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object p1

    .line 744
    const-string p2, "http.route.default-proxy"

    invoke-interface {p1, p2, p3}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public setRedirectHandler(Lcz/msebera/android/httpclient/client/RedirectHandler;)V
    .registers 3

    .line 624
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->setRedirectHandler(Lcz/msebera/android/httpclient/client/RedirectHandler;)V

    return-void
.end method

.method public setResponseTimeout(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_6

    const/16 p1, 0x2710

    .line 713
    :cond_6
    iput p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    .line 714
    iget-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object p1

    .line 715
    iget v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->setSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;I)V

    return-void
.end method

.method public setSSLSocketFactory(Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;)V
    .registers 6

    .line 754
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 559
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public setTimeout(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_6

    const/16 p1, 0x2710

    .line 669
    :cond_6
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->setConnectTimeout(I)V

    .line 670
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->setResponseTimeout(I)V

    return-void
.end method

.method public setURLEncodingEnabled(Z)V
    .registers 2

    .line 1552
    iput-boolean p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 3

    .line 634
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->setUserAgent(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V

    return-void
.end method
