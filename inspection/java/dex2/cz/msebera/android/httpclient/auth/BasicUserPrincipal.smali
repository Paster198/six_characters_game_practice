.class public final Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;
.super Ljava/lang/Object;
.source "BasicUserPrincipal.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1f73888eeec0fe63L


# instance fields
.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "User name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 71
    :cond_4
    instance-of v1, p1, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    if-eqz v1, :cond_15

    .line 72
    check-cast p1, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;

    .line 73
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    iget-object p1, p1, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v1, p1}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    return v0

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x11

    .line 62
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[principal: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
