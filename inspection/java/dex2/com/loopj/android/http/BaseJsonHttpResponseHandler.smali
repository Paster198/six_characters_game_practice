.class public abstract Lcom/loopj/android/http/BaseJsonHttpResponseHandler;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "BaseJsonHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JSON_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/loopj/android/http/TextHttpResponseHandler;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaseJsonHttpRH"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 12

    if-eqz p3, :cond_25

    .line 112
    new-instance v0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;-><init>(Lcom/loopj/android/http/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;)V

    .line 134
    invoke-virtual {p0}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result p1

    if-nez p1, :cond_21

    invoke-virtual {p0}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->getUsePoolThread()Z

    move-result p1

    if-nez p1, :cond_21

    .line 135
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 138
    :cond_21
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_25
    move v2, p1

    move-object v3, p2

    move-object v4, p4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 141
    invoke-virtual/range {v1 .. v6}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcz/msebera/android/httpclient/Header;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "TJSON_TYPE;)V"
        }
    .end annotation
.end method

.method public final onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_22

    .line 76
    new-instance v0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$1;-><init>(Lcom/loopj/android/http/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lcz/msebera/android/httpclient/Header;)V

    .line 98
    invoke-virtual {p0}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p0}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->getUsePoolThread()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 99
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 102
    :cond_1e
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_22
    const/4 p3, 0x0

    .line 105
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcz/msebera/android/httpclient/Header;",
            "Ljava/lang/String;",
            "TJSON_TYPE;)V"
        }
    .end annotation
.end method

.method protected abstract parseResponse(Ljava/lang/String;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TJSON_TYPE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
