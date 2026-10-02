.class Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;
.super Ljava/lang/Object;
.source "PoolingHttpClientConnectionManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/pool/ConnFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalConnectionFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/pool/ConnFactory<",
        "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
        "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
        ">;"
    }
.end annotation


# instance fields
.field private final configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

.field private final connFactory:Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/conn/HttpConnectionFactory<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;",
            "Lcz/msebera/android/httpclient/conn/HttpConnectionFactory<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_b

    .line 571
    :cond_6
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;-><init>()V

    :goto_b
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    if-eqz p2, :cond_10

    goto :goto_12

    .line 572
    :cond_10
    sget-object p2, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;

    :goto_12
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;->connFactory:Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 580
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getConnectionConfig(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/config/ConnectionConfig;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_1e

    .line 583
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getConnectionConfig(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/config/ConnectionConfig;

    move-result-object v0

    :cond_1e
    if-nez v0, :cond_26

    .line 586
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;->configData:Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getDefaultConnectionConfig()Lcz/msebera/android/httpclient/config/ConnectionConfig;

    move-result-object v0

    :cond_26
    if-nez v0, :cond_2a

    .line 589
    sget-object v0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .line 591
    :cond_2a
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;->connFactory:Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;

    invoke-interface {v1, p1, v0}, Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;->create(Ljava/lang/Object;Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/HttpConnection;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    return-object p1
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;->create(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object p1

    return-object p1
.end method
