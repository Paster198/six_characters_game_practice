.class final Lcom/google/android/gms/internal/games_v2/zzar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzas;

.field private final zzb:Landroid/app/Application;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzas;Landroid/app/Application;[B)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzar;->zza:Lcom/google/android/gms/internal/games_v2/zzas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/games_v2/zzar;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzar;->zzb:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/games_v2/zzar;->zzd:Z

    if-eqz v0, :cond_15

    const-string p1, "com.epicgames.unreal.GameActivity"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_45

    .line 7
    :cond_15
    const-string v0, "com.epicgames.unreal.SplashActivity"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    sget-object p2, Lcom/google/android/gms/internal/games_v2/zzat;->zza:Lcom/google/android/gms/internal/games_v2/zzat;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/games_v2/zzat;->zza(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/games_v2/zzar;->zzd:Z

    return-void

    .line 4
    :cond_29
    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzar;->zzb:Landroid/app/Application;

    .line 5
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/games_v2/zzar;->zzc:Z

    if-eqz p1, :cond_45

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/games_v2/zzar;->zzc:Z

    const-string p1, "AutomaticGamesAuthenticator"

    const-string p2, "Automatic connection attempt triggered"

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzar;->zza:Lcom/google/android/gms/internal/games_v2/zzas;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/games_v2/zzas;->zzc()Lcom/google/android/gms/internal/games_v2/zzaw;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/games_v2/zzaw;->zzd()Lcom/google/android/gms/tasks/Task;

    :cond_45
    :goto_45
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method final synthetic zza()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/games_v2/zzar;->zzc:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzar;->zzb:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/games_v2/zzar;->zzc:Z

    return-void
.end method
