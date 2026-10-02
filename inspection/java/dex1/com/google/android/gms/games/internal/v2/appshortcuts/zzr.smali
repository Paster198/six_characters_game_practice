.class public final Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:J

.field private final zzb:Ljava/lang/String;

.field private final zzc:I

.field private final zzd:Landroid/content/ComponentName;

.field private final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JLjava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zzb:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zzc:I

    iput-object p5, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zzd:Landroid/content/ComponentName;

    iput-object p6, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zza:J

    .line 2
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zzb:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zzc:I

    .line 4
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zzd:Landroid/content/ComponentName;

    .line 5
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x5

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zze:Ljava/lang/String;

    .line 6
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zzc:I

    return v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zze:Ljava/lang/String;

    return-object v0
.end method
