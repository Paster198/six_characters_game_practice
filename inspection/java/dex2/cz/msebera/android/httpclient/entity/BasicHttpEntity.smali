.class public Lcz/msebera/android/httpclient/entity/BasicHttpEntity;
.super Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.source "BasicHttpEntity.java"


# instance fields
.field private content:Ljava/io/InputStream;

.field private length:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    const-wide/16 v0, -0x1

    .line 58
    iput-wide v0, p0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->length:J

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Content has not been provided"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 3

    .line 128
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    sget-object v1, Lcz/msebera/android/httpclient/impl/io/EmptyInputStream;->INSTANCE:Lcz/msebera/android/httpclient/impl/io/EmptyInputStream;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public setContent(Ljava/io/InputStream;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    return-void
.end method

.method public setContentLength(J)V
    .registers 3

    .line 98
    iput-wide p1, p0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->length:J

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    .line 117
    :try_start_b
    new-array v1, v1, [B

    .line 118
    :goto_d
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    const/4 v3, 0x0

    .line 119
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1d

    goto :goto_d

    .line 122
    :cond_19
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_1d
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method
