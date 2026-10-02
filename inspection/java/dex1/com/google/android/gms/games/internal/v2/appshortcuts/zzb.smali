.class final synthetic Lcom/google/android/gms/games/internal/v2/appshortcuts/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic zza:Landroid/content/pm/ShortcutManager;


# direct methods
.method synthetic constructor <init>(Landroid/content/pm/ShortcutManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzb;->zza:Landroid/content/pm/ShortcutManager;

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zza()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzb;->zza:Landroid/content/pm/ShortcutManager;

    if-eqz v0, :cond_13

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    .line 4
    :cond_13
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzb()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    .line 7
    :cond_22
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzc()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    .line 9
    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;)V

    .line 10
    :cond_31
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzg;->zzd()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 12
    invoke-virtual {v1, p1}, Landroid/content/pm/ShortcutManager;->enableShortcuts(Ljava/util/List;)V

    :cond_40
    return-void
.end method
