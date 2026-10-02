.class Lcom/google/firebase/messaging/TopicsSubscriber;
.super Ljava/lang/Object;
.source "TopicsSubscriber.java"


# static fields
.field static final ERROR_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "INTERNAL_SERVER_ERROR"

.field static final ERROR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field private static final MAX_DELAY_SEC:J

.field private static final MIN_DELAY_SEC:J = 0x1eL

.field private static final RPC_TIMEOUT_SEC:J = 0x1eL


# instance fields
.field private final context:Landroid/content/Context;

.field private final firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

.field private final metadata:Lcom/google/firebase/messaging/Metadata;

.field private final pendingOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final rpc:Lcom/google/firebase/messaging/GmsRpc;

.field private final store:Lcom/google/firebase/messaging/TopicsStore;

.field private final syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private syncScheduledOrRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/TopicsSubscriber;->MAX_DELAY_SEC:J

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/messaging/TopicsStore;Lcom/google/firebase/messaging/GmsRpc;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 8

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->syncScheduledOrRunning:Z

    .line 95
    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 96
    iput-object p2, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->metadata:Lcom/google/firebase/messaging/Metadata;

    .line 97
    iput-object p3, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->store:Lcom/google/firebase/messaging/TopicsStore;

    .line 98
    iput-object p4, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->rpc:Lcom/google/firebase/messaging/GmsRpc;

    .line 99
    iput-object p5, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->context:Landroid/content/Context;

    .line 100
    iput-object p6, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private addToPendingOperations(Lcom/google/firebase/messaging/TopicOperation;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/TopicOperation;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    monitor-enter v0

    .line 127
    :try_start_3
    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->serialize()Ljava/lang/String;

    move-result-object p1

    .line 128
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 129
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayDeque;

    goto :goto_23

    .line 131
    :cond_18
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    .line 134
    :goto_23
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 135
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method private static awaitTask(Lcom/google/android/gms/tasks/Task;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-static {p0, v1, v2, v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_7} :catch_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 300
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_11
    move-exception p0

    .line 291
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 292
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_27

    .line 294
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_21

    .line 295
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 298
    :cond_21
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 293
    :cond_27
    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method private blockingSubscribeToTopic(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->rpc:Lcom/google/firebase/messaging/GmsRpc;

    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->blockingGetToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/messaging/GmsRpc;->subscribeToTopic(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/messaging/TopicsSubscriber;->awaitTask(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private blockingUnsubscribeFromTopic(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->rpc:Lcom/google/firebase/messaging/GmsRpc;

    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->blockingGetToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/messaging/GmsRpc;->unsubscribeFromTopic(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/messaging/TopicsSubscriber;->awaitTask(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method static createInstance(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/messaging/GmsRpc;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/tasks/Task;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/FirebaseMessaging;",
            "Lcom/google/firebase/messaging/Metadata;",
            "Lcom/google/firebase/messaging/GmsRpc;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/messaging/TopicsSubscriber;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/google/firebase/messaging/TopicsSubscriber$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/messaging/TopicsSubscriber$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/messaging/GmsRpc;)V

    invoke-static {v2, v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static isDebugLogEnabled()Z
    .registers 2

    .line 314
    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$createInstance$0(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/messaging/GmsRpc;)Lcom/google/firebase/messaging/TopicsSubscriber;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/TopicsStore;->getInstance(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/TopicsStore;

    move-result-object v3

    .line 81
    new-instance v0, Lcom/google/firebase/messaging/TopicsSubscriber;

    move-object v5, p0

    move-object v6, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/messaging/TopicsSubscriber;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/messaging/TopicsStore;Lcom/google/firebase/messaging/GmsRpc;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method private markCompletePendingOperation(Lcom/google/firebase/messaging/TopicOperation;)V
    .registers 6

    .line 200
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    monitor-enter v0

    .line 201
    :try_start_3
    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->serialize()Ljava/lang/String;

    move-result-object p1

    .line 202
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 203
    monitor-exit v0

    return-void

    .line 206
    :cond_11
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    .line 210
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v2, :cond_25

    const/4 v3, 0x0

    .line 213
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 215
    :cond_25
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 216
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->pendingOperations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p1
.end method

.method private startSync()V
    .registers 3

    .line 149
    invoke-virtual {p0}, Lcom/google/firebase/messaging/TopicsSubscriber;->isSyncScheduledOrRunning()Z

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    .line 150
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/TopicsSubscriber;->syncWithDelaySecondsInternal(J)V

    :cond_b
    return-void
.end method


# virtual methods
.method getStore()Lcom/google/firebase/messaging/TopicsStore;
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->store:Lcom/google/firebase/messaging/TopicsStore;

    return-object v0
.end method

.method hasPendingOperation()Z
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->store:Lcom/google/firebase/messaging/TopicsStore;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/TopicsStore;->getNextTopicOperation()Lcom/google/firebase/messaging/TopicOperation;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized isSyncScheduledOrRunning()Z
    .registers 2

    monitor-enter p0

    .line 305
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->syncScheduledOrRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method performTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    const-string v0, "FirebaseMessaging"

    .line 0
    const-string v1, "Unsubscribe from topic: "

    const-string v2, "Subscribe to topic: "

    const-string v3, "Unknown topic operation"

    const/4 v4, 0x0

    .line 232
    :try_start_9
    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->getOperation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x53

    const/4 v8, 0x1

    if-eq v6, v7, :cond_25

    const/16 v7, 0x55

    if-eq v6, v7, :cond_1b

    goto :goto_2f

    :cond_1b
    const-string v6, "U"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    move v5, v8

    goto :goto_30

    :cond_25
    const-string v6, "S"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2b} :catch_9f

    if-eqz v5, :cond_2f

    move v5, v4

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v5, -0x1

    :goto_30
    const-string v6, " succeeded."

    if-eqz v5, :cond_79

    if-eq v5, v8, :cond_53

    .line 247
    :try_start_36
    invoke-static {}, Lcom/google/firebase/messaging/TopicsSubscriber;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 240
    :cond_53
    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/messaging/TopicsSubscriber;->blockingUnsubscribeFromTopic(Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/google/firebase/messaging/TopicsSubscriber;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 234
    :cond_79
    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/messaging/TopicsSubscriber;->blockingSubscribeToTopic(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/google/firebase/messaging/TopicsSubscriber;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_9e} :catch_9f

    :cond_9e
    :goto_9e
    return v8

    :catch_9f
    move-exception p1

    .line 253
    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    const-string v1, "INTERNAL_SERVER_ERROR"

    .line 254
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    const-string v1, "TOO_MANY_SUBSCRIBERS"

    .line 255
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    goto :goto_d2

    .line 259
    :cond_c5
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d1

    .line 260
    const-string p1, "Topic operation failed without exception message. Will retry Topic operation."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 265
    :cond_d1
    throw p1

    .line 256
    :cond_d2
    :goto_d2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Topic operation failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ". Will retry Topic operation."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method scheduleSyncTaskWithDelaySeconds(Ljava/lang/Runnable;J)V
    .registers 6

    .line 163
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method scheduleTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/TopicOperation;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->store:Lcom/google/firebase/messaging/TopicsStore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/TopicsStore;->addTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Z

    .line 118
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/messaging/TopicsSubscriber;->addToPendingOperations(Lcom/google/firebase/messaging/TopicOperation;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized setSyncScheduledOrRunning(Z)V
    .registers 2

    monitor-enter p0

    .line 309
    :try_start_1
    iput-boolean p1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->syncScheduledOrRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 310
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method startTopicsSyncIfNecessary()V
    .registers 2

    .line 143
    invoke-virtual {p0}, Lcom/google/firebase/messaging/TopicsSubscriber;->hasPendingOperation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    invoke-direct {p0}, Lcom/google/firebase/messaging/TopicsSubscriber;->startSync()V

    :cond_9
    return-void
.end method

.method subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/google/firebase/messaging/TopicOperation;->subscribe(Ljava/lang/String;)Lcom/google/firebase/messaging/TopicOperation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/TopicsSubscriber;->scheduleTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 105
    invoke-virtual {p0}, Lcom/google/firebase/messaging/TopicsSubscriber;->startTopicsSyncIfNecessary()V

    return-object p1
.end method

.method syncTopics()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    :goto_0
    monitor-enter p0

    .line 178
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->store:Lcom/google/firebase/messaging/TopicsStore;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/TopicsStore;->getNextTopicOperation()Lcom/google/firebase/messaging/TopicOperation;

    move-result-object v0

    if-nez v0, :cond_19

    .line 180
    invoke-static {}, Lcom/google/firebase/messaging/TopicsSubscriber;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 181
    const-string v0, "FirebaseMessaging"

    const-string v1, "topic sync succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v0, 0x1

    .line 184
    monitor-exit p0

    return v0

    .line 186
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b

    .line 188
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/TopicsSubscriber;->performTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v0, 0x0

    return v0

    .line 194
    :cond_22
    iget-object v1, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->store:Lcom/google/firebase/messaging/TopicsStore;

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/TopicsStore;->removeTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Z

    .line 195
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/TopicsSubscriber;->markCompletePendingOperation(Lcom/google/firebase/messaging/TopicOperation;)V

    goto :goto_0

    :catchall_2b
    move-exception v0

    .line 186
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method syncWithDelaySecondsInternal(J)V
    .registers 13

    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x1e

    .line 155
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/messaging/TopicsSubscriber;->MAX_DELAY_SEC:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 156
    new-instance v4, Lcom/google/firebase/messaging/TopicsSyncTask;

    iget-object v6, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/firebase/messaging/TopicsSubscriber;->metadata:Lcom/google/firebase/messaging/Metadata;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/messaging/TopicsSyncTask;-><init>(Lcom/google/firebase/messaging/TopicsSubscriber;Landroid/content/Context;Lcom/google/firebase/messaging/Metadata;J)V

    .line 157
    invoke-virtual {p0, v4, p1, p2}, Lcom/google/firebase/messaging/TopicsSubscriber;->scheduleSyncTaskWithDelaySeconds(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    .line 158
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/TopicsSubscriber;->setSyncScheduledOrRunning(Z)V

    return-void
.end method

.method unsubscribeFromTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lcom/google/firebase/messaging/TopicOperation;->unsubscribe(Ljava/lang/String;)Lcom/google/firebase/messaging/TopicOperation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/TopicsSubscriber;->scheduleTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 111
    invoke-virtual {p0}, Lcom/google/firebase/messaging/TopicsSubscriber;->startTopicsSyncIfNecessary()V

    return-object p1
.end method
