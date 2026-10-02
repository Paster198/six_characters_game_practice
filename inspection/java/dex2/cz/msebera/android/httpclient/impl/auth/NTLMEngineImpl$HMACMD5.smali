.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HMACMD5"
.end annotation


# instance fields
.field protected ipad:[B

.field protected md5:Ljava/security/MessageDigest;

.field protected opad:[B


# direct methods
.method constructor <init>([B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 1565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1568
    :try_start_3
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_56

    const/16 v1, 0x40

    .line 1577
    new-array v2, v1, [B

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    .line 1578
    new-array v2, v1, [B

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    .line 1580
    array-length v2, p1

    if-le v2, v1, :cond_22

    .line 1583
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1584
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 1585
    array-length v2, p1

    :cond_22
    const/4 v0, 0x0

    :goto_23
    const/16 v3, 0x5c

    const/16 v4, 0x36

    if-ge v0, v2, :cond_3c

    .line 1589
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    aget-byte v6, p1, v0

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 1590
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    aget-byte v5, p1, v0

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_3c
    :goto_3c
    if-ge v0, v1, :cond_49

    .line 1594
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    aput-byte v4, p1, v0

    .line 1595
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    aput-byte v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 1600
    :cond_49
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 1601
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void

    :catch_56
    move-exception p1

    .line 1572
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting md5 message digest implementation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1573
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method getOutput()[B
    .registers 4

    .line 1607
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 1608
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1609
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method update([B)V
    .registers 3

    .line 1614
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method update([BII)V
    .registers 5

    .line 1619
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
