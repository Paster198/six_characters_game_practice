.class public Llow/moe/MultiplayerManager;
.super Ljava/lang/Object;
.source "MultiplayerManager.java"


# static fields
.field private static sManager:Llow/moe/MultiplayerManager;


# instance fields
.field private listening:Z

.field private readingThread:Ljava/lang/Thread;

.field private sActivity:Landroid/app/Activity;

.field private socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sput-object p0, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    .line 20
    iput-object p1, p0, Llow/moe/MultiplayerManager;->sActivity:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Llow/moe/MultiplayerManager;->listening:Z

    .line 22
    invoke-virtual {p0}, Llow/moe/MultiplayerManager;->initComplete()V

    return-void
.end method

.method public static getListeningPort()I
    .registers 1

    .line 95
    sget-object v0, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    iget-object v0, v0, Llow/moe/MultiplayerManager;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$startListening$0(Ljava/net/DatagramSocket;)V
    .registers 6

    const/16 v0, 0x800

    .line 60
    new-array v1, v0, [B

    .line 61
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 62
    :catch_9
    :cond_9
    :goto_9
    sget-object v0, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    iget-boolean v0, v0, Llow/moe/MultiplayerManager;->listening:Z

    if-eqz v0, :cond_2c

    .line 64
    :try_start_f
    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 65
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    if-lez v0, :cond_9

    .line 66
    sget-object v0, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Llow/moe/MultiplayerManager;->receiveData([BII)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_26

    goto :goto_9

    :catch_26
    const-wide/16 v3, 0x1

    .line 71
    :try_start_28
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_9

    goto :goto_9

    :cond_2c
    return-void
.end method

.method public static sendData([BLjava/lang/String;I)V
    .registers 5

    .line 84
    sget-object v0, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    iget-object v0, v0, Llow/moe/MultiplayerManager;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_17

    .line 86
    :try_start_6
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p0

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 87
    sget-object p0, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    iget-object p0, p0, Llow/moe/MultiplayerManager;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-void
.end method

.method public static startListening()I
    .registers 5

    .line 42
    invoke-static {}, Llow/moe/MultiplayerManager;->stopListening()V

    const/16 v0, 0xa

    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_28

    .line 46
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const v2, 0xb3b0

    add-int/2addr v1, v2

    .line 48
    :try_start_18
    sget-object v2, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v3, v2, Llow/moe/MultiplayerManager;->socket:Ljava/net/DatagramSocket;
    :try_end_21
    .catch Ljava/net/SocketException; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_28

    .line 52
    :catch_22
    sget-object v1, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    const/4 v2, 0x0

    iput-object v2, v1, Llow/moe/MultiplayerManager;->socket:Ljava/net/DatagramSocket;

    goto :goto_5

    .line 56
    :cond_28
    :goto_28
    sget-object v0, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    iget-object v1, v0, Llow/moe/MultiplayerManager;->socket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_46

    .line 59
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Llow/moe/MultiplayerManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Llow/moe/MultiplayerManager$$ExternalSyntheticLambda0;-><init>(Ljava/net/DatagramSocket;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, v0, Llow/moe/MultiplayerManager;->readingThread:Ljava/lang/Thread;

    .line 76
    sget-object v0, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    iget-object v0, v0, Llow/moe/MultiplayerManager;->readingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    sget-object v0, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Llow/moe/MultiplayerManager;->listening:Z

    .line 80
    :cond_46
    invoke-static {}, Llow/moe/MultiplayerManager;->getListeningPort()I

    move-result v0

    return v0
.end method

.method public static stopListening()V
    .registers 4

    .line 26
    sget-object v0, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    iget-boolean v1, v0, Llow/moe/MultiplayerManager;->listening:Z

    if-eqz v1, :cond_29

    .line 27
    iget-object v0, v0, Llow/moe/MultiplayerManager;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 28
    sget-object v0, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    const/4 v1, 0x0

    iput-object v1, v0, Llow/moe/MultiplayerManager;->socket:Ljava/net/DatagramSocket;

    const/4 v2, 0x0

    .line 29
    iput-boolean v2, v0, Llow/moe/MultiplayerManager;->listening:Z

    .line 31
    :try_start_13
    iget-object v0, v0, Llow/moe/MultiplayerManager;->readingThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_25
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1f

    .line 36
    sget-object v0, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    iput-object v1, v0, Llow/moe/MultiplayerManager;->readingThread:Ljava/lang/Thread;

    return-void

    :catchall_1f
    move-exception v0

    sget-object v2, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    iput-object v1, v2, Llow/moe/MultiplayerManager;->readingThread:Ljava/lang/Thread;

    .line 37
    throw v0

    .line 36
    :catch_25
    sget-object v0, Llow/moe/MultiplayerManager;->sManager:Llow/moe/MultiplayerManager;

    iput-object v1, v0, Llow/moe/MultiplayerManager;->readingThread:Ljava/lang/Thread;

    :cond_29
    return-void
.end method


# virtual methods
.method native initComplete()V
.end method

.method native receiveData([BII)V
.end method
