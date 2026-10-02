.class public Lcz/msebera/android/httpclient/client/entity/DeflateInputStream;
.super Ljava/io/InputStream;
.source "DeflateInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/client/entity/DeflateInputStream$DeflateStream;
    }
.end annotation


# instance fields
.field private sourceStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x6

    .line 72
    new-array v1, v0, [B

    .line 74
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 76
    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result p1

    .line 78
    const-string v0, "Unable to read the response"

    const/4 v3, -0x1

    if-eq p1, v3, :cond_74

    const/4 v4, 0x1

    .line 83
    new-array v5, v4, [B

    .line 85
    new-instance v6, Ljava/util/zip/Inflater;

    invoke-direct {v6}, Ljava/util/zip/Inflater;-><init>()V

    :cond_1c
    :goto_1c
    const/4 v7, 0x0

    .line 89
    :try_start_1d
    invoke-virtual {v6, v5}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v8

    if-nez v8, :cond_40

    .line 90
    invoke-virtual {v6}, Ljava/util/zip/Inflater;->finished()Z

    move-result v9

    if-nez v9, :cond_3a

    .line 96
    invoke-virtual {v6}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v9

    if-eqz v9, :cond_30

    goto :goto_40

    .line 102
    :cond_30
    invoke-virtual {v6}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 103
    invoke-virtual {v6, v1}, Ljava/util/zip/Inflater;->setInput([B)V

    goto :goto_1c

    .line 93
    :cond_3a
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_40
    :goto_40
    if-eq v8, v3, :cond_55

    .line 115
    invoke-virtual {v2, v1, v7, p1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 116
    new-instance v0, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream$DeflateStream;

    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {v0, v2, v3}, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream$DeflateStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;
    :try_end_51
    .catch Ljava/util/zip/DataFormatException; {:try_start_1d .. :try_end_51} :catch_5d
    .catchall {:try_start_1d .. :try_end_51} :catchall_5b

    .line 124
    invoke-virtual {v6}, Ljava/util/zip/Inflater;->end()V

    return-void

    .line 108
    :cond_55
    :try_start_55
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5b
    .catch Ljava/util/zip/DataFormatException; {:try_start_55 .. :try_end_5b} :catch_5d
    .catchall {:try_start_55 .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception p1

    goto :goto_70

    .line 121
    :catch_5d
    :try_start_5d
    invoke-virtual {v2, v1, v7, p1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 122
    new-instance p1, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream$DeflateStream;

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v4}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p1, v2, v0}, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream$DeflateStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_5b

    .line 124
    invoke-virtual {v6}, Ljava/util/zip/Inflater;->end()V

    return-void

    :goto_70
    invoke-virtual {v6}, Ljava/util/zip/Inflater;->end()V

    throw p1

    .line 79
    :cond_74
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .registers 3

    .line 179
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 196
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
