.class final Lcom/google/android/gms/internal/games_v2/zzgv;
.super Lcom/google/android/gms/internal/games_v2/zzgq;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/games_v2/zzgp;

.field private final transient zzb:Lcom/google/android/gms/internal/games_v2/zzgm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games_v2/zzgp;Lcom/google/android/gms/internal/games_v2/zzgm;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzgq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzgv;->zza:Lcom/google/android/gms/internal/games_v2/zzgp;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzgv;->zzb:Lcom/google/android/gms/internal/games_v2/zzgm;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgv;->zza:Lcom/google/android/gms/internal/games_v2/zzgp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzgp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgv;->zzb:Lcom/google/android/gms/internal/games_v2/zzgm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgm;->zzk(I)Lcom/google/android/gms/internal/games_v2/zzha;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgv;->zza:Lcom/google/android/gms/internal/games_v2/zzgp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgp;->size()I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/games_v2/zzgz;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgv;->zzb:Lcom/google/android/gms/internal/games_v2/zzgm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgm;->zzk(I)Lcom/google/android/gms/internal/games_v2/zzha;

    move-result-object v0

    return-object v0
.end method

.method final zze([Ljava/lang/Object;I)I
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzgv;->zzb:Lcom/google/android/gms/internal/games_v2/zzgm;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/games_v2/zzgi;->zze([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
