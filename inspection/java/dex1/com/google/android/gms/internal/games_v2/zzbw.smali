.class public final Lcom/google/android/gms/internal/games_v2/zzbw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private static zzb:Z


# instance fields
.field private final zzc:Landroid/app/Application;

.field private final zzd:Lcom/google/android/gms/internal/games_v2/zzas;

.field private final zze:Lcom/google/android/gms/games/internal/zzf;

.field private final zzf:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzbw;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/games_v2/zzas;Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/games/internal/v2/appshortcuts/zzf;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc:Landroid/app/Application;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbw;->zzd:Lcom/google/android/gms/internal/games_v2/zzas;

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbw;->zze:Lcom/google/android/gms/games/internal/zzf;

    iput-object p4, p0, Lcom/google/android/gms/internal/games_v2/zzbw;->zzf:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzf;

    return-void
.end method

.method public static zza(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 1
    :goto_6
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzbw;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4c

    .line 3
    monitor-enter v1

    .line 4
    :try_start_12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_47

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 6
    check-cast v2, Landroid/app/Application;

    goto :goto_24

    .line 7
    :cond_21
    move-object v2, p0

    check-cast v2, Landroid/app/Application;

    .line 8
    :goto_24
    invoke-static {v2}, Lcom/google/android/gms/internal/games_v2/zzas;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzas;

    move-result-object v3

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/games/internal/zzf;->zza(Landroid/app/Application;)Lcom/google/android/gms/games/internal/zzf;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/games_v2/zzbw;

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzf;->zzd(Landroid/content/Context;)Lcom/google/android/gms/games/internal/v2/appshortcuts/zzf;

    move-result-object p0

    invoke-direct {v5, v2, v3, v4, p0}, Lcom/google/android/gms/internal/games_v2/zzbw;-><init>(Landroid/app/Application;Lcom/google/android/gms/internal/games_v2/zzas;Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/games/internal/v2/appshortcuts/zzf;)V

    .line 11
    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, v5, Lcom/google/android/gms/internal/games_v2/zzbw;->zzf:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzf;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzf;->zza()V

    iget-object p0, v5, Lcom/google/android/gms/internal/games_v2/zzbw;->zzd:Lcom/google/android/gms/internal/games_v2/zzas;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzas;->zzb()V

    iget-object p0, v5, Lcom/google/android/gms/internal/games_v2/zzbw;->zze:Lcom/google/android/gms/games/internal/zzf;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzf;->zzb()V

    .line 15
    :cond_47
    monitor-exit v1

    goto :goto_4c

    :catchall_49
    move-exception p0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_12 .. :try_end_4b} :catchall_49

    throw p0

    :cond_4c
    :goto_4c
    sput-boolean v0, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb:Z

    return-void
.end method

.method public static zzb()V
    .registers 2

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb:Z

    const-string v1, "PlayGamesSdk has not been initialized. Ensure that PlayGamesSdk.initialize() has been called."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method public static zzc()Landroid/app/Application;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb()V

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbw;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc:Landroid/app/Application;

    return-object v0
.end method
