.class public Lcom/loopj/android/http/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field private static final EMPTY:[B


# instance fields
.field private bpos:I

.field private buffer:[B

.field private final coder:Lcom/loopj/android/http/Base64$Coder;

.field private final flags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [B

    sput-object v0, Lcom/loopj/android/http/Base64OutputStream;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/loopj/android/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .registers 5

    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    .line 51
    iput p2, p0, Lcom/loopj/android/http/Base64OutputStream;->flags:I

    if-eqz p3, :cond_15

    .line 53
    new-instance p3, Lcom/loopj/android/http/Base64$Encoder;

    invoke-direct {p3, p2, p1}, Lcom/loopj/android/http/Base64$Encoder;-><init>(I[B)V

    iput-object p3, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    return-void

    .line 55
    :cond_15
    new-instance p3, Lcom/loopj/android/http/Base64$Decoder;

    invoke-direct {p3, p2, p1}, Lcom/loopj/android/http/Base64$Decoder;-><init>(I[B)V

    iput-object p3, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    return-void
.end method

.method private embiggen([BI)[B
    .registers 4

    if-eqz p1, :cond_7

    .line 140
    array-length v0, p1

    if-ge v0, p2, :cond_6

    goto :goto_7

    :cond_6
    return-object p1

    .line 141
    :cond_7
    :goto_7
    new-array p1, p2, [B

    return-object p1
.end method

.method private flushBuffer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget v0, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    if-lez v0, :cond_c

    .line 83
    iget-object v1, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Lcom/loopj/android/http/Base64OutputStream;->internalWrite([BIIZ)V

    .line 84
    iput v2, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    :cond_c
    return-void
.end method

.method private internalWrite([BIIZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    iget-object v1, v0, Lcom/loopj/android/http/Base64$Coder;->output:[B

    iget-object v2, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    invoke-virtual {v2, p3}, Lcom/loopj/android/http/Base64$Coder;->maxOutputSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/loopj/android/http/Base64OutputStream;->embiggen([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/loopj/android/http/Base64$Coder;->output:[B

    .line 130
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/loopj/android/http/Base64$Coder;->process([BIIZ)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 133
    iget-object p1, p0, Lcom/loopj/android/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    iget-object p2, p2, Lcom/loopj/android/http/Base64$Coder;->output:[B

    iget-object p3, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    iget p3, p3, Lcom/loopj/android/http/Base64$Coder;->op:I

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void

    .line 131
    :cond_27
    new-instance p1, Lcom/loopj/android/http/Base64DataException;

    const-string p2, "bad base-64"

    invoke-direct {p1, p2}, Lcom/loopj/android/http/Base64DataException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/loopj/android/http/Base64OutputStream;->flushBuffer()V

    .line 100
    sget-object v0, Lcom/loopj/android/http/Base64OutputStream;->EMPTY:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/loopj/android/http/Base64OutputStream;->internalWrite([BIIZ)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    const/4 v0, 0x0

    goto :goto_d

    :catch_c
    move-exception v0

    .line 106
    :goto_d
    :try_start_d
    iget v1, p0, Lcom/loopj/android/http/Base64OutputStream;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_19

    .line 107
    iget-object v1, p0, Lcom/loopj/android/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_23

    .line 109
    :cond_19
    iget-object v1, p0, Lcom/loopj/android/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v1

    if-eqz v0, :cond_23

    move-object v0, v1

    :cond_23
    :goto_23
    if-nez v0, :cond_26

    return-void

    .line 118
    :cond_26
    throw v0
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    if-nez v0, :cond_a

    const/16 v0, 0x400

    .line 67
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    .line 69
    :cond_a
    iget v0, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    iget-object v1, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    array-length v2, v1

    if-lt v0, v2, :cond_17

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, v1, v2, v0, v2}, Lcom/loopj/android/http/Base64OutputStream;->internalWrite([BIIZ)V

    .line 72
    iput v2, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    .line 74
    :cond_17
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    iget v1, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p3, :cond_3

    return-void

    .line 91
    :cond_3
    invoke-direct {p0}, Lcom/loopj/android/http/Base64OutputStream;->flushBuffer()V

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/Base64OutputStream;->internalWrite([BIIZ)V

    return-void
.end method
