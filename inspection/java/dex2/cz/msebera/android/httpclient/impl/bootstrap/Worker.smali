.class Lcz/msebera/android/httpclient/impl/bootstrap/Worker;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final conn:Lcz/msebera/android/httpclient/HttpServerConnection;

.field private final exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

.field private final httpservice:Lcz/msebera/android/httpclient/protocol/HttpService;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpService;Lcz/msebera/android/httpclient/HttpServerConnection;Lcz/msebera/android/httpclient/ExceptionLogger;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->httpservice:Lcz/msebera/android/httpclient/protocol/HttpService;

    .line 52
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    .line 53
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    return-void
.end method


# virtual methods
.method public getConnection()Lcz/msebera/android/httpclient/HttpServerConnection;
    .registers 2

    .line 57
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    return-object v0
.end method

.method public run()V
    .registers 5

    .line 63
    :try_start_0
    new-instance v0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    .line 64
    invoke-static {v0}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/protocol/HttpCoreContext;

    move-result-object v1

    .line 65
    :goto_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpServerConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 66
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->httpservice:Lcz/msebera/android/httpclient/protocol/HttpService;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-virtual {v2, v3, v1}, Lcz/msebera/android/httpclient/protocol/HttpService;->handleRequest(Lcz/msebera/android/httpclient/HttpServerConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 67
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->clear()V

    goto :goto_9

    .line 69
    :cond_22
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpServerConnection;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_2f
    .catchall {:try_start_0 .. :try_end_27} :catchall_2d

    .line 74
    :try_start_27
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpServerConnection;->shutdown()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_3b

    return-void

    :catchall_2d
    move-exception v0

    goto :goto_42

    :catch_2f
    move-exception v0

    .line 71
    :try_start_30
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_2d

    .line 74
    :try_start_35
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpServerConnection;->shutdown()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_3b

    goto :goto_41

    :catch_3b
    move-exception v0

    .line 76
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V

    :goto_41
    return-void

    .line 74
    :goto_42
    :try_start_42
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpServerConnection;->shutdown()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_48

    goto :goto_4e

    :catch_48
    move-exception v1

    .line 76
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {v2, v1}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V

    .line 77
    :goto_4e
    throw v0
.end method
