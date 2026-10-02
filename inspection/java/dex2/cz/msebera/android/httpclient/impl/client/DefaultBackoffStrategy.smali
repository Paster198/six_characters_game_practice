.class public Lcz/msebera/android/httpclient/impl/client/DefaultBackoffStrategy;
.super Ljava/lang/Object;
.source "DefaultBackoffStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldBackoff(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 3

    .line 53
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0x1f7

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public shouldBackoff(Ljava/lang/Throwable;)Z
    .registers 3

    .line 47
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_b

    instance-of p1, p1, Ljava/net/ConnectException;

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method
