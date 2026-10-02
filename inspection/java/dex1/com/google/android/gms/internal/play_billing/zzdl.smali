.class final Lcom/google/android/gms/internal/play_billing/zzdl;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# direct methods
.method static zza(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_c

    instance-of v0, p0, Ljava/lang/StackOverflowError;

    if-eqz v0, :cond_9

    goto :goto_c

    .line 2
    :cond_9
    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_c
    :goto_c
    return-void
.end method
