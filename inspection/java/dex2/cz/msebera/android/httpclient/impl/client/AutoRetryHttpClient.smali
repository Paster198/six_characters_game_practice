.class public Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;
.super Ljava/lang/Object;
.source "AutoRetryHttpClient.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/HttpClient;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final backend:Lcz/msebera/android/httpclient/client/HttpClient;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final retryStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 83
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;-><init>()V

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;-><init>(Lcz/msebera/android/httpclient/client/HttpClient;Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/HttpClient;)V
    .registers 3

    .line 107
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;-><init>()V

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;-><init>(Lcz/msebera/android/httpclient/client/HttpClient;Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/HttpClient;Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 71
    const-string v0, "HttpClient"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    const-string v0, "ServiceUnavailableRetryStrategy"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->backend:Lcz/msebera/android/httpclient/client/HttpClient;

    .line 74
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->retryStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V
    .registers 3

    .line 95
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>()V

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;-><init>(Lcz/msebera/android/httpclient/client/HttpClient;Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V

    return-void
.end method


# virtual methods
.method public execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 156
    :goto_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->backend:Lcz/msebera/android/httpclient/client/HttpClient;

    invoke-interface {v1, p1, p2, p3}, Lcz/msebera/android/httpclient/client/HttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v1

    .line 158
    :try_start_7
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->retryStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    invoke-interface {v2, v1, v0, p3}, Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;->retryRequest(Lcz/msebera/android/httpclient/HttpResponse;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 159
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 160
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->retryStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;->getRetryInterval()J

    move-result-wide v2
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1c} :catch_48

    .line 162
    :try_start_1c
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wait for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_37} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_37} :catch_48

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :catch_3a
    :try_start_3a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 166
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_47} :catch_48

    :cond_47
    return-object v1

    :catch_48
    move-exception p1

    .line 173
    :try_start_49
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p2

    invoke-static {p2}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_50} :catch_51

    goto :goto_59

    :catch_51
    move-exception p2

    .line 175
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "I/O error consuming response content"

    invoke-virtual {p3, v0, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 177
    :goto_59
    throw p1
.end method

.method public execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-interface {p1}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 136
    new-instance v1, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v3

    .line 137
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    invoke-virtual {p0, v1, p1, p2}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

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
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;

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
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1, p2, p4}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    .line 125
    invoke-interface {p3, p1}, Lcz/msebera/android/httpclient/client/ResponseHandler;->handleResponse(Lcz/msebera/android/httpclient/HttpResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;
    .registers 4
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
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1, p3}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    .line 150
    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/client/ResponseHandler;->handleResponse(Lcz/msebera/android/httpclient/HttpResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .registers 2

    .line 183
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->backend:Lcz/msebera/android/httpclient/client/HttpClient;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/HttpClient;->getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 2

    .line 187
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->backend:Lcz/msebera/android/httpclient/client/HttpClient;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/HttpClient;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
