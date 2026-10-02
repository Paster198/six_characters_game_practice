.class public abstract Lcom/google/android/gms/internal/play_billing/zzan;
.super Lcom/google/android/gms/internal/play_billing/zzav;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzao;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.android.vending.billing.IInAppBillingIsExternalPaymentAvailableCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzav;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_12

    .line 1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzaw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzav;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzan;->zza(Landroid/os/Bundle;)V

    return p3

    :cond_12
    const/4 p1, 0x0

    return p1
.end method
