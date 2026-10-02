.class public Lcom/google/android/gms/internal/play_billing/zzhb;
.super Ljava/io/IOException;
.source "com.android.billingclient:billing@@9.1.0"


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
