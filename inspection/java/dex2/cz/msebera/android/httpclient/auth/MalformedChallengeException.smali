.class public Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
.super Lcz/msebera/android/httpclient/ProtocolException;
.source "MalformedChallengeException.java"


# static fields
.field private static final serialVersionUID:J = 0xb4dfe7ec18440fcL


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

    .line 68
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
