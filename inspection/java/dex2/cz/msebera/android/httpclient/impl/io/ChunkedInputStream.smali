.class public Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final CHUNK_CRLF:I = 0x3

.field private static final CHUNK_DATA:I = 0x2

.field private static final CHUNK_INVALID:I = 0x7fffffff

.field private static final CHUNK_LEN:I = 0x1


# instance fields
.field private final buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

.field private chunkSize:I

.field private closed:Z

.field private final constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

.field private eof:Z

.field private footers:[Lcz/msebera/android/httpclient/Header;

.field private final in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

.field private pos:I

.field private state:I


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)V
    .registers 3

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/config/MessageConstraints;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/config/MessageConstraints;)V
    .registers 5

    .line 102
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    .line 88
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->closed:Z

    .line 90
    new-array v1, v0, [Lcz/msebera/android/httpclient/Header;

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->footers:[Lcz/msebera/android/httpclient/Header;

    .line 103
    const-string v1, "Session input buffer"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    .line 104
    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    .line 105
    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    if-eqz p2, :cond_24

    goto :goto_26

    .line 106
    :cond_24
    sget-object p2, Lcz/msebera/android/httpclient/config/MessageConstraints;->DEFAULT:Lcz/msebera/android/httpclient/config/MessageConstraints;

    :goto_26
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    const/4 p1, 0x1

    .line 107
    iput p1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    return-void
.end method

.method private getChunkSize()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3b

    const/4 v3, 0x3

    if-ne v0, v3, :cond_33

    .line 252
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->clear()V

    .line 253
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v0, v3}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v0

    if-eq v0, v1, :cond_2b

    .line 258
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 262
    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    goto :goto_3b

    .line 259
    :cond_23
    new-instance v0, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    const-string v1, "Unexpected content at the end of chunk"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_2b
    new-instance v0, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    const-string v1, "CRLF expected at end of chunk"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent codec state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->clear()V

    .line 266
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v0, v2}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v0

    if-eq v0, v1, :cond_70

    .line 271
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_5a

    .line 273
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v0

    .line 276
    :cond_5a
    :try_start_5a
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_67} :catch_68

    return v0

    .line 278
    :catch_68
    new-instance v0, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    const-string v1, "Bad chunk header"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_70
    new-instance v0, Lcz/msebera/android/httpclient/ConnectionClosedException;

    const-string v1, "Premature end of chunk coded message body: closing chunk expected"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextChunk()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2a

    .line 227
    :try_start_7
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->getChunkSize()I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->chunkSize:I

    if-ltz v0, :cond_1e

    const/4 v2, 0x2

    .line 231
    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    const/4 v2, 0x0

    .line 232
    iput v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    .line 235
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->parseTrailerHeaders()V

    :cond_1d
    return-void

    .line 229
    :cond_1e
    new-instance v0, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    const-string v2, "Negative chunk size"

    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catch Lcz/msebera/android/httpclient/MalformedChunkCodingException; {:try_start_7 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    .line 238
    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    .line 239
    throw v0

    .line 224
    :cond_2a
    new-instance v0, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    const-string v1, "Corrupt data stream"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseTrailerHeaders()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    .line 292
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/MessageConstraints;->getMaxHeaderCount()I

    move-result v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    .line 293
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/config/MessageConstraints;->getMaxLineLength()I

    move-result v2

    const/4 v3, 0x0

    .line 291
    invoke-static {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->parseHeaders(Lcz/msebera/android/httpclient/io/SessionInputBuffer;IILcz/msebera/android/httpclient/message/LineParser;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->footers:[Lcz/msebera/android/httpclient/Header;
    :try_end_15
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    .line 296
    new-instance v1, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid footer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 299
    throw v1
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    instance-of v1, v0, Lcz/msebera/android/httpclient/io/BufferInfo;

    if-eqz v1, :cond_16

    .line 122
    check-cast v0, Lcz/msebera/android/httpclient/io/BufferInfo;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/BufferInfo;->length()I

    move-result v0

    .line 123
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->chunkSize:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_26

    const/4 v0, 0x1

    .line 313
    :try_start_5
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    if-nez v1, :cond_1b

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1b

    const/16 v1, 0x800

    .line 315
    new-array v1, v1, [B

    .line 316
    :goto_14
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->read([B)I

    move-result v2
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_20

    if-ltz v2, :cond_1b

    goto :goto_14

    .line 320
    :cond_1b
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    .line 321
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->closed:Z

    return-void

    :catchall_20
    move-exception v1

    .line 320
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    .line 321
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->closed:Z

    throw v1

    :cond_26
    return-void
.end method

.method public getFooters()[Lcz/msebera/android/httpclient/Header;
    .registers 2

    .line 327
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->footers:[Lcz/msebera/android/httpclient/Header;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_2d

    .line 146
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    return v1

    .line 149
    :cond_a
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    .line 150
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->nextChunk()V

    .line 151
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v0, :cond_17

    return v1

    .line 155
    :cond_17
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->read()I

    move-result v0

    if-eq v0, v1, :cond_2c

    .line 157
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    .line 158
    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->chunkSize:I

    if-lt v1, v2, :cond_2c

    const/4 v1, 0x3

    .line 159
    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    :cond_2c
    return v0

    .line 144
    :cond_2d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 215
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_61

    .line 182
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    return v1

    .line 185
    :cond_a
    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    .line 186
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->nextChunk()V

    .line 187
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v0, :cond_17

    return v1

    .line 191
    :cond_17
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->chunkSize:I

    iget v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_35

    .line 193
    iget p2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    add-int/2addr p2, p1

    iput p2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    .line 194
    iget p3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->chunkSize:I

    if-lt p2, p3, :cond_34

    const/4 p2, 0x3

    .line 195
    iput p2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    :cond_34
    return p1

    :cond_35
    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    .line 200
    new-instance p1, Lcz/msebera/android/httpclient/TruncatedChunkException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Truncated chunk ( expected size: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->chunkSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "; actual size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/TruncatedChunkException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_61
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted read from closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
