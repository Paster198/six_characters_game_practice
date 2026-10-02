.class public final Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;
.super Lcom/google/android/gms/games/internal/zzg;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/internal/experience/ExperienceEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/games/GameEntity;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Landroid/net/Uri;

.field private final zzg:J

.field private final zzh:J

.field private final zzi:J

.field private final zzj:I

.field private final zzk:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/internal/experience/zza;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/experience/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/games/GameEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJJII)V
    .registers 15

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzb:Lcom/google/android/gms/games/GameEntity;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzf:Landroid/net/Uri;

    iput-wide p7, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzg:J

    iput-wide p9, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzh:J

    iput-wide p11, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzi:J

    iput p13, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzj:I

    iput p14, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzk:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zza()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zza:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzb()Lcom/google/android/gms/games/Game;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzb:Lcom/google/android/gms/games/GameEntity;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzc()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzd()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzd:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getIconImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zze()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzf:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzf()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzg:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzg()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzh:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzh()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzi:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->zzj()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bb

    return v1

    :cond_bb
    return v0

    :cond_bc
    return v1
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzb:Lcom/google/android/gms/games/GameEntity;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzd:Ljava/lang/String;

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getIconImageUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzf:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzg:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzh:J

    .line 2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzi:J

    .line 3
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v9, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzj:I

    .line 4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzk:I

    .line 5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isDataValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "ExperienceId"

    iget-object v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Game"

    iget-object v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzb:Lcom/google/android/gms/games/GameEntity;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "DisplayTitle"

    iget-object v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzc:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "DisplayDescription"

    iget-object v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzd:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IconImageUrl"

    invoke-interface {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEvent;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IconImageUri"

    iget-object v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzf:Landroid/net/Uri;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzg:J

    const-string v3, "CreatedTimestamp"

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzh:J

    const-string v3, "XpEarned"

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzi:J

    const-string v3, "CurrentXp"

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzj:I

    const-string v2, "Type"

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzk:I

    const-string v2, "NewLevel"

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzb:Lcom/google/android/gms/games/GameEntity;

    .line 3
    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzc:Ljava/lang/String;

    .line 4
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzd:Ljava/lang/String;

    .line 5
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzf:Landroid/net/Uri;

    .line 7
    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzg:J

    .line 8
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 p2, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzh:J

    .line 9
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 p2, 0x9

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzi:J

    .line 10
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 p2, 0xa

    iget v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzj:I

    .line 11
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0xb

    iget v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzk:I

    .line 12
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 13
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/games/Game;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzb:Lcom/google/android/gms/games/GameEntity;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzf:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzf()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzg:J

    return-wide v0
.end method

.method public final zzg()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzh:J

    return-wide v0
.end method

.method public final zzh()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzi:J

    return-wide v0
.end method

.method public final zzi()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzj:I

    return v0
.end method

.method public final zzj()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/internal/experience/ExperienceEventEntity;->zzk:I

    return v0
.end method
