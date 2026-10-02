.class public Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;
.super Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;
.source "RequestProxyAuthentication.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    const-string v0, "HTTP context"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    const-string v0, "Proxy-Authorization"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2f

    .line 68
    :cond_13
    const-string v0, "http.connection"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/HttpRoutedConnection;

    if-nez v0, :cond_25

    .line 71
    iget-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "HTTP connection not set in the context"

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void

    .line 74
    :cond_25
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/HttpRoutedConnection;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v0

    if-eqz v0, :cond_30

    :goto_2f
    return-void

    .line 80
    :cond_30
    const-string v0, "http.auth.proxy-scope"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthState;

    if-nez v0, :cond_42

    .line 83
    iget-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "Proxy auth state not set in the context"

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void

    .line 86
    :cond_42
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 87
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proxy auth state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 89
    :cond_62
    invoke-virtual {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;->process(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void
.end method
