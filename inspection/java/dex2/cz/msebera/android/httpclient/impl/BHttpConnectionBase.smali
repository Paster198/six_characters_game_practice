.class public Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;
.super Ljava/lang/Object;
.source "BHttpConnectionBase.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpConnection;
.implements Lcz/msebera/android/httpclient/HttpInetConnection;


# instance fields
.field private final connMetrics:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

.field private final inbuffer:Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;

.field private final incomingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

.field private final messageConstraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

.field private final outbuffer:Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;

.field private final outgoingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

.field private final socketHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lcz/msebera/android/httpclient/config/MessageConstraints;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V
    .registers 15

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string v0, "Buffer size"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    .line 115
    new-instance v2, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;-><init>()V

    .line 116
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;-><init>()V

    .line 117
    new-instance v1, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;

    if-eqz p5, :cond_18

    move-object v5, p5

    goto :goto_1b

    :cond_18
    sget-object v3, Lcz/msebera/android/httpclient/config/MessageConstraints;->DEFAULT:Lcz/msebera/android/httpclient/config/MessageConstraints;

    move-object v5, v3

    :goto_1b
    const/4 v4, -0x1

    move v3, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;-><init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;IILcz/msebera/android/httpclient/config/MessageConstraints;Ljava/nio/charset/CharsetDecoder;)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->inbuffer:Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;

    .line 119
    new-instance p1, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;

    invoke-direct {p1, v0, v3, p2, p4}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;-><init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;IILjava/nio/charset/CharsetEncoder;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->outbuffer:Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;

    .line 121
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->messageConstraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    .line 122
    new-instance p1, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    invoke-direct {p1, v2, v0}, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;-><init>(Lcz/msebera/android/httpclient/io/HttpTransportMetrics;Lcz/msebera/android/httpclient/io/HttpTransportMetrics;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->connMetrics:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    if-eqz p6, :cond_36

    goto :goto_38

    .line 123
    :cond_36
    sget-object p6, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;

    :goto_38
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->incomingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    if-eqz p7, :cond_3d

    goto :goto_3f

    .line 125
    :cond_3d
    sget-object p7, Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;

    :goto_3f
    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->outgoingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    .line 127
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private fillInputBuffer(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 343
    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    .line 345
    :try_start_c
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 346
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->inbuffer:Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->fillBuffer()I

    move-result p1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    .line 348
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    return p1

    :catchall_19
    move-exception p1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw p1
.end method


# virtual methods
.method protected awaitInput(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->inbuffer:Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 356
    :cond_a
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->fillInputBuffer(I)I

    .line 357
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->inbuffer:Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result p1

    return p1
.end method

.method protected bind(Ljava/net/Socket;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    const-string v0, "Socket"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 164
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->inbuffer:Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bind(Ljava/io/InputStream;)V

    .line 165
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->outbuffer:Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bind(Ljava/io/OutputStream;)V

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_24

    .line 321
    :try_start_b
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->inbuffer:Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->clear()V

    .line 322
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->outbuffer:Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flush()V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1f

    .line 325
    :try_start_15
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_18
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_15 .. :try_end_18} :catch_1b
    .catchall {:try_start_15 .. :try_end_18} :catchall_1f

    .line 329
    :catch_18
    :try_start_18
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_18 .. :try_end_1b} :catch_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1f

    .line 336
    :catch_1b
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_24

    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    throw v1

    :cond_24
    :goto_24
    return-void
.end method

.method protected createInputStream(JLcz/msebera/android/httpclient/io/SessionInputBuffer;)Ljava/io/InputStream;
    .registers 6

    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_e

    .line 210
    new-instance p1, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;

    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->messageConstraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    invoke-direct {p1, p3, p2}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/config/MessageConstraints;)V

    return-object p1

    :cond_e
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1a

    .line 212
    new-instance p1, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;

    invoke-direct {p1, p3}, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)V

    return-object p1

    :cond_1a
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_23

    .line 214
    sget-object p1, Lcz/msebera/android/httpclient/impl/io/EmptyInputStream;->INSTANCE:Lcz/msebera/android/httpclient/impl/io/EmptyInputStream;

    return-object p1

    .line 216
    :cond_23
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;

    invoke-direct {v0, p3, p1, p2}, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;J)V

    return-object v0
.end method

.method protected createOutputStream(JLcz/msebera/android/httpclient/io/SessionOutputBuffer;)Ljava/io/OutputStream;
    .registers 6

    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_e

    .line 193
    new-instance p1, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;

    const/16 p2, 0x800

    invoke-direct {p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;-><init>(ILcz/msebera/android/httpclient/io/SessionOutputBuffer;)V

    return-object p1

    :cond_e
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1a

    .line 195
    new-instance p1, Lcz/msebera/android/httpclient/impl/io/IdentityOutputStream;

    invoke-direct {p1, p3}, Lcz/msebera/android/httpclient/impl/io/IdentityOutputStream;-><init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;)V

    return-object p1

    .line 197
    :cond_1a
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;

    invoke-direct {v0, p3, p1, p2}, Lcz/msebera/android/httpclient/impl/io/ContentLengthOutputStream;-><init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;J)V

    return-object v0
.end method

