.class final Lcom/google/android/gms/internal/play_billing/zzbp;
.super Lcom/google/android/gms/internal/play_billing/zzbq;
.source "com.android.billingclient:billing@@9.1.0"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzbq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()J
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
