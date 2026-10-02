.class public final Lcom/google/android/gms/internal/auth-api/zbe;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-auth@@21.1.1"


# instance fields
.field private final zba:Lcom/google/android/gms/auth/api/zbd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/auth/api/zbd;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 14

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance p1, Lcom/google/android/gms/auth/api/zbc;

    if-nez p4, :cond_11

    .line 2
    sget-object p4, Lcom/google/android/gms/auth/api/zbd;->zba:Lcom/google/android/gms/auth/api/zbd;

    :cond_11
    invoke-direct {p1, p4}, Lcom/google/android/gms/auth/api/zbc;-><init>(Lcom/google/android/gms/auth/api/zbd;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/auth-api/zbat;->zba()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/auth/api/zbc;->zba(Ljava/lang/String;)Lcom/google/android/gms/auth/api/zbc;

    new-instance p2, Lcom/google/android/gms/auth/api/zbd;

    .line 4
    invoke-direct {p2, p1}, Lcom/google/android/gms/auth/api/zbd;-><init>(Lcom/google/android/gms/auth/api/zbc;)V

    iput-object p2, v0, Lcom/google/android/gms/internal/auth-api/zbe;->zba:Lcom/google/android/gms/auth/api/zbd;

    return-void
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/auth-api/zbf;

    if-eqz v1, :cond_11

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/auth-api/zbf;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/auth-api/zbf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth-api/zbf;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbe;->zba:Lcom/google/android/gms/auth/api/zbd;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/zbd;->zba()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getMinApkVersion()I
    .registers 2

    const v0, 0xc35000

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method
