.class public Lcz/msebera/android/httpclient/impl/DefaultHttpClientConnection;
.super Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;
.source "DefaultHttpClientConnection.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/Socket;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const-string v0, "Socket"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultHttpClientConnection;->assertNotOpen()V

    .line 60
    const-string v0, "http.tcp.nodelay"

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 61
    const-string v0, "http.socket.timeout"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 62
    const-string v0, "http.socket.keepalive"

    invoke-interface {p2, v0, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 63
    const-string v0, "http.socket.linger"

    const/4 v3, -0x1

    invoke-interface {p2, v0, v3}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_3a

    if-lez v0, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    .line 65
    :goto_37
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 67
    :cond_3a
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->bind(Ljava/net/Socket;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method
