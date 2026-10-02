.class abstract Lcom/google/common/io/LineBuffer;
.super Ljava/lang/Object;
.source "LineBuffer.java"


# annotations
.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private line:Ljava/lang/StringBuilder;

.field private sawReturn:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    return-void
.end method

.method private finishLine(Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_9

    const-string v0, "\r\n"

    goto :goto_13

    :cond_9
    const-string v0, "\r"

    goto :goto_13

    :cond_c
    if-eqz p1, :cond_11

    const-string v0, "\n"

    goto :goto_13

    :cond_11
    const-string v0, ""

    .line 90
    :goto_13
    iget-object v1, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/common/io/LineBuffer;->handleLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    return p1
.end method


# virtual methods
.method protected add([CII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-eqz v0, :cond_1a

    if-lez p3, :cond_1a

    .line 54
    aget-char v0, p1, p2

    if-ne v0, v2, :cond_10

    move v0, v3

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    invoke-direct {p0, v0}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    add-int/lit8 v0, p2, 0x1

    goto :goto_1b

    :cond_1a
    move v0, p2

    :goto_1b
    add-int/2addr p2, p3

    move p3, v0

    :goto_1d
    if-ge v0, p2, :cond_52

    .line 61
    aget-char v4, p1, v0

    if-eq v4, v2, :cond_44

    const/16 v5, 0xd

    if-eq v4, v5, :cond_28

    goto :goto_50

    .line 63
    :cond_28
    iget-object v4, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int v5, v0, p3

    invoke-virtual {v4, p1, p3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 64
    iput-boolean v3, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    add-int/lit8 p3, v0, 0x1

    if-ge p3, p2, :cond_4e

    .line 66
    aget-char v4, p1, p3

    if-ne v4, v2, :cond_3b

    move v4, v3

    goto :goto_3c

    :cond_3b
    move v4, v1

    :goto_3c
    invoke-direct {p0, v4}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    move-result v4

    if-eqz v4, :cond_4e

    move v0, p3

    goto :goto_4e

    .line 74
    :cond_44
    iget-object v4, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int v5, v0, p3

    invoke-virtual {v4, p1, p3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p0, v3}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    :cond_4e
    :goto_4e
    add-int/lit8 p3, v0, 0x1

    :goto_50
    add-int/2addr v0, v3

    goto :goto_1d

    .line 83
    :cond_52
    iget-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int/2addr p2, p3

    invoke-virtual {v0, p1, p3, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    :cond_e
    :goto_e
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    return-void
.end method

.method protected abstract handleLine(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
