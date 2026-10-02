.class public Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;
.super Ljava/lang/Object;
.source "DefaultServiceUnavailableRetryStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;


# instance fields
.field private final maxRetries:I

.field private final retryInterval:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    .line 68
    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "Max retries"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    .line 62
    const-string v0, "Retry interval"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    .line 63
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;->maxRetries:I

    int-to-long p1, p2

    .line 64
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;->retryInterval:J

    return-void
.end method


# virtual methods
.method public getRetryInterval()J
    .registers 3

    .line 79
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;->retryInterval:J

    return-wide v0
.end method

.method public retryRequest(Lcz/msebera/android/httpclient/HttpResponse;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 4

    .line 73
    iget p3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;->maxRetries:I

    if-gt p2, p3, :cond_12

    .line 74
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p2, 0x1f7

    if-ne p1, p2, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method
