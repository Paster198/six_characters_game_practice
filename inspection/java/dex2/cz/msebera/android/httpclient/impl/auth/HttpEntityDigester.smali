.class Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;
.super Ljava/io/OutputStream;
.source "HttpEntityDigester.java"


# instance fields
.field private closed:Z

.field private digest:[B

.field private final digester:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 41
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    .line 42
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->closed:Z

    .line 67
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->digest:[B

    .line 68
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public getDigest()[B
    .registers 2

    .line 72
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->digest:[B

    return-object v0
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->closed:Z

    if-nez v0, :cond_b

    .line 50
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void

    .line 48
    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream has been already closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->closed:Z

    if-nez v0, :cond_a

    .line 58
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void

    .line 56
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream has been already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
