.class final Lcom/google/android/gms/internal/games_v2/zzgl;
.super Lcom/google/android/gms/internal/games_v2/zzgm;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/games_v2/zzgm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games_v2/zzgm;II)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zzc:Lcom/google/android/gms/internal/games_v2/zzgm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzgm;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/games_v2/zzfz;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zzc:Lcom/google/android/gms/internal/games_v2/zzgm;

    iget v1, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zza:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzgm;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzgm;->zzf(II)Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object p1

    return-object p1
.end method

.method final zzb()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zzc:Lcom/google/android/gms/internal/games_v2/zzgm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgi;->zzb()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzc()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zzc:Lcom/google/android/gms/internal/games_v2/zzgm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgi;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzd()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zzc:Lcom/google/android/gms/internal/games_v2/zzgm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgi;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/games_v2/zzgm;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/games_v2/zzfz;->zzc(III)V

    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzgl;->zzc:Lcom/google/android/gms/internal/games_v2/zzgm;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzgm;->zzf(II)Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object p1

    return-object p1
.end method
