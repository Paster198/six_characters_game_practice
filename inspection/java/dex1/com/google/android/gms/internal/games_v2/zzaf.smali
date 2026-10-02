.class public final Lcom/google/android/gms/internal/games_v2/zzaf;
.super Lcom/google/android/gms/games/internal/zzg;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/games_v2/zzaf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Landroid/os/Bundle;

.field private final zzb:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzaf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;Landroid/os/IBinder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzaf;->zza:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzaf;->zzb:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/games_v2/zzae;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzg;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/games_v2/zzae;->zza()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzaf;->zza:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/google/android/gms/internal/games_v2/zzae;->zza:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzaf;->zzb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzaf;->zza:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 p2, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzaf;->zzb:Landroid/os/IBinder;

    .line 3
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
