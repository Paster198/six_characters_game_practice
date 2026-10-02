.class final synthetic Lcom/google/android/gms/internal/games_v2/zzbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzbc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzbc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbb;->zza:Lcom/google/android/gms/internal/games_v2/zzbc;

    return-void
.end method


# virtual methods
.method public final synthetic onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbb;->zza:Lcom/google/android/gms/internal/games_v2/zzbc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzbc;->zzc(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
