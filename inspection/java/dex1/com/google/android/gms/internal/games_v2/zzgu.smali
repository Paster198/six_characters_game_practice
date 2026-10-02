.class final Lcom/google/android/gms/internal/games_v2/zzgu;
.super Lcom/google/android/gms/internal/games_v2/zzgq;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/games_v2/zzgp;

.field private final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games_v2/zzgp;[Ljava/lang/Object;II)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzgq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzgu;->zza:Lcom/google/android/gms/internal/games_v2/zzgp;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzgu;->zzb:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/games_v2/zzgu;->zzc:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzgu;->zza:Lcom/google/android/gms/internal/games_v2/zzgp;

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/games_v2/zzgp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    return p1

    :cond_1f
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzgq;->zzf()Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgm;->zzk(I)Lcom/google/android/gms/internal/games_v2/zzha;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzgu;->zzc:I

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/games_v2/zzgz;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzgq;->zzf()Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgm;->zzk(I)Lcom/google/android/gms/internal/games_v2/zzha;

    move-result-object v0

    return-object v0
.end method

.method final zze([Ljava/lang/Object;I)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzgq;->zzf()Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/games_v2/zzgi;->zze([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method final zzg()Lcom/google/android/gms/internal/games_v2/zzgm;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/games_v2/zzgt;-><init>(Lcom/google/android/gms/internal/games_v2/zzgu;)V

    return-object v0
.end method

.method final synthetic zzh()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgu;->zzb:[Ljava/lang/Object;

    return-object v0
.end method

.method final synthetic zzi()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzgu;->zzc:I

    return v0
.end method
