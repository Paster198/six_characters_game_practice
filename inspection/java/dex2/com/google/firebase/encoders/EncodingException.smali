.class public final Lcom/google/firebase/encoders/EncodingException;
.super Ljava/lang/RuntimeException;
.source "EncodingException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
