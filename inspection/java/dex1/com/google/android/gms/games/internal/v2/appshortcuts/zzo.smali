.class final synthetic Lcom/google/android/gms/games/internal/v2/appshortcuts/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;

.field private final synthetic zzb:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;

.field private final synthetic zzc:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzo;->zza:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzo;->zzb:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzo;->zzc:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzu;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzu;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzv;

    new-instance v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzm;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzo;->zza:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzm;-><init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzo;->zzb:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzo;->zzc:Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;

    .line 2
    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzv;->zze(Lcom/google/android/gms/games/internal/v2/appshortcuts/zzx;Lcom/google/android/gms/games/internal/v2/appshortcuts/zzr;Lcom/google/android/gms/games/internal/v2/appshortcuts/zzi;)V

    return-void
.end method
