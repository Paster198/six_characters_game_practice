.class public final Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Landroid/os/PersistableBundle;

.field private final zzc:Ljava/lang/Boolean;

.field private final zzd:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;->zzb:Landroid/os/PersistableBundle;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;->zzc:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;->zzd:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;->zzb:Landroid/os/PersistableBundle;

    .line 3
    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;->zzc:Ljava/lang/Boolean;

    .line 4
    invoke-static {p1, p2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    const/4 p2, 0x4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;->zzd:Ljava/lang/Boolean;

    .line 5
    invoke-static {p1, p2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    .line 6
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;->zza:Ljava/lang/String;

    return-object v0
.end method
