.class public Lcz/msebera/android/httpclient/impl/client/NullBackoffStrategy;
.super Ljava/lang/Object;
.source "NullBackoffStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldBackoff(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public shouldBackoff(Ljava/lang/Throwable;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
