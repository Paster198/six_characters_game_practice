.class public final Lcom/google/android/gms/games/PlayerLevelInfo;
.super Lcom/google/android/gms/games/internal/zzg;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/PlayerLevelInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:J

.field private final zzb:J

.field private final zzc:Lcom/google/android/gms/games/PlayerLevel;

.field private final zzd:Lcom/google/android/gms/games/PlayerLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/PlayerLevelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzg;-><init>()V

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2
    :goto_c
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 3
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide p1, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzb:J

    iput-object p5, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzc:Lcom/google/android/gms/games/PlayerLevel;

    iput-object p6, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzd:Lcom/google/android/gms/games/PlayerLevel;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/games/PlayerLevelInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/games/PlayerLevelInfo;

    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zza:J

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->zza:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-wide v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzb:J

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->zzb:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzc:Lcom/google/android/gms/games/PlayerLevel;

    iget-object v3, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->zzc:Lcom/google/android/gms/games/PlayerLevel;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzd:Lcom/google/android/gms/games/PlayerLevel;

    iget-object p1, p1, Lcom/google/android/gms/games/PlayerLevelInfo;->zzd:Lcom/google/android/gms/games/PlayerLevel;

    .line 5
    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    return v0

    :cond_45
    return v1
.end method

.method public getCurrentLevel()Lcom/google/android/gms/games/PlayerLevel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzc:Lcom/google/android/gms/games/PlayerLevel;

    return-object v0
.end method

.method public getCurrentXpTotal()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zza:J

    return-wide v0
.end method

.method public getLastLevelUpTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzb:J

    return-wide v0
.end method

.method public getNextLevel()Lcom/google/android/gms/games/PlayerLevel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzd:Lcom/google/android/gms/games/PlayerLevel;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzc:Lcom/google/android/gms/games/PlayerLevel;

    iget-object v3, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzd:Lcom/google/android/gms/games/PlayerLevel;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMaxLevel()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzc:Lcom/google/android/gms/games/PlayerLevel;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerLevelInfo;->zzd:Lcom/google/android/gms/games/PlayerLevel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/PlayerLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevelInfo;->getCurrentXpTotal()J

    move-result-wide v2

    .line 2
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevelInfo;->getLastLevelUpTimestamp()J

    move-result-wide v2

    .line 3
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevelInfo;->getCurrentLevel()Lcom/google/android/gms/games/PlayerLevel;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerLevelInfo;->getNextLevel()Lcom/google/android/gms/games/PlayerLevel;

    move-result-object v2

    .line 5
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
