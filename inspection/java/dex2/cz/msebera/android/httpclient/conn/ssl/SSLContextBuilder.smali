.class public Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
.super Ljava/lang/Object;
.source "SSLContextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;,
        Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final SSL:Ljava/lang/String; = "SSL"

.field static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private keymanagers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/net/ssl/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private protocol:Ljava/lang/String;

.field private secureRandom:Ljava/security/SecureRandom;

.field private trustmanagers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/net/ssl/TrustManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    .line 78
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public build()Ljavax/net/ssl/SSLContext;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, "TLS"

    :goto_7
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    .line 168
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_23

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/net/ssl/KeyManager;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/net/ssl/KeyManager;

    goto :goto_24

    :cond_23
    move-object v1, v2

    :goto_24
    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    .line 169
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavax/net/ssl/TrustManager;

    :cond_3a
    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->secureRandom:Ljava/security/SecureRandom;

    .line 167
    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method public loadKeyMaterial(Ljava/security/KeyStore;[C)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadKeyMaterial(Ljava/security/KeyStore;[CLcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    return-object p0
.end method

.method public loadKeyMaterial(Ljava/security/KeyStore;[CLcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 144
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 146
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p1

    if-eqz p1, :cond_37

    const/4 p2, 0x0

    if-eqz p3, :cond_2a

    move v0, p2

    .line 149
    :goto_15
    array-length v1, p1

    if-ge v0, v1, :cond_2a

    .line 150
    aget-object v1, p1, v0

    .line 151
    instance-of v2, v1, Ljavax/net/ssl/X509KeyManager;

    if-eqz v2, :cond_27

    .line 152
    new-instance v2, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;

    check-cast v1, Ljavax/net/ssl/X509KeyManager;

    invoke-direct {v2, v1, p3}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;-><init>(Ljavax/net/ssl/X509KeyManager;Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;)V

    aput-object v2, p1, v0

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 157
    :cond_2a
    array-length p3, p1

    :goto_2b
    if-ge p2, p3, :cond_37

    aget-object v0, p1, p2

    .line 158
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2b

    :cond_37
    return-object p0
.end method

.method public loadTrustMaterial(Ljava/security/KeyStore;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/security/KeyStore;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object p1

    return-object p1
.end method

.method public loadTrustMaterial(Ljava/security/KeyStore;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 105
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 107
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    if-eqz p1, :cond_37

    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    move v1, v0

    .line 110
    :goto_15
    array-length v2, p1

    if-ge v1, v2, :cond_2a

    .line 111
    aget-object v2, p1, v1

    .line 112
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_27

    .line 113
    new-instance v3, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v3, v2, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;-><init>(Ljavax/net/ssl/X509TrustManager;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)V

    aput-object v3, p1, v1

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 118
    :cond_2a
    array-length p2, p1

    :goto_2b
    if-ge v0, p2, :cond_37

    aget-object v1, p1, v0

    .line 119
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_37
    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 2

    .line 97
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->secureRandom:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public useProtocol(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 2

    .line 92
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    return-object p0
.end method

.method public useSSL()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 2

    .line 87
    const-string v0, "SSL"

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    return-object p0
.end method

.method public useTLS()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
    .registers 2

    .line 82
    const-string v0, "TLS"

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    return-object p0
.end method
