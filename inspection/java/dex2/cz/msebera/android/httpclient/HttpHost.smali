.class public final Lcz/msebera/android/httpclient/HttpHost;
.super Ljava/lang/Object;
.source "HttpHost.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_SCHEME_NAME:Ljava/lang/String; = "http"

.field private static final serialVersionUID:J = -0x687dd718ea3e061aL


# instance fields
.field protected final address:Ljava/net/InetAddress;

.field protected final hostname:Ljava/lang/String;

.field protected final lcHostname:Ljava/lang/String;

.field protected final port:I

.field protected final schemeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;)V
    .registers 3

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const-string v0, "HTTP host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    iget-object v0, p1, Lcz/msebera/android/httpclient/HttpHost;->hostname:Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->hostname:Ljava/lang/String;

    .line 215
    iget-object v0, p1, Lcz/msebera/android/httpclient/HttpHost;->lcHostname:Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->lcHostname:Ljava/lang/String;

    .line 216
    iget-object v0, p1, Lcz/msebera/android/httpclient/HttpHost;->schemeName:Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->schemeName:Ljava/lang/String;

    .line 217
    iget v0, p1, Lcz/msebera/android/httpclient/HttpHost;->port:I

    iput v0, p0, Lcz/msebera/android/httpclient/HttpHost;->port:I

    .line 218
    iget-object p1, p1, Lcz/msebera/android/httpclient/HttpHost;->address:Ljava/net/InetAddress;

    iput-object p1, p0, Lcz/msebera/android/httpclient/HttpHost;->address:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "Host name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->containsNoBlanks(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->hostname:Ljava/lang/String;

    .line 81
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/HttpHost;->lcHostname:Ljava/lang/String;

    if-eqz p3, :cond_20

    .line 83
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/HttpHost;->schemeName:Ljava/lang/String;

    goto :goto_24

    .line 85
    :cond_20
    const-string p1, "http"

    iput-object p1, p0, Lcz/msebera/android/httpclient/HttpHost;->schemeName:Ljava/lang/String;

    .line 87
    :goto_24
    iput p2, p0, Lcz/msebera/android/httpclient/HttpHost;->port:I

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcz/msebera/android/httpclient/HttpHost;->address:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/net/InetAddress;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 4

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/net/InetAddress;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/lang/String;)V
    .registers 5

    .line 151
    const-string v0, "Inet address"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/net/InetAddress;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const-string v0, "Inet address"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    iput-object p1, p0, Lcz/msebera/android/httpclient/HttpHost;->address:Ljava/net/InetAddress;

    .line 170
    const-string p1, "Hostname"

    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcz/msebera/android/httpclient/HttpHost;->hostname:Ljava/lang/String;

    .line 171
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/HttpHost;->lcHostname:Ljava/lang/String;

    if-eqz p4, :cond_2a

    .line 173
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p4, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/HttpHost;->schemeName:Ljava/lang/String;

    goto :goto_2e

    .line 175
    :cond_2a
    const-string p1, "http"

    iput-object p1, p0, Lcz/msebera/android/httpclient/HttpHost;->schemeName:Ljava/lang/String;

    .line 177
    :goto_2e
    iput p3, p0, Lcz/msebera/android/httpclient/HttpHost;->port:I

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcz/msebera/android/httpclient/HttpHost;
    .registers 5

    .line 108
    const-string v0, "HTTP Host"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->containsNoBlanks(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 111
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_19

    .line 113
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x3

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    .line 117
    :goto_1a
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_46

    add-int/lit8 v3, v0, 0x1

    .line 120
    :try_start_24
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2c} :catch_31

    .line 124
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_47

    .line 122
    :catch_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid HTTP host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    const/4 v3, -0x1

    .line 126
    :goto_47
    new-instance v0, Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {v0, p0, v3, v2}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 335
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 307
    :cond_4
    instance-of v1, p1, Lcz/msebera/android/httpclient/HttpHost;

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 308
    check-cast p1, Lcz/msebera/android/httpclient/HttpHost;

    .line 309
    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->lcHostname:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/HttpHost;->lcHostname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget v1, p0, Lcz/msebera/android/httpclient/HttpHost;->port:I

    iget v3, p1, Lcz/msebera/android/httpclient/HttpHost;->port:I

    if-ne v1, v3, :cond_35

    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->schemeName:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/HttpHost;->schemeName:Ljava/lang/String;

    .line 311
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->address:Ljava/net/InetAddress;

    iget-object p1, p1, Lcz/msebera/android/httpclient/HttpHost;->address:Ljava/net/InetAddress;

    if-nez v1, :cond_2e

    if-nez p1, :cond_35

    goto :goto_34

    .line 312
    :cond_2e
    invoke-virtual {v1, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    :goto_34
    return v0

    :cond_35
    return v2
.end method

.method public getAddress()Ljava/net/InetAddress;
    .registers 2

    .line 256
    iget-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 236
    iget v0, p0, Lcz/msebera/android/httpclient/HttpHost;->port:I

    return v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->schemeName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x11

    .line 324
    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->lcHostname:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 325
    iget v1, p0, Lcz/msebera/android/httpclient/HttpHost;->port:I

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 326
    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->schemeName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 327
    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->address:Ljava/net/InetAddress;

    if-eqz v1, :cond_1c

    .line 328
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    :cond_1c
    return v0
.end method

.method public toHostString()Ljava/lang/String;
    .registers 3

    .line 283
    iget v0, p0, Lcz/msebera/android/httpclient/HttpHost;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 286
    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget v1, p0, Lcz/msebera/android/httpclient/HttpHost;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 291
    :cond_2a
    iget-object v0, p0, Lcz/msebera/android/httpclient/HttpHost;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 298
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/lang/String;
    .registers 4

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->schemeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v1, p0, Lcz/msebera/android/httpclient/HttpHost;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget v1, p0, Lcz/msebera/android/httpclient/HttpHost;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    const/16 v1, 0x3a

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    iget v1, p0, Lcz/msebera/android/httpclient/HttpHost;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
