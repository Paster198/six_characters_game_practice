.class public Lcz/msebera/android/httpclient/impl/client/cache/FileResource;
.super Ljava/lang/Object;
.source "FileResource.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/cache/Resource;


# static fields
.field private static final serialVersionUID:J = 0x3958ae6717f23345L


# instance fields
.field private volatile disposed:Z

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->file:Ljava/io/File;

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->disposed:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .registers 2

    monitor-enter p0

    .line 73
    :try_start_1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->disposed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-eqz v0, :cond_7

    .line 74
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 76
    :try_start_8
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->disposed:Z

    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_11

    .line 78
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method declared-synchronized getFile()Ljava/io/File;
    .registers 2

    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->file:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized length()J
    .registers 3

    monitor-enter p0

    .line 68
    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FileResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

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
