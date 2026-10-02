.class Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/http/AsyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflatingEntity"
.end annotation


# instance fields
.field gzippedStream:Ljava/util/zip/GZIPInputStream;

.field pushbackStream:Ljava/io/PushbackInputStream;

.field wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 2

    .line 1609
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1631
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;->wrappedStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 1632
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;->pushbackStream:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 1633
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;->gzippedStream:Ljava/util/zip/GZIPInputStream;

    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 1634
    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1614
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;->wrappedStream:Ljava/io/InputStream;

    .line 1615
    new-instance v0, Ljava/io/PushbackInputStream;

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;->wrappedStream:Ljava/io/InputStream;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;->pushbackStream:Ljava/io/PushbackInputStream;

    .line 1616
    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->isInputStreamGZIPCompressed(Ljava/io/PushbackInputStream;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1617
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;->pushbackStream:Ljava/io/PushbackInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;->gzippedStream:Ljava/util/zip/GZIPInputStream;

    return-object v0

    .line 1620
    :cond_22
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;->pushbackStream:Ljava/io/PushbackInputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 1626
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method
