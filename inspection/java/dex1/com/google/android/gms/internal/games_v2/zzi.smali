.class public final Lcom/google/android/gms/internal/games_v2/zzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# instance fields
.field public final zza:I

.field public final zzb:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(ILjava/lang/String;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/games_v2/zzi;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzi;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/games_v2/zzh;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzh;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 1
    :cond_8
    instance-of v2, p1, Lcom/google/android/gms/internal/games_v2/zzi;

    if-nez v2, :cond_d

    return v0

    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzi;

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzi;->zza:I

    iget v3, p1, Lcom/google/android/gms/internal/games_v2/zzi;->zza:I

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzi;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/games_v2/zzi;->zzb:Ljava/lang/String;

    .line 2
    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    return v1

    :cond_20
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzi;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzi;->zzb:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
