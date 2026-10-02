.class public Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;
.super Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;
.source "SocketHttpClientConnection.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpInetConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private volatile open:Z

.field private volatile socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    return-void
.end method

.method private static formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V
    .registers 3

    .line 255
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2b

    .line 256
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 257
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 258
    :cond_15
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 257
    :goto_19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x3a

    .line 259
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 260
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void

    .line 262
    :cond_2b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected assertNotOpen()V
    .registers 3

    .line 70
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->open:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Connection is already open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    return-void
.end method

.method protected assertOpen()V
    .registers 3

    .line 75
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->open:Z

    const-string v1, "Connection is not open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    return-void
.end method

.method protected bind(Ljava/net/Socket;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    const-string v0, "Socket"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    .line 147
    const-string v0, "http.socket.buffer-size"

    const/4 v1, -0x1

    invoke-interface {p2, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    .line 149
    invoke-virtual {p0, p1, v0, p2}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->createSessionInputBuffer(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    move-result-object v1

    .line 150
    invoke-virtual {p0, p1, v0, p2}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    move-result-object p1

    .line 148
    invoke-virtual {p0, v1, p1, p2}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->init(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/params/HttpParams;)V

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->open:Z

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->open:Z

    if-nez v0, :cond_5

    goto :goto_16

    :cond_5
    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->open:Z

    .line 234
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    .line 236
    :try_start_a
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->doFlush()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    .line 239
    :try_start_d
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_10
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_10} :catch_13
    .catchall {:try_start_d .. :try_end_10} :catchall_17

    .line 243
    :catch_10
    :try_start_10
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_13
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_10 .. :try_end_13} :catch_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 250
    :catch_13
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :goto_16
    return-void

    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    throw v1
.end method

.method protected createSessionInputBuffer(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/SessionInputBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/SessionOutputBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/SocketOutputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 165
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 166
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .line 173
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 174
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .registers 2

    .line 181
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 182
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemotePort()I
    .registers 2

    .line 189
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 190
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .registers 2

    .line 161
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getSocketTimeout()I
    .registers 3

    .line 210
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    .line 212
    :try_start_5
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    :catch_c
    :cond_c
    return v1
.end method

.method public isOpen()Z
    .registers 2

    .line 157
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->open:Z

    return v0
.end method

.method public setSocketTimeout(I)V
    .registers 3

    .line 197
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->assertOpen()V

    .line 198
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_c

    .line 200
    :try_start_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public shutdown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->open:Z

    .line 223
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_a

    .line 225
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 268
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_29

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    if-eqz v1, :cond_24

    if-eqz v2, :cond_24

    .line 273
    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 274
    const-string v2, "<->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 277
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :cond_29
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
