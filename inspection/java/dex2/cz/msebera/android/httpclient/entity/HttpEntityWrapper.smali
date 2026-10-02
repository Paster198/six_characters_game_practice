.class public Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.super Ljava/lang/Object;
.source "HttpEntityWrapper.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntity;


# instance fields
.field protected wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "Wrapped entity"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/HttpEntity;

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .registers 2

    .line 84
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lcz/msebera/android/httpclient/Header;
    .registers 2

    .line 79
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    .line 64
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .line 101
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
