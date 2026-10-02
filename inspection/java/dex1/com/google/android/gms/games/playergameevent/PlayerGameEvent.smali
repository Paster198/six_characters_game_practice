.class public final Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;
.super Lcom/google/android/gms/games/internal/zzg;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/playergameevent/PlayerGameEvent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:J

.field private final zzb:Ljava/lang/String;

.field private final zzc:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/playergameevent/zza;

    invoke-direct {v0}, Lcom/google/android/gms/games/playergameevent/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JLjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzg;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->zzb:Ljava/lang/String;

    if-nez p4, :cond_e

    new-instance p4, Landroid/os/Bundle;

    .line 2
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_e
    iput-object p4, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->zzc:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getEventProperties()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->zzc:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->zza:J

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;->getEventProperties()Landroid/os/Bundle;

    move-result-object v1

    .line 4
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
