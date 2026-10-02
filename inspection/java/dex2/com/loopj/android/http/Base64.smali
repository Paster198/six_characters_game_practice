.class public Lcom/loopj/android/http/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/http/Base64$Encoder;,
        Lcom/loopj/android/http/Base64$Decoder;,
        Lcom/loopj/android/http/Base64$Coder;
    }
.end annotation


# static fields
.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 2

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/loopj/android/http/Base64;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BI)[B
    .registers 4

    const/4 v0, 0x0

    .line 99
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/loopj/android/http/Base64;->decode([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BIII)[B
    .registers 6

    .line 118
    new-instance v0, Lcom/loopj/android/http/Base64$Decoder;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/loopj/android/http/Base64$Decoder;-><init>(I[B)V

    const/4 p3, 0x1

    .line 120
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/loopj/android/http/Base64$Decoder;->process([BIIZ)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 125
    iget p0, v0, Lcom/loopj/android/http/Base64$Decoder;->op:I

    iget-object p1, v0, Lcom/loopj/android/http/Base64$Decoder;->output:[B

    array-length p1, p1

    if-ne p0, p1, :cond_1c

    .line 126
    iget-object p0, v0, Lcom/loopj/android/http/Base64$Decoder;->output:[B

    return-object p0

    .line 131
    :cond_1c
    iget p0, v0, Lcom/loopj/android/http/Base64$Decoder;->op:I

    new-array p0, p0, [B

    .line 132
    iget-object p1, v0, Lcom/loopj/android/http/Base64$Decoder;->output:[B

    iget p2, v0, Lcom/loopj/android/http/Base64$Decoder;->op:I

    const/4 p3, 0x0

    invoke-static {p1, p3, p0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 121
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad base-64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode([BI)[B
    .registers 4

    const/4 v0, 0x0

    .line 185
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/loopj/android/http/Base64;->encode([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([BIII)[B
    .registers 9

    .line 199
    new-instance v0, Lcom/loopj/android/http/Base64$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/loopj/android/http/Base64$Encoder;-><init>(I[B)V

    .line 202
    div-int/lit8 p3, p2, 0x3

    mul-int/lit8 p3, p3, 0x4

    .line 205
    iget-boolean v1, v0, Lcom/loopj/android/http/Base64$Encoder;->do_padding:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    .line 206
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_23

    add-int/lit8 p3, p3, 0x4

    goto :goto_23

    .line 210
    :cond_17
    rem-int/lit8 v1, p2, 0x3

    if-eq v1, v3, :cond_21

    if-eq v1, v2, :cond_1e

    goto :goto_23

    :cond_1e
    add-int/lit8 p3, p3, 0x3

    goto :goto_23

    :cond_21
    add-int/lit8 p3, p3, 0x2

    .line 223
    :cond_23
    :goto_23
    iget-boolean v1, v0, Lcom/loopj/android/http/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_36

    if-lez p2, :cond_36

    add-int/lit8 v1, p2, -0x1

    .line 224
    div-int/lit8 v1, v1, 0x39

    add-int/2addr v1, v3

    iget-boolean v4, v0, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    if-eqz v4, :cond_33

    goto :goto_34

    :cond_33
    move v2, v3

    :goto_34
    mul-int/2addr v1, v2

    add-int/2addr p3, v1

    .line 228
    :cond_36
    new-array p3, p3, [B

    iput-object p3, v0, Lcom/loopj/android/http/Base64$Encoder;->output:[B

    .line 229
    invoke-virtual {v0, p0, p1, p2, v3}, Lcom/loopj/android/http/Base64$Encoder;->process([BIIZ)Z

    .line 235
    iget-object p0, v0, Lcom/loopj/android/http/Base64$Encoder;->output:[B

    return-object p0
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .registers 3

    .line 146
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/loopj/android/http/Base64;->encode([BI)[B

    move-result-object p0

    const-string p1, "US-ASCII"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception p0

    .line 149
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
    .registers 5

    .line 169
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/loopj/android/http/Base64;->encode([BIII)[B

    move-result-object p0

    const-string p1, "US-ASCII"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception p0

    .line 172
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
