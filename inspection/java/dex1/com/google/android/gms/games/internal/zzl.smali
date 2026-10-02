.class final Lcom/google/android/gms/games/internal/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzl;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setFailedResult(Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzl;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;->onSignOutComplete()V

    return-void
.end method

.method public final bridge synthetic setResult(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzl;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;->onSignOutComplete()V

    return-void
.end method
