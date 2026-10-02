.class public Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;
.super Ljava/io/InterruptedIOException;
.source "RequestAbortedException.java"


# static fields
.field private static final serialVersionUID:J = 0x4506aa3106436180L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_8

    .line 51
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_8
    return-void
.end method
