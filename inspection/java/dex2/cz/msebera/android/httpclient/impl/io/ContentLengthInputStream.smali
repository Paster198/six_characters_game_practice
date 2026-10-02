.class public Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private closed:Z

.field private final contentLength:J

.field private in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

.field private pos:J


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;J)V
    .registers 6

    .line 85
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->pos:J

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->closed:Z

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    .line 86
    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    .line 87
    const-string p1, "Content length"

    invoke-static {p2, p3, p1}, Lcz/msebera/android/httpclient/util/Args;->notNegative(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->contentLength:J

    return-void
.end method


# virtual methods
.method public available()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    instance-of v1, v0, Lcz/msebera/android/httpclient/io/BufferInfo;

    if-eqz v1, :cond_17

    .line 117
    check-cast v0, Lcz/msebera/android/httpclient/io/BufferInfo;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/BufferInfo;->length()I

    move-result v0

    .line 118
    iget-wide v1, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v3, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    .line 101
    :try_start_5
    iget-wide v1, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v3, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_18

    const/16 v1, 0x800

    .line 102
    new-array v1, v1, [B

    .line 103
    :goto_11
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->read([B)I

    move-result v2
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1b

    if-ltz v2, :cond_18

    goto :goto_11

    .line 109
    :cond_18
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->closed:Z

    return-void

    :catchall_1b
    move-exception v1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->closed:Z

    throw v1

    :cond_1f
    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_4a

    .line 136
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_e

    return v1

    .line 139
    :cond_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->read()I

    move-result v0

    if-ne v0, v1, :cond_42

    .line 141
    iget-wide v1, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v3, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1f

    return v0

    .line 142
    :cond_1f
    new-instance v0, Lcz/msebera/android/httpclient/ConnectionClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Premature end of Content-Length delimited message body (expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->contentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->pos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_42
    iget-wide v1, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->pos:J

    return v0

    .line 133
    :cond_4a
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

    .line 200
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_53

    .line 170
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-ltz v4, :cond_e

    return v5

    :cond_e
    int-to-long v6, p3

    add-long/2addr v6, v0

    cmp-long v4, v6, v2

    if-lez v4, :cond_16

    sub-long/2addr v2, v0

    long-to-int p3, v2

    .line 178
    :cond_16
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_4a

    .line 179
    iget-wide p2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_27

    goto :goto_4a

    .line 180
    :cond_27
    new-instance p1, Lcz/msebera/android/httpclient/ConnectionClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Premature end of Content-Length delimited message body (expected: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->contentLength:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "; received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->pos:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    :goto_4a
    if-lez p1, :cond_52

    .line 185
    iget-wide p2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->pos:J

    :cond_52
    return p1

    .line 167
    :cond_53
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted read from closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skip(J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-wide v0

    :cond_7
    const/16 v2, 0x800

    .line 216
    new-array v2, v2, [B

    .line 219
    iget-wide v3, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v5, p0, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v3, v5

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v3, v0

    :goto_15
    cmp-long v5, p1, v0

    if-lez v5, :cond_2d

    const-wide/16 v5, 0x800

    .line 223
    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6, v5}, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_29

    goto :goto_2d

    :cond_29
    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long/2addr p1, v5

    goto :goto_15

    :cond_2d
    :goto_2d
    return-wide v3
.end method
