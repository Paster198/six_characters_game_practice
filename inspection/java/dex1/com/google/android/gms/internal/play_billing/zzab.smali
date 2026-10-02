.class public abstract Lcom/google/android/gms/internal/play_billing/zzab;
.super Lcom/google/android/gms/internal/play_billing/zzav;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzac;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingDelegateToBackendCallback"

.field static final TRANSACTION_onDelegateToBackendResponse:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.android.vending.billing.IInAppBillingDelegateToBackendCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzav;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zzac;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    const-string v0, "com.android.vending.billing.IInAppBillingDelegateToBackendCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzac;

    if-eqz v1, :cond_11

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzac;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzaa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzaa;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzab;->onDelegateToBackendResponse(Landroid/os/Bundle;)V

    return p3

    :cond_12
    const/4 p1, 0x0

    return p1
.end method
