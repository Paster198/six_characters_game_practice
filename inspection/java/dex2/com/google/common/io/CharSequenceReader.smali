.class final Lcom/google/common/io/CharSequenceReader;
.super Ljava/io/Reader;
.source "CharSequenceReader.java"


# annotations
.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private mark:I

.field private pos:I

.field private seq:Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    return-void
.end method

.method private checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    return-void

    .line 50
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reader closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasRemaining()Z
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private remaining()I
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 147
    :try_start_2
    iput-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 148
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-ltz p1, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 134
    :goto_6
    :try_start_6
    const-string v1, "readAheadLimit (%s) may not be negative"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 135
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 136
    iget p1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    iput p1, p0, Lcom/google/common/io/CharSequenceReader;->mark:I
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_14

    .line 137
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_1
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 93
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1f

    goto :goto_1d

    :cond_1c
    const/4 v0, -0x1

    :goto_1d
    monitor-exit p0

    return v0

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public declared-synchronized read(Ljava/nio/CharBuffer;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 79
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->hasRemaining()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_38

    if-nez v0, :cond_15

    .line 81
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    .line 83
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v0, :cond_36

    .line 85
    iget-object v2, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_38

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 87
    :cond_36
    monitor-exit p0

    return v0

    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public declared-synchronized read([CII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    add-int v0, p2, p3

    .line 99
    :try_start_3
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 100
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 101
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->hasRemaining()Z

    move-result v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_38

    if-nez v0, :cond_18

    .line 103
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    .line 105
    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    :goto_21
    if-ge v0, p3, :cond_36

    add-int v1, p2, v0

    .line 107
    iget-object v2, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, p1, v1
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_38

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 109
    :cond_36
    monitor-exit p0

    return p3

    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public declared-synchronized ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_1
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    .line 124
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 141
    :try_start_1
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 142
    iget v0, p0, Lcom/google/common/io/CharSequenceReader;->mark:I

    iput v0, p0, Lcom/google/common/io/CharSequenceReader;->pos:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 143
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 114
    :goto_a
    :try_start_a
    const-string v1, "n (%s) may not be negative"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 115
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 116
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    .line 117
    iget p2, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/common/io/CharSequenceReader;->pos:I
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_24

    int-to-long p1, p1

    .line 118
    monitor-exit p0

    return-wide p1

    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method
