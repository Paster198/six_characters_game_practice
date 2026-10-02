.class public Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;
.super Ljava/lang/Object;
.source "PlainSocketFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;
.implements Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    return-void
.end method

.method public static getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;
    .registers 1

    .line 62
    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;-><init>()V

    return-object v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p4, :cond_7

    if-lez p5, :cond_5

    goto :goto_7

    :cond_5
    const/4 p4, 0x0

    goto :goto_11

    .line 148
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

    .line 151
    :goto_11
    iget-object p5, p0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    if-eqz p5, :cond_1a

    .line 152
    invoke-interface {p5, p2}, Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    goto :goto_1e

    .line 154
    :cond_1a
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    .line 156
    :goto_1e
    new-instance p5, Ljava/net/InetSocketAddress;

    invoke-direct {p5, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 157
    invoke-virtual {p0, p1, p5, p4, p6}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
        }
    .end annotation

    .line 102
    const-string v0, "Remote address"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    const-string v0, "HTTP parameters"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_10

    .line 106
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    :cond_10
    if-eqz p3, :cond_1c

    .line 109
    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getSoReuseaddr(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 110
    invoke-virtual {p1, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 112
    :cond_1c
    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result p3

    .line 113
    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result p4

    .line 116
    :try_start_24
    invoke-virtual {p1, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 117
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_2a
    .catch Ljava/net/SocketTimeoutException; {:try_start_24 .. :try_end_2a} :catch_2b

    return-object p1

    .line 119
    :catch_2b
    new-instance p1, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Connect to "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " timed out"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 2

    .line 91
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 2

    .line 87
    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    return-object p1
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
