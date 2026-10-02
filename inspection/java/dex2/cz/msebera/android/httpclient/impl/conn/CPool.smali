.class Lcz/msebera/android/httpclient/impl/conn/CPool;
.super Lcz/msebera/android/httpclient/pool/AbstractConnPool;
.source "CPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/pool/AbstractConnPool<",
        "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
        "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
        "Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final timeToLive:J

.field private final tunit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/conn/CPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/pool/ConnFactory;IIJLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/pool/ConnFactory<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;-><init>(Lcz/msebera/android/httpclient/pool/ConnFactory;II)V

    .line 48
    new-instance p1, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-class p2, Lcz/msebera/android/httpclient/impl/conn/CPool;

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 57
    iput-wide p4, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->timeToLive:J

    .line 58
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->tunit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method protected createEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;
    .registers 13

    .line 63
    sget-object v0, Lcz/msebera/android/httpclient/impl/conn/CPool;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 64
    new-instance v2, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iget-wide v7, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->timeToLive:J

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/conn/CPool;->tunit:Ljava/util/concurrent/TimeUnit;

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v9}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;JLjava/util/concurrent/TimeUnit;)V

    return-object v2
.end method

.method protected bridge synthetic createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolEntry;
    .registers 3

    .line 43
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    check-cast p2, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/CPool;->createEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;)Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    move-result-object p1

    return-object p1
.end method

.method protected validate(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)Z
    .registers 2

    .line 69
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->isStale()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected bridge synthetic validate(Lcz/msebera/android/httpclient/pool/PoolEntry;)Z
    .registers 2

    .line 43
    check-cast p1, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/CPool;->validate(Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;)Z

    move-result p1

    return p1
.end method
