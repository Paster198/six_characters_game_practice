.class public Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;
.super Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;
.source "SocketInputBuffer.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/EofSensor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private eof:Z

.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;-><init>()V

    .line 69
    const-string v0, "Socket"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->eof:Z

    if-gez p2, :cond_13

    .line 74
    invoke-virtual {p1}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result p2

    :cond_13
    const/16 v0, 0x400

    if-ge p2, v0, :cond_18

    move p2, v0

    .line 79
    :cond_18
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->init(Ljava/io/InputStream;ILcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected fillBuffer()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 85
    :goto_a
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->eof:Z

    return v0
.end method

.method public isDataAvailable(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_25

    .line 92
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    .line 94
    :try_start_c
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 95
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->fillBuffer()I

    .line 96
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->hasBufferedData()Z

    move-result p1
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1e

    .line 98
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    return p1

    :catchall_1e
    move-exception p1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    throw p1

    :cond_25
    return v0
.end method

.method public isEof()Z
    .registers 2

    .line 105
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->eof:Z

    return v0
.end method
