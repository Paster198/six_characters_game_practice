.class public final Lcz/msebera/android/httpclient/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x562aa19b667920bfL


# instance fields
.field private buffer:[C

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "Buffer capacity"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    .line 58
    new-array p1, p1, [C

    iput-object p1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    return-void
.end method

.method private expand(I)V
    .registers 5

    .line 62
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [C

    .line 63
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    const/4 v1, 0x0

    iget v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object p1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    return-void
.end method


# virtual methods
.method public append(C)V
    .registers 5

    .line 156
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    add-int/lit8 v0, v0, 0x1

    .line 157
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_c

    .line 158
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->expand(I)V

    .line 160
    :cond_c
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    aput-char p1, v1, v2

    .line 161
    iput v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    return-void
.end method

.method public append(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;II)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 218
    :cond_3
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append([BII)V

    return-void
.end method

.method public append(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 146
    :cond_3
    iget-object v0, p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    const/4 v1, 0x0

    iget p1, p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, v0, v1, p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append([CII)V

    return-void
.end method

.method public append(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 132
    :cond_3
    iget-object p1, p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append([CII)V

    return-void
.end method

.method public append(Ljava/lang/Object;)V
    .registers 2

    .line 229
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_3

    goto :goto_5

    .line 105
    :cond_3
    const-string p1, "null"

    .line 106
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 107
    iget v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    add-int/2addr v1, v0

    .line 108
    iget-object v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v2, v2

    if-le v1, v2, :cond_14

    .line 109
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->expand(I)V

    .line 111
    :cond_14
    iget-object v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    iget v3, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 112
    iput v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    return-void
.end method

.method public append([BII)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_13

    :cond_3
    if-ltz p2, :cond_32

    .line 182
    array-length v0, p1

    if-gt p2, v0, :cond_32

    if-ltz p3, :cond_32

    add-int v0, p2, p3

    if-ltz v0, :cond_32

    array-length v1, p1

    if-gt v0, v1, :cond_32

    if-nez p3, :cond_14

    :goto_13
    return-void

    .line 189
    :cond_14
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    add-int/2addr p3, v0

    .line 191
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le p3, v1, :cond_1f

    .line 192
    invoke-direct {p0, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->expand(I)V

    :cond_1f
    :goto_1f
    if-ge v0, p3, :cond_2f

    .line 195
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 197
    :cond_2f
    iput p3, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    return-void

    .line 184
    :cond_32
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "off: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " len: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " b.length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append([CII)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_13

    :cond_3
    if-ltz p2, :cond_29

    .line 83
    array-length v0, p1

    if-gt p2, v0, :cond_29

    if-ltz p3, :cond_29

    add-int v0, p2, p3

    if-ltz v0, :cond_29

    array-length v1, p1

    if-gt v0, v1, :cond_29

    if-nez p3, :cond_14

    :goto_13
    return-void

    .line 90
    :cond_14
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    add-int/2addr v0, p3

    .line 91
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_1f

    .line 92
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->expand(I)V

    .line 94
    :cond_1f
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iput v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    return-void

    .line 85
    :cond_29
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "off: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " len: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " b.length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buffer()[C
    .registers 2

    .line 272
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    return-object v0
.end method

.method public capacity()I
    .registers 2

    .line 283
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .registers 3

    .line 263
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 236
    iput v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    return-void
.end method

.method public ensureCapacity(I)V
    .registers 4

    if-gtz p1, :cond_3

    goto :goto_f

    .line 307
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    iget v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_f

    add-int/2addr v1, p1

    .line 309
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->expand(I)V

    :cond_f
    :goto_f
    return-void
.end method

.method public indexOf(I)I
    .registers 4

    const/4 v0, 0x0

    .line 402
    iget v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->indexOf(III)I

    move-result p1

    return p1
.end method

.method public indexOf(III)I
    .registers 6

    if-gez p2, :cond_3

    const/4 p2, 0x0

    .line 377
    :cond_3
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    if-le p3, v0, :cond_8

    move p3, v0

    :cond_8
    const/4 v0, -0x1

    if-le p2, p3, :cond_c

    return v0

    :cond_c
    :goto_c
    if-ge p2, p3, :cond_18

    .line 384
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    aget-char v1, v1, p2

    if-ne v1, p1, :cond_15

    return p2

    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_18
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 337
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isFull()Z
    .registers 3

    .line 347
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public length()I
    .registers 2

    .line 292
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .registers 5

    if-ltz p1, :cond_a

    .line 324
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    if-gt p1, v0, :cond_a

    .line 327
    iput p1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    return-void

    .line 325
    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "len: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " < 0 or > buffer len: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 6

    if-ltz p1, :cond_4f

    .line 478
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    if-gt p2, v0, :cond_2e

    if-gt p1, p2, :cond_f

    .line 484
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    invoke-static {v0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    return-object p1

    .line 482
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beginIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " > endIndex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_2e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " > length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 476
    :cond_4f
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Negative beginIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public substring(II)Ljava/lang/String;
    .registers 6

    if-ltz p1, :cond_51

    .line 423
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    if-gt p2, v0, :cond_30

    if-gt p1, p2, :cond_11

    .line 429
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 427
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beginIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " > endIndex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_30
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " > length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_51
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Negative beginIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public substringTrimmed(II)Ljava/lang/String;
    .registers 6

    if-ltz p1, :cond_71

    .line 452
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    if-gt p2, v0, :cond_50

    if-gt p1, p2, :cond_31

    :goto_8
    if-ge p1, p2, :cond_17

    .line 460
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_17

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_17
    :goto_17
    if-le p2, p1, :cond_28

    .line 463
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    add-int/lit8 v1, p2, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_28

    add-int/lit8 p2, p2, -0x1

    goto :goto_17

    .line 466
    :cond_28
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 456
    :cond_31
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beginIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " > endIndex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_50
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " > length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 450
    :cond_71
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Negative beginIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toCharArray()[C
    .registers 5

    .line 245
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    new-array v1, v0, [C

    if-lez v0, :cond_c

    .line 247
    iget-object v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 489
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
