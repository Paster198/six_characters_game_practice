.class public final Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;
.super Landroid/app/Activity;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private zza:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const p3, 0x3be71540

    if-eq p1, p3, :cond_9

    return-void

    :cond_9
    const/4 p1, -0x1

    if-eq p2, p1, :cond_10

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;->finish()V

    return-void

    :cond_10
    new-instance p1, Lcom/google/android/gms/internal/games_v2/zzfy;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/games_v2/zzfy;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzy;

    invoke-direct {p2, p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzy;-><init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/games_v2/zzfy;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 13

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-ge p1, v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;->finish()V

    return-void

    :cond_d
    const-class p1, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzt;->zza(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;

    move-result-object p1

    if-nez p1, :cond_19

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;->finish()V

    return-void

    :cond_19
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;->zzb()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a3

    :cond_28
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    .line 5
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    .line 6
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const v5, 0xc2200

    .line 9
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 10
    sget v4, Lcom/google/android/gms/internal/games_v2/zzgm;->zzd:I

    new-instance v4, Lcom/google/android/gms/internal/games_v2/zzgj;

    invoke-direct {v4}, Lcom/google/android/gms/internal/games_v2/zzgj;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_53
    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 12
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v6, :cond_64

    goto :goto_53

    .line 13
    :cond_64
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    if-nez v7, :cond_7c

    .line 15
    iget-boolean v6, v6, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v6, :cond_7e

    goto :goto_53

    :cond_7c
    if-ne v7, v2, :cond_53

    .line 16
    :cond_7e
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v6, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v6, :cond_53

    .line 17
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/games_v2/zzgj;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzgj;

    goto :goto_53

    .line 18
    :cond_88
    invoke-virtual {v4}, Lcom/google/android/gms/internal/games_v2/zzgj;->zzc()Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :cond_91
    if-ge v5, v4, :cond_a2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 20
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 21
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    add-int/lit8 v5, v5, 0x1

    if-eqz v6, :cond_91

    .line 22
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_a3

    :cond_a2
    move-object v0, v3

    :cond_a3
    :goto_a3
    if-eqz v0, :cond_ca

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_ac

    goto :goto_ca

    .line 23
    :cond_ac
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    .line 24
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v4, 0x14008000

    .line 27
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_cb

    :cond_ca
    :goto_ca
    move-object v0, v3

    :goto_cb
    if-nez v0, :cond_d1

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;->finish()V

    return-void

    :cond_d1
    iput-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;->zza:Landroid/content/Intent;

    .line 29
    new-instance v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;-><init>(Landroid/app/Activity;)V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.google.android.gms.games.EXTRA_APP_SHORTCUT_ID"

    .line 31
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.gms.games.EXTRA_APP_SHORTCUT_EXTRAS"

    .line 32
    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 34
    new-instance v7, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;

    .line 35
    invoke-direct {v7, v5, v4, v3, v6}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;-><init>(Ljava/lang/String;Landroid/os/PersistableBundle;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 36
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v3

    const/16 v4, 0x1a59

    .line 37
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v3

    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    sget-object v4, Lcom/google/android/gms/games/zzd;->zzg:Lcom/google/android/gms/common/Feature;

    aput-object v4, v2, v1

    .line 38
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v1

    .line 40
    new-instance v2, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzo;

    invoke-direct {v2, v0, p1, v7}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzo;-><init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;)V

    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzz;-><init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;)V

    .line 44
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method final synthetic zza()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;->zza:Landroid/content/Intent;

    const v1, 0x3be71541

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/v2/appshortcuts/PlayGamesAppShortcutsActivity;->finish()V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
