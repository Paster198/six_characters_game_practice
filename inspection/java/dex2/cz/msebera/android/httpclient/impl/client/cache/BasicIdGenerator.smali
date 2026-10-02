.class Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;
.super Ljava/lang/Object;
.source "BasicIdGenerator.java"


# instance fields
.field private count:J

.field private final hostname:Ljava/lang/String;

.field private final rnd:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    :try_start_3
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_b} :catch_c

    goto :goto_e

    .line 57
    :catch_c
    const-string v0, "localhost"

    .line 59
    :goto_e
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;->hostname:Ljava/lang/String;

    .line 61
    :try_start_10
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;->rnd:Ljava/security/SecureRandom;
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public generate()Ljava/lang/String;
    .registers 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;->generate(Ljava/lang/StringBuilder;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized generate(Ljava/lang/StringBuilder;)V
    .registers 8

    monitor-enter p0

    .line 69
    :try_start_1
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;->count:J

    .line 70
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, p1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 74
    const-string v3, "%1$016x-%2$08x"

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;->count:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 75
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/BasicIdGenerator;->hostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    .line 78
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method
