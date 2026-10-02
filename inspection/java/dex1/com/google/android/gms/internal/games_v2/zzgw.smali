.class final Lcom/google/android/gms/internal/games_v2/zzgw;
.super Lcom/google/android/gms/internal/games_v2/zzgm;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private final transient zza:[Ljava/lang/Object;

.field private final transient zzb:I

.field private final transient zzc:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzgm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zza:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zzc:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/games_v2/zzfz;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zza:[Ljava/lang/Object;

    add-int/2addr p1, p1

    iget v1, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zzb:I

    add-int/2addr p1, v1

    .line 2
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/games_v2/zzgw;->zzc:I

    return v0
.end method
