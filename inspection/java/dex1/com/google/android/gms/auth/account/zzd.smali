.class public abstract Lcom/google/android/gms/auth/account/zzd;
.super Lcom/google/android/gms/internal/auth/zzb;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"

# interfaces
.implements Lcom/google/android/gms/auth/account/zze;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/auth/account/zze;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/auth/account/zze;

    if-eqz v1, :cond_11

    .line 2
    check-cast v0, Lcom/google/android/gms/auth/account/zze;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/auth/account/zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/account/zzc;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
