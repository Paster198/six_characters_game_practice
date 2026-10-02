.class public abstract Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;
.super Ljava/lang/Object;
.source "AbstractVerifier.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final BAD_COUNTRY_2LDS:[Ljava/lang/String;


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xe

    .line 62
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ac"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "co"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "edu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "go"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gouv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    .line 68
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    return-void
.end method

.method public static acceptableCountryWildcard(Ljava/lang/String;)Z
    .registers 2

    .line 217
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->validCountryWildcard([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static countDots(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 255
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 256
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_12

    add-int/lit8 v1, v1, 0x1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    return v1
.end method

.method public static getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .registers 3

    .line 221
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string p0, "cn"

    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->findMostSpecific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    const/4 v0, 0x1

    .line 222
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    .line 242
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->extractSubjectAlts(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 244
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 245
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static matchIdentity(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 184
    :cond_4
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 185
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 189
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 190
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_76

    aget-object v2, v1, v0

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    if-eqz p2, :cond_2c

    .line 191
    invoke-static {v1}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->validCountryWildcard([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 194
    :cond_2c
    aget-object v1, v1, v0

    .line 195
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5e

    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    move v1, v3

    goto :goto_66

    :cond_5c
    move v1, v0

    goto :goto_66

    .line 201
    :cond_5e
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    :goto_66
    if-eqz v1, :cond_75

    if-eqz p2, :cond_74

    .line 203
    invoke-static {p0}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->countDots(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->countDots(Ljava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_75

    :cond_74
    return v3

    :cond_75
    return v0

    .line 205
    :cond_76
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static validCountryWildcard([Ljava/lang/String;)Z
    .registers 4

    .line 210
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x2

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v0, :cond_f

    goto :goto_1c

    .line 213
    :cond_f
    sget-object v0, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    aget-object p0, p0, v2

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_1a

    return v2

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    :goto_1c
    return v2
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 134
    invoke-static {p1}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    .line 135
    invoke-static {p1}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_f

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x2

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x7

    .line 137
    :goto_10
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->extractSubjectAlts(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    .line 139
    new-instance v1, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;

    invoke-direct {v1, p2}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string p2, "cn"

    invoke-virtual {v1, p2}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->findMostSpecific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2d

    const/4 v2, 0x1

    .line 140
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    goto :goto_2e

    :cond_2d
    move-object v2, v1

    :goto_2e
    if-eqz v0, :cond_43

    .line 142
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_43

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, [Ljava/lang/String;

    .line 140
    :cond_43
    invoke-virtual {p0, p1, v2, v1}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const-string v0, "Host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 80
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 100
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 104
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 108
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 112
    :cond_1f
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    const/4 v0, 0x0

    .line 113
    aget-object p2, p2, v0

    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 114
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 150
    array-length v1, p2

    if-lez v1, :cond_a

    const/4 v1, 0x0

    aget-object p2, p2, v1

    goto :goto_b

    :cond_a
    move-object p2, v0

    :goto_b
    if-eqz p3, :cond_14

    .line 151
    array-length v1, p3

    if-lez v1, :cond_14

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 153
    :cond_14
    invoke-static {p1}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_25

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 154
    invoke-virtual {p1, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->normaliseAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_26

    :cond_25
    move-object p3, p1

    .line 156
    :goto_26
    const-string v1, "Certificate for <"

    if-eqz v0, :cond_68

    .line 157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    invoke-static {v2}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 159
    invoke-static {v2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->normaliseAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    :cond_44
    invoke-static {p3, v2, p4}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_7c

    .line 164
    :cond_4b
    new-instance p2, Ljavax/net/ssl/SSLException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "> doesn\'t match any of the subject alternative names: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_68
    if-eqz p2, :cond_9a

    .line 167
    invoke-static {p2}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 168
    invoke-static {p2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->normaliseAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_76

    :cond_75
    move-object v0, p2

    .line 169
    :goto_76
    invoke-static {p3, v0, p4}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_7d

    :goto_7c
    return-void

    .line 172
    :cond_7d
    new-instance p3, Ljavax/net/ssl/SSLException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "> doesn\'t match common name of the certificate subject: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 175
    :cond_9a
    new-instance p2, Ljavax/net/ssl/SSLException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Certificate subject for <"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "> doesn\'t contain a common name and does not have alternative names"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 5

    const/4 v0, 0x0

    .line 120
    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    .line 121
    aget-object p2, p2, v0

    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 122
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_c
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_c} :catch_e

    const/4 p1, 0x1

    return p1

    :catch_e
    move-exception p1

    .line 125
    iget-object p2, p0, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 126
    iget-object p2, p0, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_20
    return v0
.end method
