.class public Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;
.super Ljava/io/OutputStream;
.source "ChunkedOutputStream.java"


# instance fields
.field private final cache:[B

.field private cachePosition:I

.field private closed:Z

.field private final out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

.field private wroteLastChunk:Z


# direct methods
.method public constructor <init>(ILcz/msebera/android/httpclient/io/SessionOutputBuffer;)V
    .registers 4

    .line 100
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    .line 58
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    .line 61
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->closed:Z

    .line 101
    new-array p1, p1, [B

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cache:[B

    .line 102
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x800

    .line 90
    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;-><init>(ILcz/msebera/android/httpclient/io/SessionOutputBuffer;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    invoke-direct {p0, p2, p1}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;-><init>(ILcz/msebera/android/httpclient/io/SessionOutputBuffer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->closed:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->closed:Z

    .line 204
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->finish()V

    .line 205
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->flush()V

    :cond_f
    return-void
.end method

.method public finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    if-nez v0, :cond_d

    .line 143
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->flushCache()V

    .line 144
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->writeClosingChunk()V

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    :cond_d
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->flushCache()V

    .line 194
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method protected flushCache()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    if-lez v0, :cond_20

    .line 110
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cache:[B

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->write([BII)V

    .line 112
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 113
    iput v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    :cond_20
    return-void
.end method

.method protected flushCacheWithAppend([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cache:[B

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->write([BII)V

    .line 124
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->write([BII)V

    .line 125
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    const-string p2, ""

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 126
    iput v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    return-void
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->closed:Z

    if-nez v0, :cond_16

    .line 155
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cache:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 156
    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    .line 157
    array-length p1, v0

    if-ne v1, p1, :cond_15

    .line 158
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->flushCache()V

    :cond_15
    return-void

    .line 153
    :cond_16
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempted write to closed stream."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 168
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->closed:Z

    if-nez v0, :cond_19

    .line 180
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cache:[B

    array-length v1, v0

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    sub-int/2addr v1, v2

    if-lt p3, v1, :cond_10

    .line 181
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->flushCacheWithAppend([BII)V

    return-void

    .line 183
    :cond_10
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget p1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    return-void

    .line 178
    :cond_19
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted write to closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected writeClosingChunk()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    return-void
.end method
