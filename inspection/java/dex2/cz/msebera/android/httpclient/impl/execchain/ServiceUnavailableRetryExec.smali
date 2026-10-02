.class public Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;
.super Ljava/lang/Object;
.source "ServiceUnavailableRetryExec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

.field private final retryStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V
    .registers 5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 70
    const-string v0, "HTTP request executor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    const-string v0, "Retry strategy"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 73
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;->retryStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    return-void
.end method


# virtual methods
.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 82
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    const/4 v1, 0x1

    .line 84
    :goto_5
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    invoke-interface {v2, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v2

    .line 87
    :try_start_b
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;->retryStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    invoke-interface {v3, v2, v1, p3}, Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;->retryRequest(Lcz/msebera/android/httpclient/HttpResponse;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 88
    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 89
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;->retryStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;->getRetryInterval()J

    move-result-wide v3
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_1c} :catch_52

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_4b

    .line 92
    :try_start_22
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wait for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 93
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_3d} :catch_52

    goto :goto_4b

    .line 95
    :catch_3e
    :try_start_3e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 96
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 99
    :cond_4b
    :goto_4b
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setHeaders([Lcz/msebera/android/httpclient/Header;)V
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_4e} :catch_52

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_51
    return-object v2

    :catch_52
    move-exception p1

    .line 104
    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    .line 105
    throw p1
.end method
