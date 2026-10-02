.class public final Lcom/google/android/gms/internal/games_v2/zzaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/games_v2/zzaw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/games_v2/zzaw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzaq;->zza:Lcom/google/android/gms/internal/games_v2/zzaw;

    return-void
.end method

.method public static zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaq;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-static {p0}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaw;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/games_v2/zzaq;-><init>(Lcom/google/android/gms/internal/games_v2/zzaw;)V

    return-object v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzao;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzao;-><init>(Lcom/google/android/gms/internal/games_v2/zzap;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzaq;->zza:Lcom/google/android/gms/internal/games_v2/zzaw;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaw;->zza(Lcom/google/android/gms/internal/games_v2/zzav;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
