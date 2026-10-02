.class public Lcz/msebera/android/httpclient/impl/client/ProxyClient;
.super Ljava/lang/Object;
.source "ProxyClient.java"


# instance fields
.field private final authSchemeRegistry:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

.field private final authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

.field private final connFactory:Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/conn/HttpConnectionFactory<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

.field private final httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private final proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

.field private final proxyAuthStrategy:Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

.field private final requestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

.field private final requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v0, v0, v0}, Lcz/msebera/android/httpclient/impl/client/ProxyClient;-><init>(Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/config/ConnectionConfig;Lcz/msebera/android/httpclient/client/config/RequestConfig;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/config/RequestConfig;)V
    .registers 3

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0, v0, p1}, Lcz/msebera/android/httpclient/impl/client/ProxyClient;-><init>(Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/config/ConnectionConfig;Lcz/msebera/android/httpclient/client/config/RequestConfig;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/config/ConnectionConfig;Lcz/msebera/android/httpclient/client/config/RequestConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/conn/HttpConnectionFactory<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;",
            "Lcz/msebera/android/httpclient/config/ConnectionConfig;",
            "Lcz/msebera/android/httpclient/client/config/RequestConfig;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_8

    .line 106
    :cond_6
    sget-object p1, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;

    :goto_8
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->connFactory:Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;

    if-eqz p2, :cond_d

    goto :goto_f

    .line 107
    :cond_d
    sget-object p2, Lcz/msebera/android/httpclient/config/ConnectionConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    :goto_f
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    if-eqz p3, :cond_14

    goto :goto_16

    .line 108
    :cond_14
    sget-object p3, Lcz/msebera/android/httpclient/client/config/RequestConfig;->DEFAULT:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    :goto_16
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->requestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .line 109
    new-instance p1, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    const/4 p2, 0x3

    new-array p2, p2, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    new-instance p3, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {p3}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    const/4 v0, 0x0

    aput-object p3, p2, v0

    new-instance p3, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;

    invoke-direct {p3}, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;-><init>()V

    const/4 v0, 0x1

    aput-object p3, p2, v0

    new-instance p3, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    invoke-direct {p3}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>()V

    const/4 v0, 0x2

    aput-object p3, p2, v0

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    .line 111
    new-instance p1, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 112
    new-instance p1, Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthStrategy:Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    .line 113
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    .line 114
    new-instance p1, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    .line 115
    new-instance p1, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authSchemeRegistry:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    .line 116
    new-instance p2, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;

    invoke-direct {p2}, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;-><init>()V

    const-string p3, "Basic"

    invoke-virtual {p1, p3, p2}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V

    .line 117
    new-instance p2, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;

    invoke-direct {p2}, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;-><init>()V

    const-string p3, "Digest"

    invoke-virtual {p1, p3, p2}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V

    .line 118
    new-instance p2, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;

    invoke-direct {p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;-><init>()V

    const-string p3, "NTLM"

    invoke-virtual {p1, p3, p2}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V

    .line 121
    new-instance p1, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    invoke-static {p1}, Lcz/msebera/android/httpclient/params/HttpParamConfig;->getConnectionConfig(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/config/ConnectionConfig;

    move-result-object v0

    .line 131
    invoke-static {p1}, Lcz/msebera/android/httpclient/client/params/HttpClientParamConfig;->getRequestConfig(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object p1

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, v1, v0, p1}, Lcz/msebera/android/httpclient/impl/client/ProxyClient;-><init>(Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/config/ConnectionConfig;Lcz/msebera/android/httpclient/client/config/RequestConfig;)V

    return-void
.end method


# virtual methods
.method public getAuthSchemeRegistry()Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authSchemeRegistry:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    return-object v0
.end method

.method public getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    new-instance v0, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    return-object v0
.end method

.method public tunnel(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/Credentials;)Ljava/net/Socket;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 165
    const-string v0, "Proxy host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    const-string v0, "Target host"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    const-string v0, "Credentials"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v0

    if-gtz v0, :cond_25

    .line 170
    new-instance v0, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_26

    :cond_25
    move-object v0, p2

    .line 172
    :goto_26
    new-instance v2, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->requestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .line 174
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    sget-object v5, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    move-object v2, v1

    .line 177
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->connFactory:Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-interface {v3, v0, v4}, Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;->create(Ljava/lang/Object;Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/HttpConnection;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    .line 179
    new-instance v5, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    .line 182
    new-instance v7, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    .line 183
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const-string v4, "CONNECT"

    invoke-direct {v7, v4, v2, v3}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    .line 185
    new-instance v2, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;-><init>()V

    .line 186
    new-instance v3, Lcz/msebera/android/httpclient/auth/AuthScope;

    invoke-direct {v3, p1}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Lcz/msebera/android/httpclient/HttpHost;)V

    invoke-virtual {v2, v3, p3}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;->setCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;)V

    .line 189
    const-string v3, "http.target_host"

    invoke-interface {v5, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    const-string v3, "http.connection"

    invoke-interface {v5, v3, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    const-string v3, "http.request"

    invoke-interface {v5, v3, v7}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    const-string v3, "http.route"

    invoke-interface {v5, v3, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    const-string v0, "http.auth.proxy-scope"

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-interface {v5, v0, v3}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    const-string v0, "http.auth.credentials-provider"

    invoke-interface {v5, v0, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    const-string v0, "http.authscheme-registry"

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authSchemeRegistry:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    invoke-interface {v5, v0, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    const-string v0, "http.request-config"

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->requestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    invoke-interface {v5, v0, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v0, v7, v2, v5}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->preProcess(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 201
    :goto_9a
    invoke-interface {v6}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 202
    new-instance v0, Ljava/net/Socket;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v3

    invoke-direct {v0, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 203
    invoke-interface {v6, v0}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 206
    :cond_b0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v0, v7, v2, v5}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->generateAuthResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 208
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-virtual {v0, v7, v6, v5}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v2

    .line 210
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_137

    .line 215
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthStrategy:Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 217
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthStrategy:Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 220
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {v0, v2, v5}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 222
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 223
    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    goto :goto_f6

    .line 225
    :cond_f3
    invoke-interface {v6}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->close()V

    .line 228
    :goto_f6
    const-string v0, "Proxy-Authorization"

    invoke-interface {v7, v0}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    goto :goto_9a

    .line 237
    :cond_fc
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12b

    if-le v0, v1, :cond_132

    .line 242
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_116

    .line 244
    new-instance v1, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {v2, v1}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 247
    :cond_116
    invoke-interface {v6}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->close()V

    .line 248
    new-instance v0, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CONNECT refused by proxy: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)V

    throw v0

    .line 251
    :cond_132
    invoke-interface {v6}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 212
    :cond_137
    new-instance v0, Lcz/msebera/android/httpclient/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response to CONNECT request: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
