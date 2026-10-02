.class public final Lcom/google/android/gms/games/internal/v2/resolution/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/games/internal/v2/resolution/zzb;
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/internal/v2/resolution/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/v2/resolution/zzb;-><init>()V

    return-object v0
.end method

.method public static final zzb(Landroid/app/Activity;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/v2/resolution/zza;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/v2/resolution/zza;-><init>()V

    const-class v1, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;

    new-instance v2, Landroid/content/Intent;

    .line 2
    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pendingIntent"

    .line 3
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "resultReceiver"

    .line 4
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/v2/resolution/zza;->zza()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
