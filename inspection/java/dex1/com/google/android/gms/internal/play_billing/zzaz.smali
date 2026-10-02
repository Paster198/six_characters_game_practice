.class public abstract Lcom/google/android/gms/internal/play_billing/zzaz;
.super Lcom/google/android/gms/internal/play_billing/zzav;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzba;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zzba;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    const-string v0, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz v1, :cond_11

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzba;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzay;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzay;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
