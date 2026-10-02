.class Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;
.super Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
.source "HttpRequestWrapper.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HttpEntityEnclosingRequestWrapper"
.end annotation


# instance fields
.field private entity:Lcz/msebera/android/httpclient/HttpEntity;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;Lcz/msebera/android/httpclient/HttpHost;)V
    .registers 4

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper$1;)V

    .line 146
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-void
.end method


# virtual methods
.method public expectContinue()Z
    .registers 3

    .line 161
    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 162
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

    .line 151
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-void
.end method
