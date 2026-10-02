.class final Lcom/google/firebase/messaging/SharedPreferencesQueue;
.super Ljava/lang/Object;
.source "SharedPreferencesQueue.java"


# instance fields
.field private bulkOperation:Z

.field final internalQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final itemSeparator:Ljava/lang/String;

.field private final queueName:Ljava/lang/String;

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final syncExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$E9XW8fIBuBlfy6ibDQdajXfq4Mo(Lcom/google/firebase/messaging/SharedPreferencesQueue;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->syncState()V

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->bulkOperation:Z

    .line 60
    iput-object p1, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 61
    iput-object p2, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->queueName:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->itemSeparator:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->syncExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private checkAndSyncState(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 135
    :goto_5
    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->checkAndSyncState(Z)Z

    return-object p1
.end method

.method private checkAndSyncState(Z)Z
    .registers 3

    if-eqz p1, :cond_9

    .line 148
    iget-boolean v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->bulkOperation:Z

    if-nez v0, :cond_9

    .line 149
    invoke-direct {p0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->syncStateAsync()V

    :cond_9
    return p1
.end method

.method static createInstance(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/SharedPreferencesQueue;
    .registers 5

    .line 81
    new-instance v0, Lcom/google/firebase/messaging/SharedPreferencesQueue;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/messaging/SharedPreferencesQueue;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 83
    invoke-direct {v0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->initQueue()V

    return-object v0
.end method

.method private initQueue()V
    .registers 7

    .line 89
    iget-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 91
    iget-object v1, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->queueName:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    iget-object v2, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->itemSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_48

    .line 95
    :cond_21
    iget-object v2, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->itemSeparator:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 97
    array-length v2, v1

    if-nez v2, :cond_32

    .line 98
    const-string v2, "FirebaseMessaging"

    const-string v3, "Corrupted queue. Please check the queue contents and item separator provided"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_32
    array-length v2, v1

    const/4 v3, 0x0

    :goto_34
    if-ge v3, v2, :cond_46

    aget-object v4, v1, v3

    .line 102
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 103
    iget-object v5, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 106
    :cond_46
    monitor-exit v0

    return-void

    .line 93
    :cond_48
    :goto_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception v1

    .line 106
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private syncState()V
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 161
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->queueName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->serialize()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private syncStateAsync()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->syncExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/messaging/SharedPreferencesQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/SharedPreferencesQueue$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/messaging/SharedPreferencesQueue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Z
    .registers 4

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->itemSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_21

    .line 128
    :cond_f
    iget-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 129
    :try_start_12
    iget-object v1, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->checkAndSyncState(Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1e
    move-exception p1

    .line 130
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_1e

    throw p1

    :cond_21
    :goto_21
    const/4 p1, 0x0

    return p1
.end method

.method public beginTransaction()V
    .registers 2

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->bulkOperation:Z

    return-void
.end method

.method beginTransactionSync()V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 184
    :try_start_3
    invoke-virtual {p0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->beginTransaction()V

    .line 185
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public clear()V
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    const/4 v1, 0x1

    .line 224
    invoke-direct {p0, v1}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->checkAndSyncState(Z)Z

    .line 225
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public commitTransaction()V
    .registers 2

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->bulkOperation:Z

    .line 192
    invoke-direct {p0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->syncStateAsync()V

    return-void
.end method

.method commitTransactionSync()V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 198
    :try_start_3
    invoke-virtual {p0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->commitTransaction()V

    .line 199
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public peek()Ljava/lang/String;
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 232
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public remove()Ljava/lang/String;
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->checkAndSyncState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    .line 218
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->checkAndSyncState(Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_f
    move-exception p1

    .line 212
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public serialize()Ljava/lang/String;
    .registers 5

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->itemSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 172
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializeSync()Ljava/lang/String;
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 205
    :try_start_3
    invoke-virtual {p0}, Lcom/google/firebase/messaging/SharedPreferencesQueue;->serialize()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    .line 206
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public size()I
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 238
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public toList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 112
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/firebase/messaging/SharedPreferencesQueue;->internalQueue:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    .line 113
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
