.class public final Lcom/google/android/gms/internal/games_v2/zzae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field public zza:Landroid/os/IBinder;

.field public final zzb:I

.field public zzc:I

.field public zzd:I

.field public zze:I

.field public zzf:I

.field public zzg:I


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzae;->zzc:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzae;->zzd:I

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzae;->zze:I

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzae;->zzf:I

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzae;->zzg:I

    iput p1, p0, Lcom/google/android/gms/internal/games_v2/zzae;->zzb:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzae;->zza:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/os/Bundle;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "popupLocationInfo.gravity"

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzae;->zzb:I

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.displayId"

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzae;->zzc:I

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.left"

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzae;->zzd:I

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.top"

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzae;->zze:I

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.right"

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzae;->zzf:I

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "popupLocationInfo.bottom"

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzae;->zzg:I

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
