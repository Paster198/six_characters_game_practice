.class public final Lcom/google/android/gms/internal/games_v2/zzgo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field zza:[Ljava/lang/Object;

.field zzb:I

.field zzc:Lcom/google/android/gms/internal/games_v2/zzgn;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgo;->zza:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/games_v2/zzgo;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzgo;
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzgo;->zzb:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzgo;->zza:[Ljava/lang/Object;

    array-length v2, v1

    add-int/2addr v0, v0

    if-le v0, v2, :cond_14

    .line 2
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/games_v2/zzgh;->zza(II)I

    move-result v0

    .line 3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgo;->zza:[Ljava/lang/Object;

    .line 4
    :cond_14
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games_v2/zzge;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgo;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/games_v2/zzgo;->zzb:I

    add-int v2, v1, v1

    .line 5
    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 6
    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/games_v2/zzgo;->zzb:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/games_v2/zzgp;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgo;->zzc:Lcom/google/android/gms/internal/games_v2/zzgn;

    if-nez v0, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzgo;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzgo;->zza:[Ljava/lang/Object;

    .line 2
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/games_v2/zzgx;->zzd(I[Ljava/lang/Object;Lcom/google/android/gms/internal/games_v2/zzgo;)Lcom/google/android/gms/internal/games_v2/zzgx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzgo;->zzc:Lcom/google/android/gms/internal/games_v2/zzgn;

    if-nez v1, :cond_11

    return-object v0

    .line 3
    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/games_v2/zzgn;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgn;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method
