.class public final Lcom/google/android/play/core/review/internal/zzu;
.super Ljava/lang/RuntimeException;
.source "com.google.android.play:review@@2.0.1"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "Failed to bind to the service."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
