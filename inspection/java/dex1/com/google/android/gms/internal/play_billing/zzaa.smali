.class public final Lcom/google/android/gms/internal/play_billing/zzaa;
.super Lcom/google/android/gms/internal/play_billing/zzau;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzac;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 1
    const-string v0, "com.android.vending.billing.IInAppBillingDelegateToBackendCallback"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzau;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onDelegateToBackendResponse(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
