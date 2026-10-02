.class public Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "BufferedHttpEntity.java"


# instance fields
.field private final buffer:[B


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 62
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    goto :goto_18

    :cond_14
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    return-void

    .line 63
    :cond_18
    :goto_18
    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->toByteArray(Lcz/msebera/android/httpclient/HttpEntity;)[B

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_c

    .line 81
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 83
    :cond_c
    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_7

    .line 72
    array-length v0, v0

    int-to-long v0, v0

    return-wide v0

    .line 74
    :cond_7
    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public isChunked()Z
    .registers 2

    .line 94
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-nez v0, :cond_c

    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .line 122
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-nez v0, :cond_c

    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_d

    .line 112
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 114
    :cond_d
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
