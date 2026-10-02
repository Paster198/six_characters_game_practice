.class Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;
.super Ljava/lang/Object;
.source "SSLContextBuilder.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrustManagerDelegate"
.end annotation


# instance fields
.field private final trustManager:Ljavax/net/ssl/X509TrustManager;

.field private final trustStrategy:Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)V
    .registers 3

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 182
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;->trustStrategy:Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;->trustStrategy:Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;->isTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 195
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 201
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$TrustManagerDelegate;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
