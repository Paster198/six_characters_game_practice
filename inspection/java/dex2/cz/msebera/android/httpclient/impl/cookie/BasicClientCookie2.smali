.class public Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;
.super Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;
.source "BasicClientCookie2.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/SetCookie2;


# static fields
.field private static final serialVersionUID:J = -0x6b7a571e07b044e1L


# instance fields
.field private commentURL:Ljava/lang/String;

.field private discard:Z

.field private ports:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 96
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;

    .line 97
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->ports:[I

    if-eqz v1, :cond_12

    .line 98
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->ports:[I

    :cond_12
    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[I
    .registers 2

    .line 61
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->ports:[I

    return-object v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .registers 3

    .line 91
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->discard:Z

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->isExpired(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    return p1

    :cond_d
    :goto_d
    const/4 p1, 0x1

    return p1
.end method

.method public isPersistent()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->discard:Z

    if-nez v0, :cond_c

    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->commentURL:Ljava/lang/String;

    return-void
.end method

.method public setDiscard(Z)V
    .registers 2

    .line 81
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->discard:Z

    return-void
.end method

.method public setPorts([I)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->ports:[I

    return-void
.end method
