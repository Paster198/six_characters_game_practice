.class final Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;
.super Lcom/google/android/gms/games/internal/v2/appshortcuts/zzf;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private final zza:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzf;-><init>([B)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zza:Landroid/content/Context;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/games_v2/zzgm;Lcom/google/android/gms/internal/games_v2/zzgm;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;
    .registers 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;

    return-object p0

    .line 3
    :cond_d
    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zze(Lcom/google/android/gms/internal/games_v2/zzgm;Lcom/google/android/gms/internal/games_v2/zzgm;)Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;

    move-result-object p0

    return-object p0
.end method

.method private static zze(Lcom/google/android/gms/internal/games_v2/zzgm;Lcom/google/android/gms/internal/games_v2/zzgm;)Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zzf(Lcom/google/android/gms/internal/games_v2/zzgm;)Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgm;->zzg()Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zzf(Lcom/google/android/gms/internal/games_v2/zzgm;)Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgm;->zzg()Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;

    .line 6
    invoke-direct {v2, p0, v0, p1, v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method private static zzf(Lcom/google/android/gms/internal/games_v2/zzgm;)Lcom/google/android/gms/internal/games_v2/zzgm;
    .registers 5

    .line 1
    sget v0, Lcom/google/android/gms/internal/games_v2/zzgm;->zzd:I

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzgj;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_20

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2
    check-cast v3, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;->zza()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/games_v2/zzgj;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzgj;

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 5
    :cond_20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgj;->zzc()Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object p0

    return-object p0
.end method

.method private static zzg(Ljava/util/List;)Lcom/google/android/gms/internal/games_v2/zzgm;
    .registers 7

    .line 1
    sget v0, Lcom/google/android/gms/internal/games_v2/zzgm;->zzd:I

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzgj;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 3
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_b

    .line 4
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PLAY_GAMES_SERVICES_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    .line 7
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 8
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 9
    new-instance v5, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;

    .line 10
    invoke-direct {v5, v2, v3, v4, v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;-><init>(Ljava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 11
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/games_v2/zzgj;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzgj;

    goto :goto_b

    .line 12
    :cond_4a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgj;->zzc()Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzfx;->zza()Lcom/google/android/gms/internal/games_v2/zzfv;

    new-instance v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzd;-><init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;)V

    new-instance v1, Ljava/lang/Thread;

    const-string v2, "initialize-shortcuts"

    .line 2
    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method final synthetic zzb()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zza:Landroid/content/Context;

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    if-nez v1, :cond_d

    return-void

    :cond_d
    const-class v2, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzt;->zza(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zzg(Ljava/util/List;)Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object v4

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zzg(Ljava/util/List;)Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object v4

    if-eqz v2, :cond_6a

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zza()I

    move-result v5

    if-gtz v5, :cond_2c

    goto :goto_6a

    .line 9
    :cond_2c
    new-instance v5, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;

    invoke-direct {v5, v0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/16 v6, 0x1a58

    .line 11
    invoke-virtual {v0, v6}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/android/gms/common/Feature;

    sget-object v7, Lcom/google/android/gms/games/zzd;->zzg:Lcom/google/android/gms/common/Feature;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 12
    invoke-virtual {v0, v6}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v8}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 14
    new-instance v6, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;

    invoke-direct {v6, v5, v2, v3, v4}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;-><init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;Ljava/util/List;Ljava/util/List;)V

    .line 15
    invoke-virtual {v0, v6}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    .line 17
    invoke-virtual {v5, v0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzhc;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 18
    new-instance v5, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzc;

    invoke-direct {v5, v3, v4}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzc;-><init>(Lcom/google/android/gms/internal/games_v2/zzgm;Lcom/google/android/gms/internal/games_v2/zzgm;)V

    .line 19
    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_72

    .line 7
    :cond_6a
    :goto_6a
    invoke-static {v3, v4}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zze;->zze(Lcom/google/android/gms/internal/games_v2/zzgm;Lcom/google/android/gms/internal/games_v2/zzgm;)Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_72
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzhc;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 20
    new-instance v3, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzb;

    invoke-direct {v3, v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzb;-><init>(Landroid/content/pm/ShortcutManager;)V

    .line 21
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
