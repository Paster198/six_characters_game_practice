.class public final synthetic Lcom/google/android/gms/internal/auth_blockstore/zzt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-blockstore@@16.4.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/auth_blockstore/zzaa;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth_blockstore/zzaa;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth_blockstore/zzt;->zza:Lcom/google/android/gms/internal/auth_blockstore/zzaa;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/auth_blockstore/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth_blockstore/zzx;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth_blockstore/zzt;->zza:Lcom/google/android/gms/internal/auth_blockstore/zzaa;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/auth_blockstore/zzx;-><init>(Lcom/google/android/gms/internal/auth_blockstore/zzaa;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth_blockstore/zzf;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth_blockstore/zzg;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/auth_blockstore/zzg;->zzc(Lcom/google/android/gms/internal/auth_blockstore/zzm;)V

    return-void
.end method
