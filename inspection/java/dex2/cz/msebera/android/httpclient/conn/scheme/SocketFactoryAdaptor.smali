.class Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SocketFactoryAdaptor.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
        }
    .end annotation

    if-nez p4, :cond_7

    if-lez p5, :cond_5

    goto :goto_7

    :cond_5
    const/4 p4, 0x0

    goto :goto_11

    .line 64
    :cond_7
    :goto_7
    new-instance v0, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_c

    goto :goto_d

    :cond_c
    const/4 p5, 0x0

    :goto_d
    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object p4, v0

    .line 66
    :goto_11
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    .line 67
    new-instance p5, Ljava/net/InetSocketAddress;

    invoke-direct {p5, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 68
    iget-object p2, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-interface {p2, p1, p5, p4, p6}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    .line 53
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
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

    .line 88
    :cond_8
    instance-of v0, p1, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;

    if-eqz v0, :cond_17

    .line 89
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    check-cast p1, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;

    iget-object p1, p1, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 91
    :cond_17
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFactory()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;
    .registers 2

    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 97
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

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

    .line 73
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result p1

    return p1
.end method
