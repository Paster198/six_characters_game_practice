.class public final Lcom/google/android/gms/games/internal/player/zze;
.super Lcom/google/android/gms/games/internal/zzg;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/internal/player/zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Z

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:Z

.field private final zze:Z

.field private final zzf:Z

.field private final zzg:Z

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/internal/player/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/player/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/player/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZZZZZZZZZ)V
    .registers 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzg;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/player/zze;->zza:Z

    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/player/zze;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/player/zze;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/player/zze;->zzd:Z

    iput-boolean p5, p0, Lcom/google/android/gms/games/internal/player/zze;->zze:Z

    iput-boolean p6, p0, Lcom/google/android/gms/games/internal/player/zze;->zzf:Z

    iput-boolean p7, p0, Lcom/google/android/gms/games/internal/player/zze;->zzg:Z

    iput-boolean p8, p0, Lcom/google/android/gms/games/internal/player/zze;->zzh:Z

    iput-boolean p9, p0, Lcom/google/android/gms/games/internal/player/zze;->zzi:Z

    iput-boolean p10, p0, Lcom/google/android/gms/games/internal/player/zze;->zzj:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/games/internal/player/zze;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/games/internal/player/zze;

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/player/zze;->zza:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/internal/player/zze;->zza:Z

    if-ne v2, v3, :cond_49

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/player/zze;->zzb:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/internal/player/zze;->zzb:Z

    if-ne v2, v3, :cond_49

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/player/zze;->zzc:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/internal/player/zze;->zzc:Z

    if-ne v2, v3, :cond_49

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/player/zze;->zzd:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/internal/player/zze;->zzd:Z

    if-ne v2, v3, :cond_49

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/player/zze;->zze:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/internal/player/zze;->zze:Z

    if-ne v2, v3, :cond_49

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/player/zze;->zzf:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/internal/player/zze;->zzf:Z

    if-ne v2, v3, :cond_49

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/player/zze;->zzg:Z

    .line 2
    iget-boolean v3, p1, Lcom/google/android/gms/games/internal/player/zze;->zzg:Z

    if-ne v2, v3, :cond_49

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/player/zze;->zzh:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/internal/player/zze;->zzh:Z

    if-ne v2, v3, :cond_49

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/player/zze;->zzi:Z

    iget-boolean v3, p1, Lcom/google/android/gms/games/internal/player/zze;->zzi:Z

    if-ne v2, v3, :cond_49

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/player/zze;->zzj:Z

    iget-boolean p1, p1, Lcom/google/android/gms/games/internal/player/zze;->zzj:Z

    if-ne v2, p1, :cond_49

    return v0

    :cond_49
    return v1
.end method

.method public final hashCode()I
    .registers 12

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/player/zze;->zza:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/player/zze;->zzb:Z

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/player/zze;->zzc:Z

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/player/zze;->zzd:Z

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/player/zze;->zze:Z

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/player/zze;->zzf:Z

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/player/zze;->zzg:Z

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/player/zze;->zzh:Z

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/player/zze;->zzi:Z

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/player/zze;->zzj:Z

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zza:Z

    const-string v2, "forbiddenToHavePlayerProfile"

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzb:Z

    const-string v2, "requiresParentPermissionToShareData"

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzc:Z

    const-string v2, "hasSettingsControlledByParent"

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzd:Z

    const-string v2, "requiresParentPermissionToUsePlayTogether"

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zze:Z

    const-string v2, "canUseOnlyAutoGeneratedGamerTag"

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzf:Z

    const-string v2, "forbiddenToRecordVideo"

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzg:Z

    const-string v2, "shouldSeeEquallyWeightedButtonsInConsents"

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzh:Z

    const-string v2, "requiresParentConsentToUseAutoSignIn"

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzi:Z

    const-string v2, "shouldSeeSimplifiedConsentMessages"

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzj:Z

    const-string v2, "forbiddenToUseProfilelessRecall"

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    iget-boolean p2, p0, Lcom/google/android/gms/games/internal/player/zze;->zza:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x2

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzb:Z

    .line 3
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzc:Z

    .line 4
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzd:Z

    .line 5
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x5

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zze:Z

    .line 6
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzf:Z

    .line 7
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x7

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzg:Z

    .line 8
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x8

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzh:Z

    .line 9
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x9

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzi:Z

    .line 10
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/player/zze;->zzj:Z

    .line 11
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 12
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
