.class public Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;
.super Ljava/lang/Object;
.source "BasicClientCookie.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/SetCookie;
.implements Lcz/msebera/android/httpclient/cookie/ClientCookie;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x35b4469645674e32L


# instance fields
.field private attribs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cookieComment:Ljava/lang/String;

.field private cookieDomain:Ljava/lang/String;

.field private cookieExpiryDate:Ljava/util/Date;

.field private cookiePath:Ljava/lang/String;

.field private cookieVersion:I

.field private creationDate:Ljava/util/Date;

.field private isSecure:Z

.field private final name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->name:Ljava/lang/String;

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;

    .line 62
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 344
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    .line 345
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;

    return-object v0
.end method

.method public containsAttribute(Ljava/lang/String;)Z
    .registers 3

    .line 332
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 327
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookieComment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .registers 2

    .line 311
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookieDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .registers 2

    .line 144
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookiePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[I
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 278
    iget v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookieVersion:I

    return v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .registers 6

    .line 302
    const-string v0, "Date"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/util/Date;

    if-eqz v0, :cond_17

    .line 304
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public isPersistent()Z
    .registers 2

    .line 173
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/util/Date;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isSecure()Z
    .registers 2

    .line 237
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->isSecure:Z

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)Z
    .registers 3

    .line 339
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 322
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->attribs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookieComment:Ljava/lang/String;

    return-void
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->creationDate:Ljava/util/Date;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 199
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookieDomain:Ljava/lang/String;

    return-void

    :cond_b
    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookieDomain:Ljava/lang/String;

    return-void
.end method

.method public setExpiryDate(Ljava/util/Date;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/util/Date;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookiePath:Ljava/lang/String;

    return-void
.end method

.method public setSecure(Z)V
    .registers 2

    .line 254
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->isSecure:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->value:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .registers 2

    .line 291
    iput p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookieVersion:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    iget v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookieVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v1, "][name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v1, "][value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v1, "][domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookieDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v1, "][path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookiePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v1, "][expiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->cookieExpiryDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
