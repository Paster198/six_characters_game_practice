.class public abstract Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;
.super Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;
.source "HttpEntityEnclosingRequestBase.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;


# instance fields
.field private entity:Lcz/msebera/android/httpclient/HttpEntity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 72
    invoke-super {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    .line 73
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    if-eqz v1, :cond_12

    .line 74
    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/CloneUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/HttpEntity;

    iput-object v1, v0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    :cond_12
    return-object v0
.end method

.method public expectContinue()Z
    .registers 3

    .line 65
    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 66
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

    .line 55
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-void
.end method
