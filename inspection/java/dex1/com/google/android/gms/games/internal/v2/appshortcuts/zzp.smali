.class final synthetic Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;

.field private final synthetic zzb:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;

.field private final synthetic zzc:Ljava/util/List;

.field private final synthetic zzd:Ljava/util/List;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;Ljava/util/List;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zza:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zzb:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zzc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zzd:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzu;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzu;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzv;

    new-instance v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzl;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zza:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzl;-><init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zzb:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zzc:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzp;->zzd:Ljava/util/List;

    .line 2
    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzv;->zzd(Lcom/google/android/gms/games/internal/v2/appshortcuts/zzx;Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
