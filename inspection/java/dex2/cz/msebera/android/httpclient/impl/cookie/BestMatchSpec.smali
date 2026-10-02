.class public Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;
.super Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;
.source "BestMatchSpec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;-><init>([Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 54
    const-string v0, "best-match"

    return-object v0
.end method
