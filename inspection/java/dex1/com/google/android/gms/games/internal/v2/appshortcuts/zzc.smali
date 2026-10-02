.class final synthetic Lcom/google/android/gms/games/internal/v2/appshortcuts/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzgm;

.field private final synthetic zzb:Lcom/google/android/gms/internal/games_v2/zzgm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzgm;Lcom/google/android/gms/internal/games_v2/zzgm;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzc;->zza:Lcom/google/android/gms/internal/games_v2/zzgm;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzc;->zzb:Lcom/google/android/gms/internal/games_v2/zzgm;

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzc;->zza:Lcom/google/android/gms/internal/games_v2/zzgm;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzc;->zzb:Lcom/google/android/gms/internal/games_v2/zzgm;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zzc(Lcom/google/android/gms/internal/games_v2/zzgm;Lcom/google/android/gms/internal/games_v2/zzgm;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;

    move-result-object p1

    return-object p1
.end method
