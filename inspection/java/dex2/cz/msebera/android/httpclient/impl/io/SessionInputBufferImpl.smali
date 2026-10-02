.class public Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;
.super Ljava/lang/Object;
.source "SessionInputBufferImpl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/SessionInputBuffer;
.implements Lcz/msebera/android/httpclient/io/BufferInfo;


# instance fields
.field private final buffer:[B

.field private bufferlen:I

.field private bufferpos:I

.field private cbuf:Ljava/nio/CharBuffer;

.field private final constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

.field private final decoder:Ljava/nio/charset/CharsetDecoder;

.field private instream:Ljava/io/InputStream;

.field private final linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

.field private final metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

.field private final minChunkLimit:I


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;I)V
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 111
    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;-><init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;IILcz/msebera/android/httpclient/config/MessageConstraints;Ljava/nio/charset/CharsetDecoder;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;IILcz/msebera/android/httpclient/config/MessageConstraints;Ljava/nio/charset/CharsetDecoder;)V
    .registers 7

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, "HTTP transport metrcis"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string v0, "Buffer size"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    .line 98
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    .line 99
    new-array p1, p2, [B

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    const/4 p1, 0x0

    .line 100
    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    .line 101
    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferlen:I

    if-ltz p3, :cond_1b

    goto :goto_1d

    :cond_1b
    const/16 p3, 0x200

    .line 102
    :goto_1d
    iput p3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->minChunkLimit:I

    if-eqz p4, :cond_22

    goto :goto_24

    .line 103
    :cond_22
    sget-object p4, Lcz/msebera/android/httpclient/config/MessageConstraints;->DEFAULT:Lcz/msebera/android/httpclient/config/MessageConstraints;

    :goto_24
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    .line 104
    new-instance p1, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    .line 105
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method private appendDecoded(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 360
    :cond_8
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    if-nez v0, :cond_14

    const/16 v0, 0x400

    .line 361
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    .line 363
    :cond_14
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 365
    :goto_19
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 366
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, p2, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 367
    invoke-direct {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_19

    .line 369
    :cond_2e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 370
    invoke-direct {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int/2addr v1, p1

    .line 371
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    return v1
.end method

.method private handleDecodingResult(Ljava/nio/charset/CoderResult;Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 380
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 382
    :cond_9
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 383
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result p1

    .line 384
    :goto_14
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_26

    .line 385
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move-result p3

    invoke-virtual {p2, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    goto :goto_14

    .line 387
    :cond_26
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    return p1
.end method

.method private lineFromLineBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_26

    .line 315
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_16

    add-int/lit8 v0, v0, -0x1

    :cond_16
    if-lez v0, :cond_26

    .line 320
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_26

    add-int/lit8 v0, v0, -0x1

    .line 325
    :cond_26
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    const/4 v2, 0x0

    if-nez v1, :cond_31

    .line 326
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {p1, v1, v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;II)V

    goto :goto_3f

    .line 328
    :cond_31
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 329
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->appendDecoded(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 331
    :goto_3f
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->clear()V

    return v0
.end method

.method private lineFromReadBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    add-int/lit8 v1, p2, 0x1

    .line 340
    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    if-le p2, v0, :cond_14

    .line 341
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    add-int/lit8 v2, p2, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_14

    add-int/lit8 p2, p2, -0x1

    :cond_14
    sub-int/2addr p2, v0

    .line 346
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v1, :cond_1f

    .line 347
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-virtual {p1, v1, v0, p2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append([BII)V

    return p2

    .line 349
    :cond_1f
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-static {v1, v0, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 350
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->appendDecoded(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method private streamRead([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->instream:Ljava/io/InputStream;

    const-string v1, "Input stream"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->instream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public available()I
    .registers 3

    .line 134
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bind(Ljava/io/InputStream;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->instream:Ljava/io/InputStream;

    return-void
.end method

.method public capacity()I
    .registers 2

    .line 124
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 170
    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    .line 171
    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferlen:I

    return-void
.end method

.method public fillBuffer()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    if-lez v0, :cond_13

    .line 145
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferlen:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_f

    .line 147
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    :cond_f
    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    .line 150
    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferlen:I

    .line 153
    :cond_13
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferlen:I

    .line 154
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    .line 155
    invoke-direct {p0, v1, v0, v2}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->streamRead([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    return v2

    :cond_21
    add-int/2addr v0, v1

    .line 159
    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferlen:I

    .line 160
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    return v1
.end method

.method public getMetrics()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;
    .registers 2

    .line 409
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method public hasBufferedData()Z
    .registers 3

    .line 166
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferlen:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isBound()Z
    .registers 2

    .line 119
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->instream:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isDataAvailable(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result p1

    return p1
.end method

.method public length()I
    .registers 3

    .line 129
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferlen:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_e

    .line 178
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->fillBuffer()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 183
    :cond_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 225
    :cond_4
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 191
    :cond_4
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 192
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferlen:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 193
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iget p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    return p3

    .line 199
    :cond_20
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->minChunkLimit:I

    if-le p3, v0, :cond_31

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->streamRead([BII)I

    move-result p1

    if-lez p1, :cond_30

    .line 202
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    :cond_30
    return p1

    .line 207
    :cond_31
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 208
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->fillBuffer()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_31

    return v1

    .line 213
    :cond_3f
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferlen:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 214
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    return p3
.end method

.method public readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/MessageConstraints;->getMaxLineLength()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :cond_e
    :goto_e
    const/4 v4, -0x1

    if-eqz v2, :cond_7e

    .line 252
    iget v5, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    :goto_13
    iget v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferlen:I

    if-ge v5, v6, :cond_23

    .line 253
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    aget-byte v6, v6, v5

    const/16 v7, 0xa

    if-ne v6, v7, :cond_20

    goto :goto_24

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_23
    move v5, v4

    :goto_24
    if-lez v0, :cond_41

    .line 260
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v6

    if-lez v5, :cond_30

    move v7, v5

    goto :goto_32

    :cond_30
    iget v7, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferlen:I

    :goto_32
    add-int/2addr v6, v7

    iget v7, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    sub-int/2addr v6, v7

    if-ge v6, v0, :cond_39

    goto :goto_41

    .line 263
    :cond_39
    new-instance p1, Lcz/msebera/android/httpclient/MessageConstraintException;

    const-string v0, "Maximum line length limit exceeded"

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_41
    :goto_41
    if-eq v5, v4, :cond_61

    .line 269
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 271
    invoke-direct {p0, p1, v5}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineFromReadBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;I)I

    move-result p1

    return p1

    :cond_50
    add-int/lit8 v5, v5, 0x1

    .line 274
    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    sub-int v4, v5, v2

    .line 275
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-virtual {v6, v7, v2, v4}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    .line 276
    iput v5, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    :goto_5f
    move v2, v1

    goto :goto_e

    .line 279
    :cond_61
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 280
    iget v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferlen:I

    iget v5, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    sub-int/2addr v3, v5

    .line 281
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-virtual {v6, v7, v5, v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    .line 282
    iget v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferlen:I

    iput v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->bufferpos:I

    .line 284
    :cond_77
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->fillBuffer()I

    move-result v3

    if-ne v3, v4, :cond_e

    goto :goto_5f

    :cond_7e
    if-ne v3, v4, :cond_89

    .line 290
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_89

    return v4

    .line 294
    :cond_89
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->lineFromLineBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result p1

    return p1
.end method

.method public readLine()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 394
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/io/SessionInputBufferImpl;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    .line 396
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method
