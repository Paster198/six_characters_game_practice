.class final synthetic Lcom/google/android/gms/internal/games_v2/zzbh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzhd;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzbq;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzbq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbh;->zza:Lcom/google/android/gms/internal/games_v2/zzbq;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbh;->zza:Lcom/google/android/gms/internal/games_v2/zzbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzj()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
