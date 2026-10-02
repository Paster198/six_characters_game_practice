.class Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;
.super Ljava/lang/Object;
.source "ConnPoolByRoute.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->requestPoolEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

.field final synthetic val$aborter:Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;

.field final synthetic val$route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .registers 5

    .line 283
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->val$aborter:Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->val$route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortRequest()V
    .registers 3

    .line 286
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    # getter for: Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->access$000(Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 288
    :try_start_9
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->val$aborter:Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;->abort()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_18

    .line 290
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    # getter for: Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->access$000(Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    # getter for: Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->access$000(Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->val$route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->val$state:Ljava/lang/Object;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute$1;->val$aborter:Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->getEntryBlocking(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/impl/conn/tsccm/WaitingThreadAborter;)Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    move-result-object p1

    return-object p1
.end method
