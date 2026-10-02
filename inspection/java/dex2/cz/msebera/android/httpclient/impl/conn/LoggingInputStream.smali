.class Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;
.super Ljava/io/InputStream;
.source "LoggingInputStream.java"


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final wire:Lcz/msebera/android/httpclient/impl/conn/Wire;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/impl/conn/Wire;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 48
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    .line 49
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->wire:Lcz/msebera/android/httpclient/impl/conn/Wire;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 115
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->wire:Lcz/msebera/android/httpclient/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[available] I/O error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 116
    throw v0
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 140
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->wire:Lcz/msebera/android/httpclient/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[close] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 141
    throw v0
.end method

.method public mark(I)V
    .registers 2

    .line 122
    invoke-super {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 57
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->wire:Lcz/msebera/android/httpclient/impl/conn/Wire;

    const-string v2, "end of stream"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/conn/Wire;->input(Ljava/lang/String;)V

    return v0

    .line 59
    :cond_11
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->wire:Lcz/msebera/android/httpclient/impl/conn/Wire;

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/impl/conn/Wire;->input(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    .line 63
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->wire:Lcz/msebera/android/httpclient/impl/conn/Wire;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[read] I/O error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 64
    throw v0
.end method

.method public read([B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 73
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->wire:Lcz/msebera/android/httpclient/impl/conn/Wire;

    const-string v1, "end of stream"

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/impl/conn/Wire;->input(Ljava/lang/String;)V

    return v0

    :cond_11
    if-lez v0, :cond_19

    .line 75
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->wire:Lcz/msebera/android/httpclient/impl/conn/Wire;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcz/msebera/android/httpclient/impl/conn/Wire;->input([BII)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1a

    :cond_19
    return v0

    :catch_1a
    move-exception p1

    .line 79
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->wire:Lcz/msebera/android/httpclient/impl/conn/Wire;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[read] I/O error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 80
    throw p1
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_11

    .line 89
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->wire:Lcz/msebera/android/httpclient/impl/conn/Wire;

    const-string p2, "end of stream"

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/impl/conn/Wire;->input(Ljava/lang/String;)V

    return p3

    :cond_11
    if-lez p3, :cond_18

    .line 91
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->wire:Lcz/msebera/android/httpclient/impl/conn/Wire;

    invoke-virtual {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/Wire;->input([BII)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    :cond_18
    return p3

    :catch_19
    move-exception p1

    .line 95
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->wire:Lcz/msebera/android/httpclient/impl/conn/Wire;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[read] I/O error: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcz/msebera/android/httpclient/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 96
    throw p1
.end method

.method public reset()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-super {p0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p1

    :catch_5
    move-exception p1

    .line 105
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/LoggingInputStream;->wire:Lcz/msebera/android/httpclient/impl/conn/Wire;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[skip] I/O error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/impl/conn/Wire;->input(Ljava/lang/String;)V

    .line 106
    throw p1
.end method
