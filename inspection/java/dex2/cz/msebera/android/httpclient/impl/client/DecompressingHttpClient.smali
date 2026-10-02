.class public Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;
.super Ljava/lang/Object;
.source "DecompressingHttpClient.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/HttpClient;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final acceptEncodingInterceptor:Lcz/msebera/android/httpclient/HttpRequestInterceptor;

.field private final backend:Lcz/msebera/android/httpclient/client/HttpClient;

.field private final contentEncodingInterceptor:Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 89
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;-><init>(Lcz/msebera/android/httpclient/client/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/HttpClient;)V
    .registers 4

    .line 99
    new-instance v0, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;-><init>()V

    new-instance v1, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;-><init>(Lcz/msebera/android/httpclient/client/HttpClient;Lcz/msebera/android/httpclient/HttpRequestInterceptor;Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V

    return-void
.end method

.method constructor <init>(Lcz/msebera/android/httpclient/client/HttpClient;Lcz/msebera/android/httpclient/HttpRequestInterceptor;Lcz/msebera/android/httpclient/HttpResponseInterceptor;)V
    .registers 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->backend:Lcz/msebera/android/httpclient/client/HttpClient;

    .line 106
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->acceptEncodingInterceptor:Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    .line 107
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->contentEncodingInterceptor:Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    return-void
.end method


# virtual methods
.method public execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    move-object v1, v0

    check-cast v1, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    if-eqz p3, :cond_3

    goto :goto_8

    .line 150
    :cond_3
    :try_start_3
    new-instance p3, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {p3}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    .line 152
    :goto_8
    instance-of v0, p2, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_14

    .line 153
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;

    check-cast p2, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    goto :goto_19

    .line 155
    :cond_14
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 157
    :goto_19
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->acceptEncodingInterceptor:Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    invoke-interface {p2, v0, p3}, Lcz/msebera/android/httpclient/HttpRequestInterceptor;->process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 158
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->backend:Lcz/msebera/android/httpclient/client/HttpClient;

    invoke-interface {p2, p1, v0, p3}, Lcz/msebera/android/httpclient/client/HttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1
    :try_end_24
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_3 .. :try_end_24} :catch_62

    .line 160
    :try_start_24
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->contentEncodingInterceptor:Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/HttpResponseInterceptor;->process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 161
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "http.client.response.uncompressed"

    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 162
    const-string p2, "Content-Length"

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 163
    const-string p2, "Content-Encoding"

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 164
    const-string p2, "Content-MD5"

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V
    :try_end_46
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_24 .. :try_end_46} :catch_59
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_46} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_46} :catch_47

    :cond_46
    return-object p1

    :catch_47
    move-exception p2

    .line 174
    :try_start_48
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 175
    throw p2

    :catch_50
    move-exception p2

    .line 171
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 172
    throw p2

    :catch_59
    move-exception p2

    .line 168
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 169
    throw p2
    :try_end_62
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_48 .. :try_end_62} :catch_62

    :catch_62
    move-exception p1

    .line 178
    new-instance p2, Lcz/msebera/android/httpclient/client/ClientProtocolException;

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->getHttpHost(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {p0, v0, p1, v1}, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->getHttpHost(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            "Lcz/msebera/android/httpclient/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            "Lcz/msebera/android/httpclient/client/ResponseHandler<",
            "+TT;>;",
            "Lcz/msebera/android/httpclient/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0, p1, p2, p4}, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    .line 205
    :try_start_4
    invoke-interface {p3, p1}, Lcz/msebera/android/httpclient/client/ResponseHandler;->handleResponse(Lcz/msebera/android/httpclient/HttpResponse;)Ljava/lang/Object;

    move-result-object p2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_12

    .line 207
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 209
    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_11
    return-object p2

    :catchall_12
    move-exception p2

    .line 207
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 209
    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 211
    :cond_1c
    throw p2
.end method

.method public execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;",
            "Lcz/msebera/android/httpclient/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->getHttpHost(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;",
            "Lcz/msebera/android/httpclient/client/ResponseHandler<",
            "+TT;>;",
            "Lcz/msebera/android/httpclient/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->getHttpHost(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .registers 2

    .line 115
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->backend:Lcz/msebera/android/httpclient/client/HttpClient;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/HttpClient;->getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lcz/msebera/android/httpclient/client/HttpClient;
    .registers 2

    .line 129
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->backend:Lcz/msebera/android/httpclient/client/HttpClient;

    return-object v0
.end method

.method getHttpHost(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/HttpHost;
    .registers 2

    .line 133
    invoke-interface {p1}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p1

    .line 134
    invoke-static {p1}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p1

    return-object p1
.end method

.method public getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 2

    .line 111
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DecompressingHttpClient;->backend:Lcz/msebera/android/httpclient/client/HttpClient;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/HttpClient;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
