.class public abstract Lcom/google/android/gms/games/internal/zzak;
.super Lcom/google/android/gms/internal/games_v2/zzb;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/internal/zzal;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.games.internal.IGamesClient"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_15

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzak;->zzb()Lcom/google/android/gms/internal/games_v2/zzaf;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2
    sget p2, Lcom/google/android/gms/internal/games_v2/zzc;->zza:I

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-interface {p1, p3, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return p2

    :cond_15
    const/4 p1, 0x0

    return p1
.end method
