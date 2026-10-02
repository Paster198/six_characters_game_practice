.class public Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;
.super Ljava/lang/Object;
.source "AsynchronousValidationRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final cacheEntry:Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

.field private final cachingExec:Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;

.field private final consecutiveFailedAttempts:I

.field private final context:Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

.field private final execAware:Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

.field private final identifier:Ljava/lang/String;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final parent:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

.field private final request:Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

.field private final route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;I)V
    .registers 12

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 80
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->parent:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    .line 81
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->cachingExec:Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;

    .line 82
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 83
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->request:Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    .line 84
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->context:Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    .line 85
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->execAware:Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

    .line 86
    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->cacheEntry:Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 87
    iput-object p8, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    .line 88
    iput p9, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->consecutiveFailedAttempts:I

    return-void
.end method

.method private isNotServerError(I)Z
    .registers 3

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private isNotStale(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 7

    .line 147
    const-string v0, "Warning"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 150
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_28

    aget-object v3, p1, v2

    .line 157
    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 158
    const-string v4, "110"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string v4, "111"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_27

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_27
    :goto_27
    return v1

    :cond_28
    const/4 p1, 0x1

    return p1
.end method

.method private revalidateCacheEntry()Z
    .registers 9

    const/4 v1, 0x0

    .line 113
    :try_start_1
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->cachingExec:Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->request:Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->context:Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->execAware:Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->cacheEntry:Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    invoke-virtual/range {v2 .. v7}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->revalidateCacheEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_50
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_1 .. :try_end_11} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_11} :catch_31

    .line 115
    :try_start_11
    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    .line 116
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->isNotServerError(I)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->isNotStale(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_2c

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    move v0, v1

    .line 118
    :goto_28
    :try_start_28
    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    return v0

    :catchall_2c
    move-exception v0

    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    throw v0
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_31} :catch_50
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_28 .. :try_end_31} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_31} :catch_31

    :catch_31
    move-exception v0

    .line 127
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RuntimeException thrown during asynchronous revalidation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->error(Ljava/lang/Object;)V

    return v1

    :catch_47
    move-exception v0

    .line 124
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "HTTP protocol exception during asynchronous revalidation"

    invoke-virtual {v2, v3, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return v1

    :catch_50
    move-exception v0

    .line 121
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Asynchronous revalidation failed due to I/O error"

    invoke-virtual {v2, v3, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return v1
.end method


# virtual methods
.method public getConsecutiveFailedAttempts()I
    .registers 2

    .line 176
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->consecutiveFailedAttempts:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 4

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->revalidateCacheEntry()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 95
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->parent:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;->jobSuccessful(Ljava/lang/String;)V

    goto :goto_15

    .line 97
    :cond_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->parent:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;->jobFailed(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_1d

    .line 100
    :goto_15
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->parent:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    return-void

    :catchall_1d
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->parent:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidationRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;->markComplete(Ljava/lang/String;)V

    throw v0
.end method
