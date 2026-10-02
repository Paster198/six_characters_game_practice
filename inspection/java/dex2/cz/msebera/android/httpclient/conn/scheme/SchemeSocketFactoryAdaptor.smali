.class Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SchemeSocketFactoryAdaptor.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
        }
    .end annotation

    .line 58
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    if-eqz p3, :cond_13

    .line 63
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    .line 64
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p3

    goto :goto_15

    :cond_13
    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_15
    move-object v4, p2

    move v5, p3

    .line 66
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    move-object v1, p1

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 p1, 0x1

    return p1

    .line 91
    :cond_8
    instance-of v0, p1, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;

    if-eqz v0, :cond_17

    .line 92
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    check-cast p1, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;

    iget-object p1, p1, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 94
    :cond_17
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFactory()Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;
    .registers 2

    .line 80
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 100
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result p1

    return p1
.end method
