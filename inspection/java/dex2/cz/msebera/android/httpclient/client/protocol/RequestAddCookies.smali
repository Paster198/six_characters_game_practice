.class public Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    const-string v0, "HTTP context"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_ef

    .line 86
    :cond_1c
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getCookieStore()Lcz/msebera/android/httpclient/client/CookieStore;

    move-result-object v1

    if-nez v1, :cond_2e

    .line 91
    iget-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "Cookie store not specified in HTTP context"

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void

    .line 96
    :cond_2e
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getCookieSpecRegistry()Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v2

    if-nez v2, :cond_3c

    .line 98
    iget-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "CookieSpec registry not specified in HTTP context"

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void

    .line 103
    :cond_3c
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    if-nez v3, :cond_4a

    .line 105
    iget-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "Target host not set in the context"

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void

    .line 110
    :cond_4a
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getHttpRoute()Lcz/msebera/android/httpclient/conn/routing/RouteInfo;

    move-result-object v4

    if-nez v4, :cond_58

    .line 112
    iget-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "Connection route not set in the context"

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void

    .line 116
    :cond_58
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v5

    .line 117
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getCookieSpec()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_64

    .line 119
    const-string v5, "default"

    .line 121
    :cond_64
    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_80

    .line 122
    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "CookieSpec selected: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 126
    :cond_80
    instance-of v6, p1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    const/4 v7, 0x0

    if-eqz v6, :cond_8d

    .line 127
    move-object v6, p1

    check-cast v6, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    goto :goto_9c

    .line 130
    :cond_8d
    :try_start_8d
    new-instance v6, Ljava/net/URI;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v8

    invoke-interface {v8}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/net/URISyntaxException; {:try_start_8d .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-object v6, v7

    :goto_9c
    if-eqz v6, :cond_a2

    .line 134
    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 135
    :cond_a2
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v3

    if-gez v3, :cond_b4

    .line 138
    invoke-interface {v4}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v3

    .line 141
    :cond_b4
    new-instance v8, Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    const/4 v9, 0x0

    if-ltz v3, :cond_ba

    goto :goto_bb

    :cond_ba
    move v3, v9

    .line 144
    :goto_bb
    invoke-static {v7}, Lcz/msebera/android/httpclient/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c2

    goto :goto_c4

    :cond_c2
    const-string v7, "/"

    .line 145
    :goto_c4
    invoke-interface {v4}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->isSecure()Z

    move-result v4

    invoke-direct {v8, v6, v3, v7, v4}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 148
    invoke-interface {v2, v5}, Lcz/msebera/android/httpclient/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;

    if-nez v2, :cond_f0

    .line 150
    iget-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_ef

    .line 151
    iget-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported cookie policy: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_ef
    :goto_ef
    return-void

    .line 156
    :cond_f0
    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;->create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;

    move-result-object v0

    .line 158
    invoke-interface {v1}, Lcz/msebera/android/httpclient/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    .line 160
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 163
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_106
    :goto_106
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 164
    invoke-interface {v5, v4}, Lcz/msebera/android/httpclient/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v6

    const-string v7, "Cookie "

    if-nez v6, :cond_148

    .line 165
    invoke-interface {v0, v5, v8}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v6

    if-eqz v6, :cond_106

    .line 166
    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_144

    .line 167
    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " match "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 169
    :cond_144
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_106

    .line 172
    :cond_148
    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_168

    .line 173
    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " expired"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_168
    const/4 v5, 0x1

    move v9, v5

    goto :goto_106

    :cond_16b
    if-eqz v9, :cond_170

    .line 182
    invoke-interface {v1, v4}, Lcz/msebera/android/httpclient/client/CookieStore;->clearExpired(Ljava/util/Date;)Z

    .line 185
    :cond_170
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18e

    .line 186
    invoke-interface {v0, v3}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 187
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/Header;

    .line 188
    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    goto :goto_17e

    .line 192
    :cond_18e
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->getVersion()I

    move-result v1

    if-lez v1, :cond_19d

    .line 194
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->getVersionHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    if-eqz v1, :cond_19d

    .line 197
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 203
    :cond_19d
    const-string p1, "http.cookie-spec"

    invoke-interface {p2, p1, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    const-string p1, "http.cookie-origin"

    invoke-interface {p2, p1, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
