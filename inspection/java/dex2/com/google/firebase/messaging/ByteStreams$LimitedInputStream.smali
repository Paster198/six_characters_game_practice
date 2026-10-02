.class final Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LimitedInputStream"
.end annotation


# instance fields
.field private left:J

.field private mark:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .registers 6

    .line 137
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, -0x1

    .line 134
    iput-wide v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->mark:J

    .line 138
    iput-wide p2, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->left:J

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

    .line 143
    iget-object v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->left:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .registers 4

    monitor-enter p0

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 150
    iget-wide v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->left:J

    iput-wide v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->mark:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 151
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-wide v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_a

    return v1

    .line 159
    :cond_a
    iget-object v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v1, :cond_19

    .line 161
    iget-wide v1, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->left:J

    :cond_19
    return v0
.end method

.method public read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-wide v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_a

    return v3

    :cond_a
    int-to-long v4, p3

    .line 172
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 173
    iget-object v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-eq p1, v3, :cond_1e

    .line 175
    iget-wide p2, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->left:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->left:J

    :cond_1e
    return p1
.end method

.method public declared-synchronized reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 182
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 185
    iget-wide v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->mark:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 189
    iget-object v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 190
    iget-wide v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->mark:J

    iput-wide v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->left:J
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2c

    .line 191
    monitor-exit p0

    return-void

    .line 186
    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public skip(J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-wide v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->left:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 196
    iget-object v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 197
    iget-wide v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->left:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/firebase/messaging/ByteStreams$LimitedInputStream;->left:J

    return-wide p1
.end method
