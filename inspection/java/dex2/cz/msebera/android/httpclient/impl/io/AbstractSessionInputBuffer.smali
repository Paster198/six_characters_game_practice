.class public abstract Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionInputBuffer.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/SessionInputBuffer;
.implements Lcz/msebera/android/httpclient/io/BufferInfo;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private ascii:Z

.field private buffer:[B

.field private bufferlen:I

.field private bufferpos:I

.field private cbuf:Ljava/nio/CharBuffer;

.field private charset:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private instream:Ljava/io/InputStream;

.field private linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

.field private maxLineLen:I

.field private metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

.field private minChunkLimit:I

.field private onMalformedCharAction:Ljava/nio/charset/CodingErrorAction;

.field private onUnmappableCharAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendDecoded(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 351
    :cond_8
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_20

    .line 352
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 353
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->onMalformedCharAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 354
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->onUnmappableCharAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 356
    :cond_20
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    if-nez v0, :cond_2c

    const/16 v0, 0x400

    .line 357
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    .line 359
    :cond_2c
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 361
    :goto_31
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 362
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, p2, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 363
    invoke-direct {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_31

    .line 365
    :cond_46
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 366
    invoke-direct {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int/2addr v1, p1

    .line 367
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

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

    .line 375
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 376
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 378
    :cond_9
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 379
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result p1

    .line 380
    :goto_14
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_26

    .line 381
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p3}, Ljava/nio/CharBuffer;->get()C

    move-result p3

    invoke-virtual {p2, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    goto :goto_14

    .line 383
    :cond_26
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

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

    .line 305
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_26

    .line 307
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_16

    add-int/lit8 v0, v0, -0x1

    :cond_16
    if-lez v0, :cond_26

    .line 312
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_26

    add-int/lit8 v0, v0, -0x1

    .line 317
    :cond_26
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->ascii:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 318
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {p1, v1, v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;II)V

    goto :goto_3f

    .line 320
    :cond_31
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 321
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->appendDecoded(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 323
    :goto_3f
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

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

    .line 329
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/lit8 v1, p2, 0x1

    .line 331
    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    if-le p2, v0, :cond_14

    .line 332
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->buffer:[B

    add-int/lit8 v2, p2, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_14

    add-int/lit8 p2, p2, -0x1

    :cond_14
    sub-int/2addr p2, v0

    .line 337
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->ascii:Z

    if-eqz v1, :cond_1f

    .line 338
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {p1, v1, v0, p2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append([BII)V

    return p2

    .line 340
    :cond_1f
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-static {v1, v0, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 341
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->appendDecoded(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method private locateLF()I
    .registers 4

    .line 226
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    :goto_2
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    if-ge v0, v1, :cond_12

    .line 227
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->buffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_f

    return v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public available()I
    .registers 3

    .line 144
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .registers 2

    .line 130
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method protected createTransportMetrics()Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;
    .registers 2

    .line 123
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;-><init>()V

    return-object v0
.end method

.method protected fillBuffer()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    if-lez v0, :cond_13

    .line 150
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_f

    .line 152
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    :cond_f
    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 155
    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 158
    :cond_13
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 159
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->buffer:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    .line 160
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_23

    return v2

    :cond_23
    add-int/2addr v0, v1

    .line 164
    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 165
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    return v1
.end method

.method public getMetrics()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;
    .registers 2

    .line 398
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method protected hasBufferedData()Z
    .registers 3

    .line 171
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method protected init(Ljava/io/InputStream;ILcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5

    .line 96
    const-string v0, "Input stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string v0, "Buffer size"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    .line 98
    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    .line 100
    new-array p1, p2, [B

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->buffer:[B

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 102
    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 103
    new-instance p1, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    .line 104
    const-string p1, "http.protocol.element-charset"

    invoke-interface {p3, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_30

    .line 105
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_32

    :cond_30
    sget-object p1, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    :goto_32
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->charset:Ljava/nio/charset/Charset;

    .line 106
    sget-object p2, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->ascii:Z

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 108
    const-string p1, "http.connection.max-line-length"

    const/4 p2, -0x1

    invoke-interface {p3, p1, p2}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    .line 109
    const-string p1, "http.connection.min-chunk-limit"

    const/16 p2, 0x200

    invoke-interface {p3, p1, p2}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I

    .line 110
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->createTransportMetrics()Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    .line 111
    const-string p1, "http.malformed.input.action"

    invoke-interface {p3, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/CodingErrorAction;

    if-eqz p1, :cond_63

    goto :goto_65

    .line 113
    :cond_63
    sget-object p1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    :goto_65
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->onMalformedCharAction:Ljava/nio/charset/CodingErrorAction;

    .line 114
    const-string p1, "http.unmappable.input.action"

    invoke-interface {p3, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/CodingErrorAction;

    if-eqz p1, :cond_72

    goto :goto_74

    .line 116
    :cond_72
    sget-object p1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    :goto_74
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->onUnmappableCharAction:Ljava/nio/charset/CodingErrorAction;

    return-void
.end method

.method public length()I
    .registers 3

    .line 137
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

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

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_e

    .line 177
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 182
    :cond_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

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

    .line 222
    :cond_4
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->read([BII)I

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

    .line 189
    :cond_4
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 190
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 191
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    return p3

    .line 197
    :cond_20
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I

    if-le p3, v0, :cond_33

    .line 198
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_32

    .line 200
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    :cond_32
    return p1

    .line 205
    :cond_33
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_41

    .line 206
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    return v1

    .line 211
    :cond_41
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 212
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    return p3
.end method

.method public readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :cond_8
    :goto_8
    const/4 v3, -0x1

    if-eqz v1, :cond_63

    .line 255
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->locateLF()I

    move-result v4

    if-eq v4, v3, :cond_2f

    .line 258
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 260
    invoke-direct {p0, p1, v4}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->lineFromReadBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;I)I

    move-result p1

    return p1

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    .line 263
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int v3, v4, v1

    .line 264
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {v5, v6, v1, v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    .line 265
    iput v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    :goto_2d
    move v1, v0

    goto :goto_4c

    .line 268
    :cond_2f
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 269
    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v2, v4

    .line 270
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {v5, v6, v4, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    .line 271
    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 273
    :cond_45
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v2

    if-ne v2, v3, :cond_4c

    goto :goto_2d

    .line 278
    :cond_4c
    :goto_4c
    iget v3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    if-lez v3, :cond_8

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v3

    iget v4, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    if-ge v3, v4, :cond_5b

    goto :goto_8

    .line 279
    :cond_5b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Maximum line length limit exceeded"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_63
    if-ne v2, v3, :cond_6e

    .line 282
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->linebuffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6e

    return v3

    .line 286
    :cond_6e
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->lineFromLineBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

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

    .line 388
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 389
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    .line 391
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method
