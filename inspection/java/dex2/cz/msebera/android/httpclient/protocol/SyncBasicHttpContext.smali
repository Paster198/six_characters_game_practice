.class public Lcz/msebera/android/httpclient/protocol/SyncBasicHttpContext;
.super Lcz/msebera/android/httpclient/protocol/BasicHttpContext;
.source "SyncBasicHttpContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 71
    :try_start_1
    invoke-super {p0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->clear()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 72
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

.method public declared-synchronized getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    .line 53
    :try_start_1
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    .line 63
    :try_start_1
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    .line 58
    :try_start_1
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 59
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method
