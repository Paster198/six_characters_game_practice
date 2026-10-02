.class public final Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;
.super Ljava/lang/Object;
.source "MultihomePlainSocketFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSocketFactory()Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;
    .registers 1

    .line 74
    sget-object v0, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const-string v0, "Target host"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    const-string v0, "HTTP parameters"

    invoke-static {p6, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_10

    .line 114
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/MultihomePlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    :cond_10
    if-nez p4, :cond_14

    if-lez p5, :cond_20

    .line 118
    :cond_14
    new-instance v0, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_19

    goto :goto_1a

    :cond_19
    const/4 p5, 0x0

    :goto_1a
    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 120
    invoke-virtual {p1, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 123
    :cond_20
    invoke-static {p6}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result p4

    .line 125
    invoke-static {p2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p2

    .line 126
    new-instance p5, Ljava/util/ArrayList;

    array-length p6, p2

    invoke-direct {p5, p6}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    invoke-static {p5}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 131
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p5, 0x0

    :goto_3d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_75

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/net/InetAddress;

    .line 133
    :try_start_49
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p6, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v0, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_51
    .catch Ljava/net/SocketTimeoutException; {:try_start_49 .. :try_end_51} :catch_5a
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_52

    goto :goto_75

    :catch_52
    move-exception p1

    move-object p5, p1

    .line 139
    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    goto :goto_3d

    .line 136
    :catch_5a
    new-instance p1, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Connect to "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " timed out"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_75
    :goto_75
    if-nez p5, :cond_78

    return-object p1

    .line 145
    :cond_78
    throw p5
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 2

    .line 87
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 165
    const-string v0, "Socket"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "Socket is closed"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
