.class public Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
.super Lcz/msebera/android/httpclient/message/AbstractHttpMessage;
.source "HttpRequestWrapper.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;
    }
.end annotation


# instance fields
.field private final method:Ljava/lang/String;

.field private final original:Lcz/msebera/android/httpclient/HttpRequest;

.field private final target:Lcz/msebera/android/httpclient/HttpHost;

.field private uri:Ljava/net/URI;

.field private version:Lcz/msebera/android/httpclient/ProtocolVersion;


# direct methods
.method private constructor <init>(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpHost;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/AbstractHttpMessage;-><init>()V

    .line 64
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpRequest;

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->original:Lcz/msebera/android/httpclient/HttpRequest;

    .line 65
    iput-object p2, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->target:Lcz/msebera/android/httpclient/HttpHost;

    .line 66
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p2

    invoke-interface {p2}, Lcz/msebera/android/httpclient/RequestLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object p2

    iput-object p2, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 67
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p2

    invoke-interface {p2}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->method:Ljava/lang/String;

    .line 68
    instance-of p2, p1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    if-eqz p2, :cond_31

    .line 69
    move-object p2, p1

    check-cast p2, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p2

    iput-object p2, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    goto :goto_34

    :cond_31
    const/4 p2, 0x0

    .line 71
    iput-object p2, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    .line 73
    :goto_34
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    return-void
.end method

.method synthetic constructor <init>(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper$1;)V
    .registers 4

    .line 54
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpHost;)V

    return-void
.end method

.method public static wrap(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .registers 2

    const/4 v0, 0x0

    .line 174
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->wrap(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
    .registers 3

    .line 187
    const-string v0, "HTTP request"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    instance-of v0, p0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_11

    .line 189
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;

    check-cast p0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-direct {v0, p0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;Lcz/msebera/android/httpclient/HttpHost;)V

    return-object v0

    .line 191
    :cond_11
    new-instance v0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    invoke-direct {v0, p0, p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpHost;)V

    return-object v0
.end method


# virtual methods
.method public abort()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal()Lcz/msebera/android/httpclient/HttpRequest;
    .registers 2

    .line 124
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->original:Lcz/msebera/android/httpclient/HttpRequest;

    return-object v0
.end method

.method public getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    if-nez v0, :cond_10

    .line 203
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->original:Lcz/msebera/android/httpclient/HttpRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/params/HttpParams;->copy()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 205
    :cond_10
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    return-object v0
.end method

.method public getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;
    .registers 2

    .line 78
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->original:Lcz/msebera/android/httpclient/HttpRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getRequestLine()Lcz/msebera/android/httpclient/RequestLine;
    .registers 5

    .line 112
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    if-eqz v0, :cond_9

    .line 113
    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 115
    :cond_9
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->original:Lcz/msebera/android/httpclient/HttpRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    :goto_13
    if-eqz v0, :cond_1b

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 118
    :cond_1b
    const-string v0, "/"

    .line 120
    :cond_1d
    new-instance v1, Lcz/msebera/android/httpclient/message/BasicRequestLine;

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->method:Ljava/lang/String;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcz/msebera/android/httpclient/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    return-object v1
.end method

.method public getTarget()Lcz/msebera/android/httpclient/HttpHost;
    .registers 2

    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->target:Lcz/msebera/android/httpclient/HttpHost;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .registers 2

    .line 87
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public isAborted()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setProtocolVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
