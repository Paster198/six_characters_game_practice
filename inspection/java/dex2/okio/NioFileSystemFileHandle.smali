.class public final Lokio/NioFileSystemFileHandle;
.super Lokio/FileHandle;
.source "NioFileSystemFileHandle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u0008\u0010\t\u001a\u00020\u0008H\u0014J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0014J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\rH\u0014J\u0008\u0010\u0014\u001a\u00020\rH\u0014J(\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lokio/NioFileSystemFileHandle;",
        "Lokio/FileHandle;",
        "readWrite",
        "",
        "fileChannel",
        "Ljava/nio/channels/FileChannel;",
        "(ZLjava/nio/channels/FileChannel;)V",
        "protectedClose",
        "",
        "protectedFlush",
        "protectedRead",
        "",
        "fileOffset",
        "",
        "array",
        "",
        "arrayOffset",
        "byteCount",
        "protectedResize",
        "size",
        "protectedSize",
        "protectedWrite",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(ZLjava/nio/channels/FileChannel;)V
    .registers 4

    const-string v0, "fileChannel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lokio/FileHandle;-><init>(Z)V

    .line 23
    iput-object p2, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    return-void
.end method


# virtual methods
.method protected declared-synchronized protectedClose()V
    .registers 2

    monitor-enter p0

    .line 82
    :try_start_1
    iget-object v0, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 83
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method protected declared-synchronized protectedFlush()V
    .registers 3

    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 78
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected declared-synchronized protectedRead(J[BII)I
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 50
    invoke-static {p3, p4, p5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x0

    :goto_10
    if-ge p2, p5, :cond_21

    .line 53
    iget-object p3, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p3, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p3
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_23

    const/4 p4, -0x1

    if-ne p3, p4, :cond_1f

    if-nez p2, :cond_21

    .line 55
    monitor-exit p0

    return p4

    :cond_1f
    add-int/2addr p2, p3

    goto :goto_10

    .line 60
    :cond_21
    monitor-exit p0

    return p2

    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method protected declared-synchronized protectedResize(J)V
    .registers 10

    monitor-enter p0

    .line 28
    :try_start_1
    invoke-virtual {p0}, Lokio/NioFileSystemFileHandle;->size()J

    move-result-wide v2

    sub-long v0, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_16

    long-to-int v6, v0

    .line 31
    new-array v4, v6, [B
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1e

    const/4 v5, 0x0

    move-object v1, p0

    :try_start_12
    invoke-virtual/range {v1 .. v6}, Lokio/NioFileSystemFileHandle;->protectedWrite(J[BII)V

    goto :goto_1c

    :cond_16
    move-object v1, p0

    .line 33
    iget-object v0, v1, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_23

    .line 35
    :goto_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    move-object v1, p0

    :goto_20
    move-object p1, v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_23

    throw p1

    :catchall_23
    move-exception v0

    goto :goto_20
.end method

.method protected declared-synchronized protectedSize()J
    .registers 3

    monitor-enter p0

    .line 39
    :try_start_1
    iget-object v0, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-wide v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected declared-synchronized protectedWrite(J[BII)V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 71
    invoke-static {p3, p4, p5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 72
    iget-object p2, p0, Lokio/NioFileSystemFileHandle;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 73
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method
