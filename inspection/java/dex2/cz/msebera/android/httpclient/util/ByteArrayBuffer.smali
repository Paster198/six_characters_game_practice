.class public final Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
.super Ljava/lang/Object;
.source "ByteArrayBuffer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3c7eae24203b8ca4L


# instance fields
.field private buffer:[B

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "Buffer capacity"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    .line 56
    new-array p1, p1, [B

    iput-object p1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    return-void
.end method

.method private expand(I)V
    .registers 5

    .line 60
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    .line 61
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput-object p1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    return-void
.end method


# virtual methods
.method public append(I)V
    .registers 5

    .line 103
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    add-int/lit8 v0, v0, 0x1

    .line 104
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_c

    .line 105
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->expand(I)V

    .line 107
    :cond_c
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 108
    iput v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    return-void
.end method

.method public append(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 166
    :cond_3
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([CII)V

    return-void
.end method

.method public append([BII)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_13

    :cond_3
    if-ltz p2, :cond_29

    .line 81
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

    .line 88
    :cond_14
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    add-int/2addr v0, p3

    .line 89
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_1f

    .line 90
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->expand(I)V

    .line 92
    :cond_1f
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iput v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    return-void

    .line 83
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

.method public append([CII)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_13

    :cond_3
    if-ltz p2, :cond_30

    .line 129
    array-length v0, p1

    if-gt p2, v0, :cond_30

    if-ltz p3, :cond_30

    add-int v0, p2, p3

    if-ltz v0, :cond_30

    array-length v1, p1

    if-gt v0, v1, :cond_30

    if-nez p3, :cond_14

    :goto_13
    return-void

    .line 136
    :cond_14
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    add-int/2addr p3, v0

    .line 138
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le p3, v1, :cond_1f

    .line 139
    invoke-direct {p0, p3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->expand(I)V

    :cond_1f
    :goto_1f
    if-ge v0, p3, :cond_2d

    .line 142
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    aget-char v2, p1, p2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 144
    :cond_2d
    iput p3, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    return-void

    .line 131
    :cond_30
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

.method public buffer()[B
    .registers 2

    .line 249
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    return-object v0
.end method

.method public byteAt(I)I
    .registers 3

    .line 200
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public capacity()I
    .registers 2

    .line 211
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    return-void
.end method

.method public ensureCapacity(I)V
    .registers 4

    if-gtz p1, :cond_3

    goto :goto_f

    .line 237
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_f

    add-int/2addr v1, p1

    .line 239
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->expand(I)V

    :cond_f
    :goto_f
    return-void
.end method

.method public indexOf(B)I
    .registers 4

    const/4 v0, 0x0

    .line 345
    iget v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->indexOf(BII)I

    move-result p1

    return p1
.end method

.method public indexOf(BII)I
    .registers 6

    if-gez p2, :cond_3

    const/4 p2, 0x0

    .line 318
    :cond_3
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    if-le p3, v0, :cond_8

    move p3, v0

    :cond_8
    const/4 v0, -0x1

    if-le p2, p3, :cond_c

    return v0

    :cond_c
    :goto_c
    if-ge p2, p3, :cond_18

    .line 325
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    aget-byte v1, v1, p2

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

    .line 276
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isFull()Z
    .registers 3

    .line 286
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

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

    .line 220
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .registers 5

    if-ltz p1, :cond_a

    .line 263
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    if-gt p1, v0, :cond_a

    .line 266
    iput p1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    return-void

    .line 264
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

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toByteArray()[B
    .registers 5

    .line 182
    iget v0, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->len:I

    new-array v1, v0, [B

    if-lez v0, :cond_c

    .line 184
    iget-object v2, p0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    return-object v1
.end method
