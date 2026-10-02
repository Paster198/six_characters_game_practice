.class Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;
.super Ljava/lang/Object;
.source "HttpResponseProxy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;


# instance fields
.field private final connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

.field private final original:Lcz/msebera/android/httpclient/HttpResponse;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    .line 57
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    .line 58
    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->enchance(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V

    return-void
.end method


# virtual methods
.method public addHeader(Lcz/msebera/android/httpclient/Header;)V
    .registers 3

    .line 150
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 155
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    if-eqz v0, :cond_7

    .line 64
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    :cond_7
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .registers 3

    .line 125
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getAllHeaders()[Lcz/msebera/android/httpclient/Header;
    .registers 2

    .line 145
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getEntity()Lcz/msebera/android/httpclient/HttpEntity;
    .registers 2

    .line 100
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
    .registers 3

    .line 135
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;
    .registers 3

    .line 130
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    return-object p1
.end method

.method public getLastHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
    .registers 3

    .line 140
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->getLastHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 110
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;
    .registers 2

    .line 120
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getStatusLine()Lcz/msebera/android/httpclient/StatusLine;
    .registers 2

    .line 70
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    return-object v0
.end method

.method public headerIterator()Lcz/msebera/android/httpclient/HeaderIterator;
    .registers 2

    .line 185
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->headerIterator()Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v0

    return-object v0
.end method

.method public headerIterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;
    .registers 3

    .line 190
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->headerIterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object p1

    return-object p1
.end method

.method public removeHeader(Lcz/msebera/android/httpclient/Header;)V
    .registers 3

    .line 175
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeader(Lcz/msebera/android/httpclient/Header;)V

    return-void
.end method

.method public removeHeaders(Ljava/lang/String;)V
    .registers 3

    .line 180
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    return-void
.end method

.method public setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void
.end method

.method public setHeader(Lcz/msebera/android/httpclient/Header;)V
    .registers 3

    .line 160
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->setHeader(Lcz/msebera/android/httpclient/Header;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 165
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeaders([Lcz/msebera/android/httpclient/Header;)V
    .registers 3

    .line 170
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 3

    .line 115
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->setReasonPhrase(Ljava/lang/String;)V

    return-void
.end method

.method public setStatusCode(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->setStatusCode(I)V

    return-void
.end method

.method public setStatusLine(Lcz/msebera/android/httpclient/ProtocolVersion;I)V
    .registers 4

    .line 80
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->setStatusLine(Lcz/msebera/android/httpclient/ProtocolVersion;I)V

    return-void
.end method

.method public setStatusLine(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V
    .registers 5

    .line 85
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/HttpResponse;->setStatusLine(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    return-void
.end method

.method public setStatusLine(Lcz/msebera/android/httpclient/StatusLine;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->setStatusLine(Lcz/msebera/android/httpclient/StatusLine;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpResponseProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;->original:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
