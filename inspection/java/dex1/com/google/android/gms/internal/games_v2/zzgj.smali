.class public final Lcom/google/android/gms/internal/games_v2/zzgj;
.super Lcom/google/android/gms/internal/games_v2/zzgg;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzgg;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzgj;
    .registers 5

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgg;->zza:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/games_v2/zzgg;->zzb:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgg;->zza(II)I

    move-result v1

    if-gt v1, v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/games_v2/zzgg;->zzc:Z

    if-eqz v0, :cond_1f

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgg;->zza:[Ljava/lang/Object;

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgg;->zza:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/games_v2/zzgg;->zzc:Z

    .line 4
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgg;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/games_v2/zzgg;->zzb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/games_v2/zzgg;->zzb:I

    .line 3
    aput-object p1, v0, v1

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/games_v2/zzgm;
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/games_v2/zzgj;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgj;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/games_v2/zzgj;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgm;->zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object v0

    return-object v0
.end method
