.class public Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;
.super Ljava/lang/Object;
.source "MinimalClientExec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# instance fields
.field private final connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private final httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private final keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;)V
    .registers 11

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 96
    const-string v0, "HTTP request executor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string v0, "Client connection manager"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    const-string v0, "Connection reuse strategy"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    const-string v0, "Connection keep alive strategy"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    new-instance v0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    const/4 v1, 0x4

    new-array v1, v1, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    new-instance v2, Lcz/msebera/android/httpclient/protocol/RequestContent;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/protocol/RequestContent;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    const-string v3, "cz.msebera.android.httpclient.client"

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 104
    const-string v5, "Apache-HttpClient"

    invoke-static {v5, v3, v4}, Lcz/msebera/android/httpclient/util/VersionInfo;->getUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 106
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 107
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 108
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    .line 109
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    return-void
.end method

.method static rewriteRequestURI(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 119
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 120
    invoke-static {p1, v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object p1

    goto :goto_17

    .line 122
    :cond_13
    invoke-static {p1}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 124
    :goto_17
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_1a
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_1a} :catch_1b

    :cond_1a
    return-void

    :catch_1b
    move-exception p1

    .line 127
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p0

    invoke-interface {p0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 137
    const-string v0, "HTTP route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->rewriteRequestURI(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 143
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ConnectionRequest;

    move-result-object v0

    .line 144
    const-string v2, "Request aborted"

    if-eqz p4, :cond_30

    .line 145
    invoke-interface {p4}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v3

    if-nez v3, :cond_27

    .line 149
    invoke-interface {p4, v0}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->setCancellable(Lcz/msebera/android/httpclient/concurrent/Cancellable;)V

    goto :goto_30

    .line 146
    :cond_27
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ConnectionRequest;->cancel()Z

    .line 147
    new-instance p1, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    invoke-direct {p1, v2}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_30
    :goto_30
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v3

    .line 157
    :try_start_34
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v4

    if-lez v4, :cond_3c

    int-to-long v4, v4

    goto :goto_3e

    :cond_3c
    const-wide/16 v4, 0x0

    .line 158
    :goto_3e
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Lcz/msebera/android/httpclient/conn/ConnectionRequest;->get(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/HttpClientConnection;

    move-result-object v0
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_44} :catch_136
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_34 .. :try_end_44} :catch_125

    .line 170
    new-instance v4, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-direct {v4, v5, v6, v0}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/HttpClientConnection;)V

    if-eqz p4, :cond_62

    .line 173
    :try_start_4f
    invoke-interface {p4}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v5

    if-nez v5, :cond_59

    .line 177
    invoke-interface {p4, v4}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->setCancellable(Lcz/msebera/android/httpclient/concurrent/Cancellable;)V

    goto :goto_62

    .line 174
    :cond_59
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->close()V

    .line 175
    new-instance p1, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    invoke-direct {p1, v2}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_62
    :goto_62
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->isOpen()Z

    move-result p4

    if-nez p4, :cond_7a

    .line 182
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectTimeout()I

    move-result p4

    .line 183
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    if-lez p4, :cond_71

    goto :goto_72

    :cond_71
    const/4 p4, 0x0

    :goto_72
    invoke-interface {v2, v0, p1, p4, p3}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->connect(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 188
    iget-object p4, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {p4, v0, p1, p3}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->routeComplete(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 190
    :cond_7a
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getSocketTimeout()I

    move-result p4

    if-ltz p4, :cond_83

    .line 192
    invoke-interface {v0, p4}, Lcz/msebera/android/httpclient/HttpClientConnection;->setSocketTimeout(I)V

    .line 196
    :cond_83
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object p4

    .line 197
    instance-of v2, p4, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    if-eqz v2, :cond_a9

    .line 198
    check-cast p4, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {p4}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p4

    .line 199
    invoke-virtual {p4}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 200
    new-instance v2, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {p4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual {p4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v2, v3, v5, p4}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_aa

    :cond_a9
    move-object v2, v1

    :goto_aa
    if-nez v2, :cond_b0

    .line 204
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    .line 207
    :cond_b0
    const-string p4, "http.target_host"

    invoke-virtual {p3, p4, v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    const-string p4, "http.request"

    invoke-virtual {p3, p4, p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    const-string p4, "http.connection"

    invoke-virtual {p3, p4, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    const-string p4, "http.route"

    invoke-virtual {p3, p4, p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-interface {p1, p2, p3}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 213
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-virtual {p1, p2, v0, p3}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    .line 214
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 217
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p2

    if-eqz p2, :cond_eb

    .line 219
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)J

    move-result-wide p2

    .line 220
    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->setValidFor(JLjava/util/concurrent/TimeUnit;)V

    .line 221
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->markReusable()V

    goto :goto_ee

    .line 223
    :cond_eb
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->markNonReusable()V

    .line 227
    :goto_ee
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p2

    if-eqz p2, :cond_101

    .line 228
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result p2

    if-nez p2, :cond_fb

    goto :goto_101

    .line 233
    :cond_fb
    new-instance p2, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;

    invoke-direct {p2, p1, v4}, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;-><init>(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V

    return-object p2

    .line 230
    :cond_101
    :goto_101
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->releaseConnection()V

    .line 231
    new-instance p2, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;

    invoke-direct {p2, p1, v1}, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;-><init>(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V
    :try_end_109
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_4f .. :try_end_109} :catch_119
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_4f .. :try_end_109} :catch_114
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_109} :catch_10f
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_109} :catch_10a

    return-object p2

    :catch_10a
    move-exception p1

    .line 247
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 248
    throw p1

    :catch_10f
    move-exception p1

    .line 244
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 245
    throw p1

    :catch_114
    move-exception p1

    .line 241
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 242
    throw p1

    :catch_119
    move-exception p1

    .line 236
    new-instance p2, Ljava/io/InterruptedIOException;

    const-string p3, "Connection has been shut down"

    invoke-direct {p2, p3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 239
    throw p2

    :catch_125
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_12d

    goto :goto_12e

    :cond_12d
    move-object p1, p2

    .line 167
    :goto_12e
    new-instance p2, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    const-string p3, "Request execution failed"

    invoke-direct {p2, p3, p1}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_136
    move-exception p1

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 161
    new-instance p2, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    invoke-direct {p2, v2, p1}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
