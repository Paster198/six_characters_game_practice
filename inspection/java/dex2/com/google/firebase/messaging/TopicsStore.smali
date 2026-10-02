.class final Lcom/google/firebase/messaging/TopicsStore;
.super Ljava/lang/Object;
.source "TopicsStore.java"


# static fields
.field private static final DIVIDER_QUEUE_OPERATIONS:Ljava/lang/String; = ","

.field static final KEY_TOPIC_OPERATIONS_QUEUE:Ljava/lang/String; = "topic_operation_queue"

.field static final PREFERENCES:Ljava/lang/String; = "com.google.android.gms.appid"

.field private static topicsStoreWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/messaging/TopicsStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final syncExecutor:Ljava/util/concurrent/Executor;

.field private topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/google/firebase/messaging/TopicsStore;->syncExecutor:Ljava/util/concurrent/Executor;

    .line 51
    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsStore;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static declared-synchronized clearCaches()V
    .registers 2

    const-class v0, Lcom/google/firebase/messaging/TopicsStore;

    monitor-enter v0

    .line 88
    :try_start_3
    sget-object v1, Lcom/google/firebase/messaging/TopicsStore;->topicsStoreWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_a

    .line 89
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 91
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/TopicsStore;
    .registers 5

    const-class v0, Lcom/google/firebase/messaging/TopicsStore;

    monitor-enter v0

    .line 71
    :try_start_3
    sget-object v1, Lcom/google/firebase/messaging/TopicsStore;->topicsStoreWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_e

    .line 72
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/messaging/TopicsStore;

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-nez v1, :cond_27

    .line 76
    const-string v1, "com.google.android.gms.appid"

    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 78
    new-instance v1, Lcom/google/firebase/messaging/TopicsStore;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/messaging/TopicsStore;-><init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)V

    .line 79
    invoke-direct {v1}, Lcom/google/firebase/messaging/TopicsStore;->initStore()V

    .line 80
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/google/firebase/messaging/TopicsStore;->topicsStoreWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    .line 82
    :cond_27
    monitor-exit v0

    return-object v1

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method private declared-synchronized initStore()V
    .registers 5

    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "topic_operation_queue"

    const-string v2, ","

    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsStore;->syncExecutor:Ljava/util/concurrent/Executor;

    .line 57
    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->createInstance(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/SharedPreferencesQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 59
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


# virtual methods
.method declared-synchronized addTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Z
    .registers 3

    monitor-enter p0

    .line 107
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->serialize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->add(Ljava/lang/String;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return p1

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method declared-synchronized clearTopicOperations()V
    .registers 2

    monitor-enter p0

    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 153
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

.method declared-synchronized getNextTopicOperation()Lcom/google/firebase/messaging/TopicOperation;
    .registers 2

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->peek()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/google/firebase/messaging/TopicOperation;->from(Ljava/lang/String;)Lcom/google/firebase/messaging/TopicOperation;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method declared-synchronized getOperations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/messaging/TopicOperation;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->toList()Ljava/util/List;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    invoke-static {v2}, Lcom/google/firebase/messaging/TopicOperation;->from(Ljava/lang/String;)Lcom/google/firebase/messaging/TopicOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2a

    goto :goto_14

    .line 147
    :cond_28
    monitor-exit p0

    return-object v1

    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method declared-synchronized pollTopicOperation()Lcom/google/firebase/messaging/TopicOperation;
    .registers 3

    monitor-enter p0

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->remove()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/messaging/TopicOperation;->from(Ljava/lang/String;)Lcom/google/firebase/messaging/TopicOperation;

    move-result-object v0
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_b} :catch_f
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    goto :goto_19

    .line 130
    :catch_f
    :try_start_f
    const-string v0, "FirebaseMessaging"

    const-string v1, "Polling operation queue failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_d

    .line 132
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_d

    throw v0
.end method

.method declared-synchronized removeTopicOperation(Lcom/google/firebase/messaging/TopicOperation;)Z
    .registers 3

    monitor-enter p0

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsStore;->topicOperationsQueue:Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/TopicOperation;->serialize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return p1

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method
