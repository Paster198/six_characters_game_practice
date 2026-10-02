.class public Lcz/msebera/android/httpclient/protocol/RequestContent;
.super Ljava/lang/Object;
.source "RequestContent.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# instance fields
.field private final overwrite:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/protocol/RequestContent;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/protocol/RequestContent;->overwrite:Z

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const-string p2, "HTTP request"

    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    instance-of p2, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz p2, :cond_b5

    .line 88
    iget-boolean p2, p0, Lcz/msebera/android/httpclient/protocol/RequestContent;->overwrite:Z

    const-string v0, "Transfer-Encoding"

    const-string v1, "Content-Length"

    if-eqz p2, :cond_18

    .line 89
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 90
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    goto :goto_24

    .line 92
    :cond_18
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_ad

    .line 95
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a5

    .line 99
    :goto_24
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p2

    invoke-interface {p2}, Lcz/msebera/android/httpclient/RequestLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object p2

    .line 100
    move-object v2, p1

    check-cast v2, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v2

    if-nez v2, :cond_3b

    .line 102
    const-string p2, "0"

    invoke-interface {p1, v1, p2}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_3b
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->isChunked()Z

    move-result v3

    if-nez v3, :cond_58

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_4c

    goto :goto_58

    .line 113
    :cond_4c
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 107
    :cond_58
    :goto_58
    sget-object v1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {p2, v1}, Lcz/msebera/android/httpclient/ProtocolVersion;->lessEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 111
    const-string p2, "chunked"

    invoke-interface {p1, v0, p2}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_65
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    if-eqz p2, :cond_7a

    const-string p2, "Content-Type"

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7a

    .line 118
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 121
    :cond_7a
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    if-eqz p2, :cond_b5

    const-string p2, "Content-Encoding"

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_b5

    .line 123
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    return-void

    .line 108
    :cond_90
    new-instance p1, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Chunked transfer encoding not allowed for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_a5
    new-instance p1, Lcz/msebera/android/httpclient/ProtocolException;

    const-string p2, "Content-Length header already present"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_ad
    new-instance p1, Lcz/msebera/android/httpclient/ProtocolException;

    const-string p2, "Transfer-encoding header already present"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b5
    return-void
.end method
