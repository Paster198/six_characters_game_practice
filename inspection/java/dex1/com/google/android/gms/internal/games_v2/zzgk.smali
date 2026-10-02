.class final Lcom/google/android/gms/internal/games_v2/zzgk;
.super Lcom/google/android/gms/internal/games_v2/zzgd;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/games_v2/zzgm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games_v2/zzgm;I)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/games_v2/zzgm;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/games_v2/zzgd;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzgk;->zza:Lcom/google/android/gms/internal/games_v2/zzgm;

    return-void
.end method


# virtual methods
.method final zza(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgk;->zza:Lcom/google/android/gms/internal/games_v2/zzgm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzgm;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
