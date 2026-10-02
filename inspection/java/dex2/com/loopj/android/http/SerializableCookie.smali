.class public Lcom/loopj/android/http/SerializableCookie;
.super Ljava/lang/Object;
.source "SerializableCookie.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x58765a8013aeb70cL


# instance fields
.field private transient clientCookie:Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

.field private final transient cookie:Lcz/msebera/android/httpclient/cookie/Cookie;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/cookie/Cookie;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lcz/msebera/android/httpclient/cookie/Cookie;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-direct {v2, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    .line 67
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setComment(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 70
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setVersion(I)V

    .line 72
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setSecure(Z)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lcz/msebera/android/httpclient/cookie/Cookie;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lcz/msebera/android/httpclient/cookie/Cookie;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lcz/msebera/android/httpclient/cookie/Cookie;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lcz/msebera/android/httpclient/cookie/Cookie;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lcz/msebera/android/httpclient/cookie/Cookie;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lcz/msebera/android/httpclient/cookie/Cookie;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lcz/msebera/android/httpclient/cookie/Cookie;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lcz/msebera/android/httpclient/cookie/Cookie;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->isSecure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method


# virtual methods
.method public getCookie()Lcz/msebera/android/httpclient/cookie/Cookie;
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 46
    iget-object v1, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    return-object v0
.end method
