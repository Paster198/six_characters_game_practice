.class public final Lcom/google/android/gms/internal/games_v2/zzp;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private final zze:Lcom/google/android/gms/internal/games_v2/zzi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/internal/games_v2/zzi;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .registers 14

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    iput-object p4, v0, Lcom/google/android/gms/internal/games_v2/zzp;->zze:Lcom/google/android/gms/internal/games_v2/zzi;

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
    const-string v0, "com.google.android.gms.games.internal.connect.IGamesConnectService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/games_v2/zzw;

    if-eqz v1, :cond_11

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzw;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzw;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzp;->zze:Lcom/google/android/gms/internal/games_v2/zzi;

    const-string v2, "com.google.android.gms.games.key.API_VERSION"

    iget v3, v1, Lcom/google/android/gms/internal/games_v2/zzi;->zza:I

    .line 2
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "com.google.android.gms.games.key.gamePackageName"

    iget-object v1, v1, Lcom/google/android/gms/internal/games_v2/zzi;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMinApkVersion()I
    .registers 2

    const v0, 0xcb21f40

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.games.internal.connect.IGamesConnectService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.games.internal.connect.service.START"

    return-object v0
.end method

.method public final usesClientTelemetry()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
