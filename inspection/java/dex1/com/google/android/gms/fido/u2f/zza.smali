.class public final synthetic Lcom/google/android/gms/fido/u2f/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/fido/u2f/U2fApiClient;

.field public final synthetic zzb:Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/fido/u2f/U2fApiClient;Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/zza;->zza:Lcom/google/android/gms/fido/u2f/U2fApiClient;

    iput-object p2, p0, Lcom/google/android/gms/fido/u2f/zza;->zzb:Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/fido/zzy;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/u2f/zzc;

    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/zza;->zza:Lcom/google/android/gms/fido/u2f/U2fApiClient;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/fido/u2f/zzc;-><init>(Lcom/google/android/gms/fido/u2f/U2fApiClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzy;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fido/zzw;

    iget-object p2, p0, Lcom/google/android/gms/fido/u2f/zza;->zzb:Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/fido/zzw;->zzc(Lcom/google/android/gms/internal/fido/zzv;Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;)V

    return-void
.end method
