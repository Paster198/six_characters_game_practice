.class public Lcz/msebera/android/httpclient/auth/InvalidCredentialsException;
.super Lcz/msebera/android/httpclient/auth/AuthenticationException;
.source "InvalidCredentialsException.java"


# static fields
.field private static final serialVersionUID:J = -0x4315d4e060e4b928L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 67
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
