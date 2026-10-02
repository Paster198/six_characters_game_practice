.class public Lcz/msebera/android/httpclient/protocol/ResponseContent;
.super Ljava/lang/Object;
.source "ResponseContent.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# instance fields
.field private final overwrite:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/protocol/ResponseContent;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/protocol/ResponseContent;->overwrite:Z

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const-string p2, "HTTP response"

    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    iget-boolean p2, p0, Lcz/msebera/android/httpclient/protocol/ResponseContent;->overwrite:Z

    const-string v0, "Transfer-Encoding"

    const-string v1, "Content-Length"

    if-eqz p2, :cond_14

    .line 95
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 96
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    goto :goto_20

    .line 98
    :cond_14
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a4

    .line 101
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9c

    .line 105
    :goto_20
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lcz/msebera/android/httpclient/StatusLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object p2

    .line 106
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 108
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v3

    .line 109
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->isChunked()Z

    move-result v5

    if-eqz v5, :cond_46

    sget-object v5, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {p2, v5}, Lcz/msebera/android/httpclient/ProtocolVersion;->lessEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result p2

    if-nez p2, :cond_46

    .line 110
    const-string p2, "chunked"

    invoke-interface {p1, v0, p2}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_46
    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-ltz p2, :cond_57

    .line 112
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_57
    :goto_57
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    if-eqz p2, :cond_6c

    const-string p2, "Content-Type"

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6c

    .line 117
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 120
    :cond_6c
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    if-eqz p2, :cond_9b

    const-string p2, "Content-Encoding"

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9b

    .line 122
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    return-void

    .line 125
    :cond_82
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p2

    const/16 v0, 0xcc

    if-eq p2, v0, :cond_9b

    const/16 v0, 0x130

    if-eq p2, v0, :cond_9b

    const/16 v0, 0xcd

    if-eq p2, v0, :cond_9b

    .line 129
    const-string p2, "0"

    invoke-interface {p1, v1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    return-void

    .line 102
    :cond_9c
    new-instance p1, Lcz/msebera/android/httpclient/ProtocolException;

    const-string p2, "Content-Length header already present"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_a4
    new-instance p1, Lcz/msebera/android/httpclient/ProtocolException;

    const-string p2, "Transfer-encoding header already present"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
