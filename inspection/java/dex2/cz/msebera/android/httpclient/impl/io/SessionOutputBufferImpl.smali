.class public Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;
.super Ljava/lang/Object;
.source "SessionOutputBufferImpl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/SessionOutputBuffer;
.implements Lcz/msebera/android/httpclient/io/BufferInfo;


# static fields
.field private static final CRLF:[B


# instance fields
.field private bbuf:Ljava/nio/ByteBuffer;

.field private final buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private final fragementSizeHint:I

.field private final metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

.field private outstream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    .line 60
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->CRLF:[B

    return-void

    nop

    :array_a
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;I)V
    .registers 4

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p2, v0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;-><init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;IILjava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;IILjava/nio/charset/CharsetEncoder;)V
    .registers 6

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, "Buffer size"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    .line 88
    const-string v0, "HTTP transport metrcis"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    .line 90
    new-instance p1, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    if-ltz p3, :cond_19

    goto :goto_1a

    :cond_19
    const/4 p3, 0x0

    .line 91
    :goto_1a
    iput p3, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->fragementSizeHint:I

    .line 92
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method private flushBuffer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 138
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->streamWrite([BII)V

    .line 139
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->clear()V

    .line 140
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    :cond_1d
    return-void
.end method

.method private flushStream()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    .line 131
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_7
    return-void
.end method

.method private handleEncodingResult(Ljava/nio/charset/CoderResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 279
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 281
    :cond_9
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 282
    :goto_e
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 283
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->write(I)V

    goto :goto_e

    .line 285
    :cond_20
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method private streamWrite([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    const-string v1, "Output stream"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private writeEncoded(Ljava/nio/CharBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 264
    :cond_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_13

    const/16 v0, 0x400

    .line 265
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    .line 267
    :cond_13
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 268
    :goto_18
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 269
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 270
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->handleEncodingResult(Ljava/nio/charset/CoderResult;)V

    goto :goto_18

    .line 272
    :cond_2b
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p1

    .line 273
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->handleEncodingResult(Ljava/nio/charset/CoderResult;)V

    .line 274
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    .line 121
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bind(Ljava/io/OutputStream;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    return-void
.end method

.method public capacity()I
    .registers 2

    .line 111
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    .line 147
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flushStream()V

    return-void
.end method

.method public getMetrics()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;
    .registers 2

    .line 290
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method public isBound()Z
    .registers 2

    .line 106
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public length()I
    .registers 2

    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v0

    return v0
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->fragementSizeHint:I

    if-lez v0, :cond_15

    .line 187
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 188
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    .line 190
    :cond_f
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append(I)V

    return-void

    .line 192
    :cond_15
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    .line 193
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 181
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 158
    :cond_3
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->fragementSizeHint:I

    if-gt p3, v0, :cond_28

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->capacity()I

    move-result v0

    if-le p3, v0, :cond_10

    goto :goto_28

    .line 166
    :cond_10
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_22

    .line 169
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    .line 172
    :cond_22
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    return-void

    .line 160
    :cond_28
    :goto_28
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->streamWrite([BII)V

    .line 163
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    return-void
.end method

.method public writeLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 238
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    const/4 v1, 0x0

    if-nez v0, :cond_34

    .line 240
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v0

    :goto_c
    if-lez v0, :cond_43

    .line 242
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 243
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_26

    .line 245
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v3, p1, v1, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V

    .line 247
    :cond_26
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->isFull()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 248
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    :cond_31
    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_c

    .line 254
    :cond_34
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer()[C

    move-result-object v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 255
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->writeEncoded(Ljava/nio/CharBuffer;)V

    .line 257
    :cond_43
    sget-object p1, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->CRLF:[B

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->write([B)V

    return-void
.end method

.method public writeLine(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 211
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_25

    .line 212
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    .line 213
    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 217
    :cond_1e
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 218
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->writeEncoded(Ljava/nio/CharBuffer;)V

    .line 221
    :cond_25
    sget-object p1, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->CRLF:[B

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->write([B)V

    return-void
.end method