.method protected doFlush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->outbuffer:Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flush()V

    return-void
.end method

.method protected ensureOpen()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_2d

    .line 135
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->inbuffer:Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->isBound()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 136
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->inbuffer:Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->getSocketInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bind(Ljava/io/InputStream;)V

    .line 138
    :cond_1b
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->outbuffer:Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->isBound()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 139
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->outbuffer:Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->getSocketOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bind(Ljava/io/OutputStream;)V

    :cond_2c
    return-void

    .line 133
    :cond_2d
    new-instance v0, Lcz/msebera/android/httpclient/ConnectionClosedException;

    const-string v1, "Connection is closed"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 252
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_f

    .line 253
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .line 258
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_f

    .line 259
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method public getMetrics()Lcz/msebera/android/httpclient/HttpConnectionMetrics;
    .registers 2

    .line 385
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->connMetrics:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .registers 2

    .line 264
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_f

    .line 265
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemotePort()I
    .registers 2

    .line 270
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_f

    .line 271
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method protected getSessionInputBuffer()Lcz/msebera/android/httpclient/io/SessionInputBuffer;
    .registers 2

    .line 169
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->inbuffer:Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;

    return-object v0
.end method

.method protected getSessionOutputBuffer()Lcz/msebera/android/httpclient/io/SessionOutputBuffer;
    .registers 2

    .line 173
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->outbuffer:Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;

    return-object v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .registers 2

    .line 186
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    return-object v0
.end method

.method protected getSocketInputStream(Ljava/net/Socket;)Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method protected getSocketOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public getSocketTimeout()I
    .registers 3

    .line 290
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    const/4 v1, -0x1

    if-eqz v0, :cond_10

    .line 293
    :try_start_b
    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_f} :catch_10

    return v0

    :catch_10
    :cond_10
    return v1
.end method

.method protected incrementRequestCount()V
    .registers 2

    .line 376
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->connMetrics:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    return-void
.end method

.method protected incrementResponseCount()V
    .registers 2

    .line 380
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->connMetrics:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    return-void
.end method

.method public isOpen()Z
    .registers 2

    .line 182
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isStale()Z
    .registers 4

    .line 362
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 366
    :try_start_9
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->fillInputBuffer(I)I

    move-result v2
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_d} :catch_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_11

    if-gez v2, :cond_10

    return v1

    :cond_10
    return v0

    :catch_11
    return v1

    :catch_12
    return v0
.end method

.method protected prepareInput(Lcz/msebera/android/httpclient/HttpMessage;)Lcz/msebera/android/httpclient/HttpEntity;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 221
    new-instance v0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;-><init>()V

    .line 223
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->incomingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    invoke-interface {v1, p1}, Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;->determineLength(Lcz/msebera/android/httpclient/HttpMessage;)J

    move-result-wide v1

    .line 224
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->inbuffer:Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;

    invoke-virtual {p0, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->createInputStream(JLcz/msebera/android/httpclient/io/SessionInputBuffer;)Ljava/io/InputStream;

    move-result-object v3

    const-wide/16 v4, -0x2

    cmp-long v4, v1, v4

    const-wide/16 v5, -0x1

    if-nez v4, :cond_24

    const/4 v1, 0x1

    .line 226
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setChunked(Z)V

    .line 227
    invoke-virtual {v0, v5, v6}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContentLength(J)V

    .line 228
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_3c

    :cond_24
    cmp-long v4, v1, v5

    const/4 v7, 0x0

    if-nez v4, :cond_33

    .line 230
    invoke-virtual {v0, v7}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setChunked(Z)V

    .line 231
    invoke-virtual {v0, v5, v6}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContentLength(J)V

    .line 232
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_3c

    .line 234
    :cond_33
    invoke-virtual {v0, v7}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setChunked(Z)V

    .line 235
    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContentLength(J)V

    .line 236
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 239
    :goto_3c
    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 241
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContentType(Lcz/msebera/android/httpclient/Header;)V

    .line 243
    :cond_47
    const-string v1, "Content-Encoding"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    if-eqz p1, :cond_52

    .line 245
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContentEncoding(Lcz/msebera/android/httpclient/Header;)V

    :cond_52
    return-object v0
.end method

.method protected prepareOutput(Lcz/msebera/android/httpclient/HttpMessage;)Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->outgoingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;->determineLength(Lcz/msebera/android/httpclient/HttpMessage;)J

    move-result-wide v0

    .line 203
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->outbuffer:Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;

    invoke-virtual {p0, v0, v1, p1}, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->createOutputStream(JLcz/msebera/android/httpclient/io/SessionOutputBuffer;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public setSocketTimeout(I)V
    .registers 3

    .line 276
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_d

    .line 279
    :try_start_a
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return-void
.end method

.method public shutdown()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    :try_start_d
    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_19
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 311
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void

    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    throw v1

    :catch_19
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_1c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 390
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->socketHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_2b

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 394
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v2, :cond_26

    if-eqz v0, :cond_26

    .line 396
    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/util/NetUtils;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 397
    const-string v0, "<->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/NetUtils;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 400
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 402
    :cond_2b
    const-string v0, "[Not bound]"

    return-object v0
.end method
