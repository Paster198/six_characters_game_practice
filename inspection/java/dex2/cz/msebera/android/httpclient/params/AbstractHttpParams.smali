.class public abstract Lcz/msebera/android/httpclient/params/AbstractHttpParams;
.super Ljava/lang/Object;
.source "AbstractHttpParams.java"

# interfaces
.implements Lcz/msebera/android/httpclient/params/HttpParams;
.implements Lcz/msebera/android/httpclient/params/HttpParamsNames;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBooleanParameter(Ljava/lang/String;Z)Z
    .registers 3

    .line 99
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    return p2

    .line 103
    :cond_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getDoubleParameter(Ljava/lang/String;D)D
    .registers 4

    .line 84
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    return-wide p2

    .line 88
    :cond_7
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method public getIntParameter(Ljava/lang/String;I)I
    .registers 3

    .line 69
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    return p2

    .line 73
    :cond_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getLongParameter(Ljava/lang/String;J)J
    .registers 4

    .line 54
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    return-wide p2

    .line 58
    :cond_7
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isParameterFalse(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isParameterTrue(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 3

    if-eqz p2, :cond_5

    .line 108
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_5
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    return-object p0
.end method

.method public setDoubleParameter(Ljava/lang/String;D)Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 4

    .line 93
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    return-object p0
.end method

.method public setIntParameter(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 3

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    return-object p0
.end method

.method public setLongParameter(Ljava/lang/String;J)Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 4

    .line 63
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    return-object p0
.end method
