.class final Lcom/google/android/gms/games/multiplayer/realtime/zzc;
.super Lcom/google/android/gms/games/multiplayer/realtime/zzd;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/realtime/zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zza(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->zza()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->zzb(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-class v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->zzc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1d

    .line 4
    :cond_17
    new-instance p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;-><init>()V

    return-object p1

    .line 4
    :cond_1d
    :goto_1d
    invoke-super {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zza(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    move-result-object p1

    return-object p1
.end method
