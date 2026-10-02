.class final Lcom/google/android/gms/internal/games_v2/zzbu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzbr;


# instance fields
.field private final zza:Landroid/app/Application;

.field private final zzb:Lcom/google/android/gms/games/internal/zzf;

.field private final zzc:Lcom/google/android/gms/internal/games_v2/zzax;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/internal/games_v2/zzax;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbu;->zza:Landroid/app/Application;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbu;->zzb:Lcom/google/android/gms/games/internal/zzf;

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbu;->zzc:Lcom/google/android/gms/internal/games_v2/zzax;

    return-void
.end method

.method private final zzc()Lcom/google/android/gms/internal/games_v2/zzk;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbu;->zzb:Lcom/google/android/gms/games/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzf;->zzd()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbu;->zzc:Lcom/google/android/gms/internal/games_v2/zzax;

    iget-object v1, v1, Lcom/google/android/gms/internal/games_v2/zzax;->zzb:Lcom/google/android/gms/internal/games_v2/zzi;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/games_v2/zzi;)Lcom/google/android/gms/internal/games_v2/zzk;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbu;->zzc:Lcom/google/android/gms/internal/games_v2/zzax;

    iget-object v1, v0, Lcom/google/android/gms/internal/games_v2/zzax;->zza:Landroid/app/Application;

    iget-object v0, v0, Lcom/google/android/gms/internal/games_v2/zzax;->zzb:Lcom/google/android/gms/internal/games_v2/zzi;

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzj;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/games_v2/zzi;)Lcom/google/android/gms/internal/games_v2/zzk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/games_v2/zzq;)Lcom/google/android/gms/tasks/Task;
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/games_v2/zzq;->zzc()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbu;->zza:Landroid/app/Application;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v1, 0x1

    .line 2
    :cond_10
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzbu;->zzc()Lcom/google/android/gms/internal/games_v2/zzk;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/games_v2/zzk;->zza(Lcom/google/android/gms/internal/games_v2/zzq;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzhc;->zza()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/games_v2/zzbt;

    invoke-direct {v4, p0, p1, v1}, Lcom/google/android/gms/internal/games_v2/zzbt;-><init>(Lcom/google/android/gms/internal/games_v2/zzbu;Lcom/google/android/gms/internal/games_v2/zzq;Z)V

    .line 5
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzhc;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzbs;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/games_v2/zzbs;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/games_v2/zzq;ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 6

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_29

    .line 2
    :cond_7
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v1, :cond_29

    .line 4
    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_29

    const-string p3, "GamesAuthenticator"

    const-string v0, "Service connection suspended during the first sign-in attempt. Trying again."

    .line 5
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/games_v2/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzbu;->zzc()Lcom/google/android/gms/internal/games_v2/zzk;

    move-result-object p3

    .line 7
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzk;->zza(Lcom/google/android/gms/internal/games_v2/zzq;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_29
    :goto_29
    return-object p3
.end method
