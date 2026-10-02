.class final Lcom/google/android/gms/games/internal/v2/appshortcuts/zzu;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .registers 13

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

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
    const-string v0, "com.google.android.gms.games.internal.v2.appshortcuts.IAppShortcutsService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzv;

    if-eqz v1, :cond_11

    .line 2
    check-cast v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzv;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzv;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .registers 4

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/games/zzd;->zzg:Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.games.internal.v2.appshortcuts.IAppShortcutsService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.games.internal.appshortcuts.service.START"

    return-object v0
.end method

.method public final requiresGooglePlayServices()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final usesClientTelemetry()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
