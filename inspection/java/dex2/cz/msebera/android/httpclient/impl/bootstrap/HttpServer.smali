.class public Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;
.super Ljava/lang/Object;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;
    }
.end annotation


# instance fields
.field private final connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/HttpConnectionFactory<",
            "+",
            "Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

.field private final httpService:Lcz/msebera/android/httpclient/protocol/HttpService;

.field private final ifAddress:Ljava/net/InetAddress;

.field private final listenerExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final port:I

.field private volatile requestListener:Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;

.field private volatile serverSocket:Ljava/net/ServerSocket;

.field private final serverSocketFactory:Ljavax/net/ServerSocketFactory;

.field private final socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

.field private final sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

.field private final status:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;",
            ">;"
        }
    .end annotation
.end field

.field private final workerExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final workerThreads:Ljava/lang/ThreadGroup;


# direct methods
.method constructor <init>(ILjava/net/InetAddress;Lcz/msebera/android/httpclient/config/SocketConfig;Ljavax/net/ServerSocketFactory;Lcz/msebera/android/httpclient/protocol/HttpService;Lcz/msebera/android/httpclient/HttpConnectionFactory;Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;Lcz/msebera/android/httpclient/ExceptionLogger;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/InetAddress;",
            "Lcz/msebera/android/httpclient/config/SocketConfig;",
            "Ljavax/net/ServerSocketFactory;",
            "Lcz/msebera/android/httpclient/protocol/HttpService;",
            "Lcz/msebera/android/httpclient/HttpConnectionFactory<",
            "+",
            "Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;",
            ">;",
            "Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;",
            "Lcz/msebera/android/httpclient/ExceptionLogger;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->port:I

    .line 81
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->ifAddress:Ljava/net/InetAddress;

    .line 82
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    .line 83
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 84
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->httpService:Lcz/msebera/android/httpclient/protocol/HttpService;

    .line 85
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    .line 86
    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    .line 87
    iput-object p8, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    .line 88
    new-instance p2, Lcz/msebera/android/httpclient/impl/bootstrap/ThreadFactoryImpl;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "HTTP-listener-"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/impl/bootstrap/ThreadFactoryImpl;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 90
    new-instance p1, Ljava/lang/ThreadGroup;

    const-string p2, "HTTP-workers"

    invoke-direct {p1, p2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerThreads:Ljava/lang/ThreadGroup;

    .line 91
    new-instance p2, Lcz/msebera/android/httpclient/impl/bootstrap/ThreadFactoryImpl;

    const-string p3, "HTTP-worker"

    invoke-direct {p2, p3, p1}, Lcz/msebera/android/httpclient/impl/bootstrap/ThreadFactoryImpl;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 93
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;->READY:Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 97
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_9

    .line 99
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .line 106
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_9

    .line 108
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public shutdown(JLjava/util/concurrent/TimeUnit;)V
    .registers 6

    .line 157
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->stop()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_14

    .line 160
    :try_start_9
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_14

    .line 162
    :catch_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 165
    :cond_14
    :goto_14
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object p1

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 167
    instance-of p3, p2, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;

    if-eqz p3, :cond_1e

    .line 168
    check-cast p2, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;

    .line 169
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->getConnection()Lcz/msebera/android/httpclient/HttpServerConnection;

    move-result-object p2

    .line 171
    :try_start_34
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpServerConnection;->shutdown()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_1e

    :catch_38
    move-exception p2

    .line 173
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {p3, p2}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V

    goto :goto_1e

    :cond_3f
    return-void
.end method

.method public start()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;->READY:Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;

    sget-object v2, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;->ACTIVE:Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->port:I

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    .line 117
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/config/SocketConfig;->getBacklogSize()I

    move-result v2

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->ifAddress:Ljava/net/InetAddress;

    .line 116
    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 118
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/SocketConfig;->isSoReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 119
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/SocketConfig;->getRcvBufSize()I

    move-result v0

    if-lez v0, :cond_3c

    .line 120
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/SocketConfig;->getRcvBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 122
    :cond_3c
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    instance-of v0, v0, Ljavax/net/ssl/SSLServerSocket;

    if-eqz v0, :cond_4f

    .line 123
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    check-cast v1, Ljavax/net/ssl/SSLServerSocket;

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;->initialize(Ljavax/net/ssl/SSLServerSocket;)V

    .line 125
    :cond_4f
    new-instance v2, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->httpService:Lcz/msebera/android/httpclient/protocol/HttpService;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct/range {v2 .. v8}, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;-><init>(Lcz/msebera/android/httpclient/config/SocketConfig;Ljava/net/ServerSocket;Lcz/msebera/android/httpclient/protocol/HttpService;Lcz/msebera/android/httpclient/HttpConnectionFactory;Lcz/msebera/android/httpclient/ExceptionLogger;Ljava/util/concurrent/ExecutorService;)V

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->requestListener:Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;

    .line 132
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->requestListener:Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_69
    return-void
.end method

.method public stop()V
    .registers 4

    .line 137
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;->ACTIVE:Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;

    sget-object v2, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;->STOPPING:Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;

    invoke-static {v0, v1, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 138
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->requestListener:Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;

    if-eqz v0, :cond_1a

    .line 141
    :try_start_10
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->terminate()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    .line 143
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V

    .line 146
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerThreads:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->interrupt()V

    .line 147
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 148
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_29
    return-void
.end method
