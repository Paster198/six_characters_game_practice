.class public final synthetic Lcom/google/android/gms/internal/auth-api-phone/zzy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-api-phone@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/auth-api-phone/zzab;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth-api-phone/zzab;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api-phone/zzy;->zza:Lcom/google/android/gms/internal/auth-api-phone/zzab;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api-phone/zzy;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzw;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth-api-phone/zzw;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzh;

    new-instance v0, Lcom/google/android/gms/internal/auth-api-phone/zzaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth-api-phone/zzy;->zza:Lcom/google/android/gms/internal/auth-api-phone/zzab;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/auth-api-phone/zzaa;-><init>(Lcom/google/android/gms/internal/auth-api-phone/zzab;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/auth-api-phone/zzy;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzh;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/auth-api-phone/zzj;)V

    return-void
.end method
