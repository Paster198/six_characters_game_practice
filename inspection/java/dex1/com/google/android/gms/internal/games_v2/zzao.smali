.class final synthetic Lcom/google/android/gms/internal/games_v2/zzao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzav;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzap;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzao;->zza:Lcom/google/android/gms/internal/games_v2/zzap;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzao;->zza:Lcom/google/android/gms/internal/games_v2/zzap;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzap;->zza(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
