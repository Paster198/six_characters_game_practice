.class public Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "DecompressingEntity.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private content:Ljava/io/InputStream;

.field private final inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 67
    iput-object p2, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    return-void
.end method

.method private getDecompressingStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 72
    new-instance v1, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    invoke-direct {v1, v0, v2}, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;)V

    return-object v1
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 78
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    if-nez v0, :cond_12

    .line 79
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    .line 81
    :cond_12
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    return-object v0

    .line 83
    :cond_15
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x800

    .line 92
    :try_start_b
    new-array v1, v1, [B

    .line 94
    :goto_d
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    const/4 v3, 0x0

    .line 95
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1d

    goto :goto_d

    .line 98
    :cond_19
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_1d
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method
