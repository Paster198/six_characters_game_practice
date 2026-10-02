.class public final Lcom/google/android/gms/internal/games_v2/zzas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/games_v2/zzar;

.field private final zzc:Lcom/google/android/gms/internal/games_v2/zzaw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzas;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/games_v2/zzaw;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/games_v2/zzar;-><init>(Lcom/google/android/gms/internal/games_v2/zzas;Landroid/app/Application;[B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzas;->zzb:Lcom/google/android/gms/internal/games_v2/zzar;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzas;->zzc:Lcom/google/android/gms/internal/games_v2/zzaw;

    return-void
.end method

.method static zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzas;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzas;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/games_v2/zzas;

    if-eqz v1, :cond_b

    return-object v1

    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzas;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaw;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/games_v2/zzas;-><init>(Landroid/app/Application;Lcom/google/android/gms/internal/games_v2/zzaw;)V

    const/4 p0, 0x0

    .line 3
    invoke-static {v0, p0, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/games_v2/zzas;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/games_v2/zzas;

    return-object p0
.end method


# virtual methods
.method public final zzb()V
    .registers 3

    .line 1
    const-string v0, "AutomaticGamesAuthenticator"

    const-string v1, "startWatching()"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzas;->zzb:Lcom/google/android/gms/internal/games_v2/zzar;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzar;->zza()V

    return-void
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/games_v2/zzaw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzas;->zzc:Lcom/google/android/gms/internal/games_v2/zzaw;

    return-object v0
.end method
