.class Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager$1;
.super Ljava/lang/Object;
.source "BasicHttpClientConnectionManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;

.field final synthetic val$route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .registers 4

    .line 207
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager$1;->val$route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager$1;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/HttpClientConnection;
    .registers 4

    .line 217
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;

    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager$1;->val$route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager$1;->val$state:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->getConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/HttpClientConnection;

    move-result-object p1

    return-object p1
.end method
