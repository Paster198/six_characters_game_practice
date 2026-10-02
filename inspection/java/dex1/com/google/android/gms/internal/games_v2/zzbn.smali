.class final synthetic Lcom/google/android/gms/internal/games_v2/zzbn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzbq;

.field private final synthetic zzb:Lcom/google/android/gms/internal/games_v2/zzbc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzbq;Lcom/google/android/gms/internal/games_v2/zzbc;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbn;->zza:Lcom/google/android/gms/internal/games_v2/zzbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbn;->zzb:Lcom/google/android/gms/internal/games_v2/zzbc;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbn;->zza:Lcom/google/android/gms/internal/games_v2/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbn;->zzb:Lcom/google/android/gms/internal/games_v2/zzbc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzf(Lcom/google/android/gms/internal/games_v2/zzbc;)V

    return-void
.end method
