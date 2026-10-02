.class Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .registers 1

    .line 65
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method static consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_3

    goto :goto_12

    .line 47
    :cond_3
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 48
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 50
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_12
    :goto_12
    return-void
.end method

.method static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x800

    .line 56
    new-array v0, v0, [B

    .line 58
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x0

    .line 59
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_10
    return-void
.end method

.method static copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :try_start_0
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 73
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 74
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    .line 76
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 77
    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 79
    throw v0
.end method

.method static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {p0, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    :try_start_e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 88
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_35

    .line 90
    :try_start_16
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 91
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 92
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_25} :catch_2c

    .line 99
    :try_start_25
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 100
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catch_2c
    move-exception v0

    move-object p1, v0

    .line 94
    invoke-static {v2}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 95
    invoke-static {v7}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 97
    throw p1
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_35} :catch_35

    :catch_35
    move-exception v0

    move-object p1, v0

    .line 102
    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 103
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 105
    throw p1
.end method
