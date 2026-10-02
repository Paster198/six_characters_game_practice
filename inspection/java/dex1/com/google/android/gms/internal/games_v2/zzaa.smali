.class final Lcom/google/android/gms/internal/games_v2/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games_v2/zzab;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzaa;->zza:Lcom/google/android/gms/internal/games_v2/zzab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzaa;->zza:Lcom/google/android/gms/internal/games_v2/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzab;->zzd()V

    return-void
.end method
