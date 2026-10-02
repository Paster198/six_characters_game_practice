.class public final synthetic Lcom/google/android/gms/fido/fido2/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/fido/fido2/Fido2ApiClient;

.field public final synthetic zzb:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/fido/fido2/Fido2ApiClient;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/zzc;->zza:Lcom/google/android/gms/fido/fido2/Fido2ApiClient;

    iput-object p2, p0, Lcom/google/android/gms/fido/fido2/zzc;->zzb:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/fido/zzp;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/fido2/zzg;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/zzc;->zza:Lcom/google/android/gms/fido/fido2/Fido2ApiClient;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/fido/fido2/zzg;-><init>(Lcom/google/android/gms/fido/fido2/Fido2ApiClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzp;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fido/zzs;

    iget-object p2, p0, Lcom/google/android/gms/fido/fido2/zzc;->zzb:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/fido/zzs;->zzd(Lcom/google/android/gms/internal/fido/zzr;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;)V

    return-void
.end method
