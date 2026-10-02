.class public Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;
.super Lcz/msebera/android/httpclient/message/BasicHttpRequest;
.source "BasicHttpEntityEnclosingRequest.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;


# instance fields
.field private entity:Lcz/msebera/android/httpclient/HttpEntity;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/RequestLine;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Lcz/msebera/android/httpclient/RequestLine;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    return-void
.end method


# virtual methods
.method public expectContinue()Z
    .registers 3

    .line 74
    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 75
    const-string v1, "100-continue"

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public getEntity()Lcz/msebera/android/httpclient/HttpEntity;
    .registers 2

    .line 64
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-void
.end method
