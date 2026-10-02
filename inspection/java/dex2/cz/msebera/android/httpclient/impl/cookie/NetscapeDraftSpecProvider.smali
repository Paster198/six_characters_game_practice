.class public Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecProvider;
.super Ljava/lang/Object;
.source "NetscapeDraftSpecProvider.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# instance fields
.field private volatile cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecProvider;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecProvider;->datepatterns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 3

    .line 65
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    if-nez p1, :cond_17

    .line 66
    monitor-enter p0

    .line 67
    :try_start_5
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    if-nez p1, :cond_12

    .line 68
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecProvider;->datepatterns:[Ljava/lang/String;

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    .line 70
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p1

    .line 72
    :cond_17
    :goto_17
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-object p1
.end method
