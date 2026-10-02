.class Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Task"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 193
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    # getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 199
    :try_start_9
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    # getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->runningTask:Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$300(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;->isCancelled()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_2d

    if-eqz v0, :cond_25

    .line 217
    :goto_1b
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    # getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 203
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->runOneIteration()V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2d

    goto :goto_1b

    :catchall_2d
    move-exception v0

    .line 206
    :try_start_2e
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService;->shutDown()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_38
    .catchall {:try_start_2e .. :try_end_35} :catchall_36

    goto :goto_44

    :catchall_36
    move-exception v0

    goto :goto_63

    :catch_38
    move-exception v1

    .line 208
    :try_start_39
    # getter for: Lcom/google/common/util/concurrent/AbstractScheduledService;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractScheduledService;->access$400()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    :goto_44
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->notifyFailed(Ljava/lang/Throwable;)V

    .line 215
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    # getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->runningTask:Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$300(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;->cancel(Z)V
    :try_end_59
    .catchall {:try_start_39 .. :try_end_59} :catchall_36

    .line 217
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    # getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_63
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    # getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->access$200(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 218
    throw v0
.end method
