.class public final Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;
.super Ljava/lang/Object;
.source "DefaultHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field static final DNS_NAME_TYPE:I = 0x2

.field static final IP_ADDRESS_TYPE:I = 0x7


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;-><init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 74
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    return-void
.end method

.method static extractSubjectAlts(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 235
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0
    :try_end_5
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-object p0, v0

    :goto_7
    if-eqz p0, :cond_38

    .line 240
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 242
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_d

    const/4 v2, 0x1

    .line 244
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_34

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    :cond_34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_38
    return-object v0
.end method

.method static matchCN(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 163
    invoke-static {p0, p1, p2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIdentityStrict(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    .line 164
    :cond_7
    new-instance p2, Ljavax/net/ssl/SSLException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Certificate for <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "> doesn\'t match common name of the certificate subject: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static matchDNSName(Ljava/lang/String;Ljava/util/List;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 149
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 150
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 151
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v0, v2, p2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIdentityStrict(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Z

    move-result v2

    if-eqz v2, :cond_20

    return-void

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 157
    :cond_23
    new-instance p2, Ljavax/net/ssl/SSLException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Certificate for <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "> doesn\'t match any of the subject alternative names: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static matchDomainRoot(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 173
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_27

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2e

    if-ne p0, p1, :cond_28

    :cond_27
    return v3

    :cond_28
    return v0
.end method

.method static matchIPAddress(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 125
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_17
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Certificate for <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "> doesn\'t match any of the subject alternative names: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static matchIPv6Address(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 135
    invoke-static {p0}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->normaliseAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 136
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 137
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    invoke-static {v2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->normaliseAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-void

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 143
    :cond_1f
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Certificate for <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "> doesn\'t match any of the subject alternative names: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static matchIdentity(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 220
    invoke-static {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)Z

    move-result p0

    return p0
.end method

.method static matchIdentity(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Z
    .registers 4

    const/4 v0, 0x0

    .line 216
    invoke-static {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)Z

    move-result p0

    return p0
.end method

.method private static matchIdentity(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)Z
    .registers 8

    .line 180
    const-string v0, "."

    const/4 v1, 0x0

    if-eqz p2, :cond_16

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 181
    invoke-virtual {p2, p1}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->getDomainRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchDomainRoot(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_16

    return v1

    :cond_16
    const/16 p2, 0x2a

    .line 191
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_5e

    .line 193
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr p2, v3

    .line 194
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_36

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_36

    return v1

    .line 198
    :cond_36
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_43

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_43

    return v1

    :cond_43
    if-eqz p3, :cond_5d

    .line 204
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p3, p1

    .line 203
    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5d

    return v1

    :cond_5d
    return v3

    .line 211
    :cond_5e
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static matchIdentityStrict(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 229
    invoke-static {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)Z

    move-result p0

    return p0
.end method

.method static matchIdentityStrict(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Z
    .registers 4

    const/4 v0, 0x1

    .line 225
    invoke-static {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIdentity(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;Z)Z

    move-result p0

    return p0
.end method

.method static normaliseAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    goto :goto_b

    .line 263
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_b} :catch_b

    :catch_b
    :goto_b
    return-object p0
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 98
    invoke-static {p1}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    .line 99
    invoke-static {p1}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_f

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v2, 0x2

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v2, 0x7

    .line 101
    :goto_10
    invoke-static {p2, v2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->extractSubjectAlts(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 102
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2e

    if-eqz v0, :cond_22

    .line 104
    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIPAddress(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_22
    if-eqz v1, :cond_28

    .line 106
    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchIPv6Address(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 108
    :cond_28
    iget-object p2, p0, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-static {p1, v2, p2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchDNSName(Ljava/lang/String;Ljava/util/List;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    return-void

    .line 113
    :cond_2e
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    .line 114
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string p2, "cn"

    invoke-virtual {v0, p2}, Lcz/msebera/android/httpclient/conn/ssl/DistinguishedNameParser;->findMostSpecific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_45

    .line 119
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-static {p1, p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->matchCN(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    return-void

    .line 116
    :cond_45
    new-instance p2, Ljavax/net/ssl/SSLException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Certificate subject for <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "> doesn\'t contain a common name and does not have alternative names"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 5

    const/4 v0, 0x0

    .line 84
    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    .line 85
    aget-object p2, p2, v0

    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 86
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_c
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_c} :catch_e

    const/4 p1, 0x1

    return p1

    :catch_e
    move-exception p1

    .line 89
    iget-object p2, p0, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 90
    iget-object p2, p0, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_20
    return v0
.end method
