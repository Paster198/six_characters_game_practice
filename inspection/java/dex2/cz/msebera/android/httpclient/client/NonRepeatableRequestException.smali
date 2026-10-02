.class public Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;
.super Lcz/msebera/android/httpclient/ProtocolException;
.source "NonRepeatableRequestException.java"


# static fields
.field private static final serialVersionUID:J = 0x125c1cf89b2bea0L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 67
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
