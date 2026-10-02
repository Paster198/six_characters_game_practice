.class public Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;
.super Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
.source "CookieRestrictionViolationException.java"


# static fields
.field private static final serialVersionUID:J = 0x664be3b3ef7da655L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    return-void
.end method
