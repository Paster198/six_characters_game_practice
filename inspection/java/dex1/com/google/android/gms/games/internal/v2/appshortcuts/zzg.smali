.class public final Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/util/List;

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzd:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zza:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 p2, 0x2

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzb:Ljava/util/List;

    .line 3
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 p2, 0x3

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzc:Ljava/util/List;

    .line 4
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 p2, 0x4

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzd:Ljava/util/List;

    .line 5
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zza:Ljava/util/List;

    return-object v0
.end method

.method public final zzb()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzb:Ljava/util/List;

    return-object v0
.end method

.method public final zzc()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzc:Ljava/util/List;

    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzd:Ljava/util/List;

    return-object v0
.end method
