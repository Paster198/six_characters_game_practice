.class Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;
.super Ljava/io/InputStream;
.source "LazyDecompressingInputStream.java"


# instance fields
.field private final inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

.field private final wrappedStream:Ljava/io/InputStream;

.field private wrapperStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 48
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 49
    iput-object p2, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    return-void
.end method

.method private initWrapper()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    if-nez v0, :cond_e

    .line 54
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->inputStreamFactory:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    iget-object v1, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;->create(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    :cond_e
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 90
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    .line 97
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_d

    .line 100
    :cond_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 61
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 67
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 73
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->initWrapper()V

    .line 79
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/LazyDecompressingInputStream;->wrapperStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
