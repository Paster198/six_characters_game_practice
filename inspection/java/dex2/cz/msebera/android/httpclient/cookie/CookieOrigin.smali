.class public final Lcz/msebera/android/httpclient/cookie/CookieOrigin;
.super Ljava/lang/Object;
.source "CookieOrigin.java"


# instance fields
.field private final host:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final port:I

.field private final secure:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 6

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "Host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 52
    const-string v0, "Port"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    .line 53
    const-string v0, "Path"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->host:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->port:I

    .line 56
    invoke-static {p3}, Lcz/msebera/android/httpclient/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 57
    iput-object p3, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->path:Ljava/lang/String;

    goto :goto_29

    .line 59
    :cond_25
    const-string p1, "/"

    iput-object p1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->path:Ljava/lang/String;

    .line 61
    :goto_29
    iput-boolean p4, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->secure:Z

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 73
    iget v0, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->port:I

    return v0
.end method

.method public isSecure()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->secure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->secure:Z

    if-eqz v1, :cond_10

    .line 85
    const-string v1, "(secure)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_10
    iget-object v1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
