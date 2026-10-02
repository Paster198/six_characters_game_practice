.class public Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;
.super Ljava/lang/Object;
.source "PlainConnectionSocketFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;->INSTANCE:Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSocketFactory()Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;
    .registers 1

    .line 49
    sget-object v0, Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;->INSTANCE:Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(ILjava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_3

    goto :goto_7

    .line 69
    :cond_3
    invoke-virtual {p0, p6}, Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;->createSocket(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object p2

    :goto_7
    if-eqz p5, :cond_c

    .line 71
    invoke-virtual {p2, p5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 74
    :cond_c
    :try_start_c
    invoke-virtual {p2, p4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    return-object p2

    :catch_10
    move-exception p1

    .line 77
    :try_start_11
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_14

    .line 80
    :catch_14
    throw p1
.end method

.method public createSocket(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    return-object p1
.end method
