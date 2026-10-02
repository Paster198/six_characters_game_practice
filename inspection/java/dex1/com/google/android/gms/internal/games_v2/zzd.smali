.class final Lcom/google/android/gms/internal/games_v2/zzd;
.super Lcom/google/android/gms/internal/games_v2/zze;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zze;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/games/zzi;

    .line 2
    new-instance p1, Lcom/google/android/gms/common/api/Scope;

    const-string v0, "https://www.googleapis.com/auth/games"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/games_v2/zzgm;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object p1

    return-object p1
.end method
