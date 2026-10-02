.class public Lcz/msebera/android/httpclient/auth/NTUserPrincipal;
.super Ljava/lang/Object;
.source "NTUserPrincipal.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5f57bf080fe6c66eL


# instance fields
.field private final domain:Ljava/lang/String;

.field private final ntname:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "User name"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    iput-object p2, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->username:Ljava/lang/String;

    if-eqz p1, :cond_15

    .line 58
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    goto :goto_18

    :cond_15
    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    .line 62
    :goto_18
    iget-object p1, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3b

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5c

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    return-void

    .line 69
    :cond_3b
    iput-object p2, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 99
    :cond_4
    instance-of v1, p1, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    if-eqz v1, :cond_1f

    .line 100
    check-cast p1, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;

    .line 101
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->username:Ljava/lang/String;

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    iget-object p1, p1, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    .line 102
    invoke-static {v1, p1}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v0

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x11

    .line 89
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 90
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    return-object v0
.end method
