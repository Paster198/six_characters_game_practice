.class public Lcz/msebera/android/httpclient/cookie/CookiePathComparator;
.super Ljava/lang/Object;
.source "CookiePathComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lcz/msebera/android/httpclient/cookie/Cookie;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/cookie/CookiePathComparator;

.field private static final serialVersionUID:J = 0x68695b9a07ff953aL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookiePathComparator;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/cookie/CookiePathComparator;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/cookie/CookiePathComparator;->INSTANCE:Lcz/msebera/android/httpclient/cookie/CookiePathComparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private normalizePath(Lcz/msebera/android/httpclient/cookie/Cookie;)Ljava/lang/String;
    .registers 3

    .line 58
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 59
    const-string v0, "/"

    if-nez p1, :cond_9

    move-object p1, v0

    .line 62
    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_22
    return-object p1
.end method


# virtual methods
.method public compare(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/Cookie;)I
    .registers 5

    .line 70
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/cookie/CookiePathComparator;->normalizePath(Lcz/msebera/android/httpclient/cookie/Cookie;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/cookie/CookiePathComparator;->normalizePath(Lcz/msebera/android/httpclient/cookie/Cookie;)Ljava/lang/String;

    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    return v1

    .line 74
    :cond_10
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p1, -0x1

    return p1

    .line 76
    :cond_18
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 50
    check-cast p1, Lcz/msebera/android/httpclient/cookie/Cookie;

    check-cast p2, Lcz/msebera/android/httpclient/cookie/Cookie;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookiePathComparator;->compare(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/Cookie;)I

    move-result p1

    return p1
.end method
