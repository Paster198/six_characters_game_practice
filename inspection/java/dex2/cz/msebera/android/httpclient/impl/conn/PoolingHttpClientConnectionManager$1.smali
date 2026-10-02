.class Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$1;
.super Ljava/lang/Object;
.source "PoolingHttpClientConnectionManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;

.field final synthetic val$future:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;Ljava/util/concurrent/Future;)V
    .registers 3

    .line 252
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$1;->val$future:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .registers 3

    .line 256
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$1;->val$future:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/HttpClientConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$1;->val$future:Ljava/util/concurrent/Future;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->leaseConnection(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/HttpClientConnection;

    move-result-object p1

    return-object p1
.end method
