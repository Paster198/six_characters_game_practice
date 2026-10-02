.class final Lcom/google/android/gms/games/internal/zzm;
.super Lcom/google/android/gms/games/internal/zzae;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzae;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method


# virtual methods
.method public final zzj()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/games/zzj;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzae;->zzt(Ljava/lang/Object;)V

    return-void
.end method
