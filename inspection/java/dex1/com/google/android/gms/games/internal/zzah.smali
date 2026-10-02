.class public final Lcom/google/android/gms/games/internal/zzah;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field public static final synthetic zze:I


# instance fields
.field private final zzf:Lcom/google/android/gms/internal/games_v2/zzac;

.field private final zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/games/PlayerEntity;

.field private final zzi:Lcom/google/android/gms/games/internal/zzao;

.field private zzj:Z

.field private final zzk:J

.field private final zzl:Lcom/google/android/gms/games/internal/zzap;

.field private final zzm:Lcom/google/android/gms/games/zzi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/games/zzi;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;Lcom/google/android/gms/games/internal/zzap;)V
    .registers 15

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    new-instance p1, Lcom/google/android/gms/games/internal/zzj;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/games/internal/zzj;-><init>(Lcom/google/android/gms/games/internal/zzah;)V

    iput-object p1, v0, Lcom/google/android/gms/games/internal/zzah;->zzf:Lcom/google/android/gms/internal/games_v2/zzac;

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/games/internal/zzah;->zzj:Z

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/ClientSettings;->getRealClientPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/games/internal/zzah;->zzg:Ljava/lang/String;

    .line 4
    invoke-static {p7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/zzap;

    iput-object p1, v0, Lcom/google/android/gms/games/internal/zzah;->zzl:Lcom/google/android/gms/games/internal/zzap;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/ClientSettings;->getGravityForPopups()I

    move-result p1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/zzao;->zzb(Lcom/google/android/gms/games/internal/zzah;I)Lcom/google/android/gms/games/internal/zzao;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/games/internal/zzah;->zzi:Lcom/google/android/gms/games/internal/zzao;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, v0, Lcom/google/android/gms/games/internal/zzah;->zzk:J

    iput-object p4, v0, Lcom/google/android/gms/games/internal/zzah;->zzm:Lcom/google/android/gms/games/zzi;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/ClientSettings;->getViewForPopups()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_41

    instance-of p2, v1, Landroid/app/Activity;

    if-eqz p2, :cond_40

    goto :goto_41

    :cond_40
    return-void

    .line 8
    :cond_41
    :goto_41
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/ClientSettings;->getViewForPopups()Landroid/view/View;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/games/internal/zzao;->zzf(Landroid/view/View;)V

    return-void
.end method

.method static synthetic zzac(Landroid/os/RemoteException;)V
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/zzah;->zzae(Landroid/os/RemoteException;)V

    return-void
.end method

.method static synthetic zzad(Ljava/lang/SecurityException;)V
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/zzah;->zzaf(Ljava/lang/SecurityException;)V

    return-void
.end method

.method private static zzae(Landroid/os/RemoteException;)V
    .registers 3

    .line 1
    const-string v0, "GamesGmsClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/games_v2/zzfu;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static zzaf(Ljava/lang/SecurityException;)V
    .registers 3

    .line 1
    const-string v0, "GamesGmsClientImpl"

    const-string v1, "Is player signed out?"

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/games_v2/zzfu;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzh:Lcom/google/android/gms/games/PlayerEntity;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    return-void
.end method

.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/games/internal/zzan;

    if-eqz v1, :cond_11

    .line 2
    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/games/internal/zzam;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzam;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final disconnect()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzj:Z

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_21

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzf:Lcom/google/android/gms/internal/games_v2/zzac;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzac;->zzb()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    iget-wide v1, p0, Lcom/google/android/gms/games/internal/zzah;->zzk:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/internal/zzan;->zzd(J)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1a

    goto :goto_21

    .line 5
    :catch_1a
    const-string v0, "GamesGmsClientImpl"

    const-string v1, "Failed to notify client disconnect."

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzfu;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_21
    :goto_21
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect()V

    return-void
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/games/zzd;->zzm:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final getConnectionHint()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    .line 2
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    const-string v2, "com.google.android.gms.games.key.isHeadless"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzah;->zzm:Lcom/google/android/gms/games/zzi;

    iget-boolean v4, v2, Lcom/google/android/gms/games/zzi;->zzb:Z

    const-string v4, "com.google.android.gms.games.key.showConnectingPopup"

    const/4 v5, 0x1

    .line 4
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v4, v2, Lcom/google/android/gms/games/zzi;->zzc:I

    const-string v4, "com.google.android.gms.games.key.connectingPopupGravity"

    const/16 v5, 0x11

    .line 5
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "com.google.android.gms.games.key.retryingSignIn"

    .line 6
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "com.google.android.gms.games.key.sdkVariant"

    iget v5, v2, Lcom/google/android/gms/games/zzi;->zze:I

    .line 7
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    const-string v4, "com.google.android.gms.games.key.forceResolveAccountKey"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.google.android.gms.games.key.proxyApis"

    iget-object v6, v2, Lcom/google/android/gms/games/zzi;->zzg:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v4, "com.google.android.gms.games.key.unauthenticated"

    .line 10
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "com.google.android.gms.games.key.skipPgaCheck"

    .line 11
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "com.google.android.gms.games.key.skipWelcomePopup"

    .line 12
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "com.google.android.gms.games.key.realClientPackageName"

    .line 13
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v2, Lcom/google/android/gms/games/zzi;->zzl:I

    .line 14
    const-string v4, "com.google.android.gms.games.key.API_VERSION"

    const/16 v5, 0x9

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "com.google.android.gms.games.key.gameRunToken"

    iget-object v2, v2, Lcom/google/android/gms/games/zzi;->zzm:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.google.android.gms.games.key.isGmsCoreUiInitiatedRequest"

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "com.google.android.gms.games.key.gamePackageName"

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzah;->zzg:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.google.android.gms.games.key.desiredLocale"

    .line 18
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzi:Lcom/google/android/gms/games/internal/zzao;

    .line 19
    new-instance v2, Lcom/google/android/gms/common/internal/BinderWrapper;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzao;->zzd()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    const-string v0, "com.google.android.gms.games.key.popupWindowToken"

    .line 19
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 22
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    :cond_97
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getClientSettings()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->createBundleFromClientSettings(Lcom/google/android/gms/common/internal/ClientSettings;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.google.android.gms.games.key.signInOptions"

    .line 24
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public final getMinApkVersion()I
    .registers 2

    const v0, 0xbdfcb8

    return v0
.end method

.method public final getScopesForConnectionlessNonSignIn()Ljava/util/Set;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getScopes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.games.service.START"

    return-object v0
.end method

.method public final bridge synthetic onConnectedLocked(Landroid/os/IInterface;)V
    .registers 6

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzan;

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->onConnectedLocked(Landroid/os/IInterface;)V

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzj:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzi:Lcom/google/android/gms/games/internal/zzao;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzao;->zzg()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzj:Z

    .line 4
    :cond_11
    :try_start_11
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzaf;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzah;->zzi:Lcom/google/android/gms/games/internal/zzao;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/zzao;->zze()Lcom/google/android/gms/internal/games_v2/zzae;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzaf;-><init>(Lcom/google/android/gms/internal/games_v2/zzae;)V

    new-instance v1, Lcom/google/android/gms/games/internal/zzk;

    .line 6
    invoke-direct {v1, v0}, Lcom/google/android/gms/games/internal/zzk;-><init>(Lcom/google/android/gms/internal/games_v2/zzaf;)V

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/zzah;->zzk:J

    .line 4
    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/games/internal/zzan;->zzM(Lcom/google/android/gms/games/internal/zzal;J)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzah;->zzae(Landroid/os/RemoteException;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzah;->zzj:Z

    return-void
.end method

.method protected final onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 6

    if-nez p1, :cond_28

    const/4 p1, 0x0

    if-eqz p3, :cond_28

    .line 1
    const-class v0, Lcom/google/android/gms/games/internal/zzah;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "show_welcome_popup"

    .line 2
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzj:Z

    const-string v0, "com.google.android.gms.games.current_player"

    .line 3
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzh:Lcom/google/android/gms/games/PlayerEntity;

    const-string v0, "com.google.android.gms.games.current_game"

    .line 4
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    .line 5
    :cond_28
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/GmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final onUserSignOut(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/games/internal/zzl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzl;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzah;->zzf:Lcom/google/android/gms/internal/games_v2/zzac;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/games_v2/zzac;->zzb()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_22

    .line 3
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzan;

    new-instance v2, Lcom/google/android/gms/games/internal/zzm;

    .line 4
    invoke-direct {v2, v0}, Lcom/google/android/gms/games/internal/zzm;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-interface {v1, v2}, Lcom/google/android/gms/games/internal/zzan;->zze(Lcom/google/android/gms/games/internal/zzaj;)V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_18} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_18} :catch_22

    return-void

    :catch_19
    const/4 v1, 0x4

    .line 5
    :try_start_1a
    invoke-static {v1}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_22

    return-void

    .line 7
    :catch_22
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;->onSignOutComplete()V

    return-void
.end method

.method public final requiresAccount()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final requiresSignIn()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzm:Lcom/google/android/gms/games/zzi;

    iget-object v0, v0, Lcom/google/android/gms/games/zzi;->zzn:Lcom/google/android/gms/games/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzi;->zzc()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public final usesClientTelemetry()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zzA(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v1, Lcom/google/android/gms/games/internal/zzw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzw;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzan;->zzr(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzB(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzan;

    new-instance v2, Lcom/google/android/gms/games/internal/zzx;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/games/internal/zzx;-><init>(Lcom/google/android/gms/games/internal/zzah;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 v3, 0x0

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzan;->zzu(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    move-object p2, v0

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzC(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IIIZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzan;

    new-instance v2, Lcom/google/android/gms/games/internal/zzy;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/games/internal/zzy;-><init>(Lcom/google/android/gms/games/internal/zzah;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/games/internal/zzan;->zzj(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;IIIZ)V
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    move-object p2, v0

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzD(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IIIZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzan;

    new-instance v2, Lcom/google/android/gms/games/internal/zzy;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/games/internal/zzy;-><init>(Lcom/google/android/gms/games/internal/zzah;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/games/internal/zzan;->zzk(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;IIIZ)V
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    move-object p2, v0

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzE(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v1, Lcom/google/android/gms/games/internal/zzy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/zzy;-><init>(Lcom/google/android/gms/games/internal/zzah;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->zza()Lcom/google/android/gms/games/leaderboard/zza;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/zza;->zza()Landroid/os/Bundle;

    move-result-object p2

    .line 3
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzan;->zzl(Lcom/google/android/gms/games/internal/zzaj;Landroid/os/Bundle;II)V
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzF(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;JLjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzan;

    new-instance v2, Lcom/google/android/gms/games/internal/zzaf;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/zzaf;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzan;->zzs(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    move-object p2, v0

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzG(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v1, Lcom/google/android/gms/games/internal/zzp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzp;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzan;->zzp(Lcom/google/android/gms/games/internal/zzaj;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzH(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 4
    :cond_4
    new-instance v0, Lcom/google/android/gms/games/internal/zzo;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzo;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    :goto_9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzan;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzah;->zzi:Lcom/google/android/gms/games/internal/zzao;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzao;->zzd()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzao;->zzc()Landroid/os/Bundle;

    move-result-object v2

    .line 4
    invoke-interface {v1, v0, p2, v3, v2}, Lcom/google/android/gms/games/internal/zzan;->zzm(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzI(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 4
    :cond_4
    new-instance v0, Lcom/google/android/gms/games/internal/zzo;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzo;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    :goto_9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzan;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzah;->zzi:Lcom/google/android/gms/games/internal/zzao;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzao;->zzd()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzao;->zzc()Landroid/os/Bundle;

    move-result-object v2

    .line 4
    invoke-interface {v1, v0, p2, v3, v2}, Lcom/google/android/gms/games/internal/zzan;->zzn(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzJ(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 5
    :cond_4
    new-instance v0, Lcom/google/android/gms/games/internal/zzn;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzn;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    :goto_9
    move-object v2, v0

    .line 2
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzan;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzi:Lcom/google/android/gms/games/internal/zzao;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzao;->zzd()Landroid/os/IBinder;

    move-result-object v5

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzao;->zzc()Landroid/os/Bundle;

    move-result-object v6

    move-object v3, p2

    move v4, p3

    .line 5
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzan;->zzo(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception v0

    move-object p2, v0

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzK(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 5
    :cond_4
    new-instance v0, Lcom/google/android/gms/games/internal/zzn;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzn;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    :goto_9
    move-object v2, v0

    .line 2
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzan;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzi:Lcom/google/android/gms/games/internal/zzao;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzao;->zzd()Landroid/os/IBinder;

    move-result-object v5

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzao;->zzc()Landroid/os/Bundle;

    move-result-object v6

    move-object v3, p2

    move v4, p3

    .line 5
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzan;->zzt(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception v0

    move-object p2, v0

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzL(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzf:Lcom/google/android/gms/internal/games_v2/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzac;->zzb()V

    .line 2
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v1, Lcom/google/android/gms/games/internal/zzs;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzs;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzan;->zzH(Lcom/google/android/gms/games/internal/zzaj;Z)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final varargs zzM(Lcom/google/android/gms/tasks/TaskCompletionSource;Z[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzf:Lcom/google/android/gms/internal/games_v2/zzac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzac;->zzb()V

    .line 2
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v1, Lcom/google/android/gms/games/internal/zzs;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzs;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzan;->zzI(Lcom/google/android/gms/games/internal/zzaj;Z[Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzN(Ljava/lang/String;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzf:Lcom/google/android/gms/internal/games_v2/zzac;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzac;->zzc(Ljava/lang/String;I)V

    return-void
.end method

.method public final zzO(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v1, Lcom/google/android/gms/games/internal/zzab;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzab;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzan;->zzO(Lcom/google/android/gms/games/internal/zzaj;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzP(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v1, Lcom/google/android/gms/games/internal/zzaa;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzaa;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzan;->zzA(Lcom/google/android/gms/games/internal/zzaj;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzQ(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v1, Lcom/google/android/gms/games/internal/zzag;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzag;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzan;->zzL(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;ZI)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzR(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Snapshot already closed"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->zza()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/data/BitmapTeleporter;->setTempDir(Ljava/io/File;)V

    .line 5
    :cond_20
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zza()Lcom/google/android/gms/drive/Contents;

    move-result-object v1

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zzb()V

    .line 7
    :try_start_27
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v2, Lcom/google/android/gms/games/internal/zzq;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/zzq;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    .line 9
    invoke-interface {v0, v2, p2, p3, v1}, Lcom/google/android/gms/games/internal/zzan;->zzB(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p2

    .line 10
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzS(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v1, Lcom/google/android/gms/games/internal/zzr;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzr;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzan;->zzD(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzT(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "SnapshotContents already closed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2
    invoke-interface {p4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->zza()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/BitmapTeleporter;->setTempDir(Ljava/io/File;)V

    .line 4
    :cond_1c
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zza()Lcom/google/android/gms/drive/Contents;

    move-result-object v7

    .line 5
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zzb()V

    .line 6
    :try_start_23
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object p5

    move-object v2, p5

    check-cast v2, Lcom/google/android/gms/games/internal/zzan;

    new-instance v3, Lcom/google/android/gms/games/internal/zzag;

    invoke-direct {v3, p1}, Lcom/google/android/gms/games/internal/zzag;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v6, p4

    check-cast v6, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    move-object v4, p2

    move-object v5, p3

    .line 7
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/games/internal/zzan;->zzE(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception v0

    move-object p2, v0

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method final zzU(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1a

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzm:Lcom/google/android/gms/games/zzi;

    iget-object v0, v0, Lcom/google/android/gms/games/zzi;->zzn:Lcom/google/android/gms/games/internal/zzi;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzi;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzl:Lcom/google/android/gms/games/internal/zzap;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzap;->zzb()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_1b

    :cond_1a
    :goto_1a
    return-void

    .line 4
    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/zzan;->zzf(Landroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzah;->zzl:Lcom/google/android/gms/games/internal/zzap;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/zzap;->zzc()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzah;->zzae(Landroid/os/RemoteException;)V

    return-void
.end method

.method final zzV()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/zzan;->zzg()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzah;->zzae(Landroid/os/RemoteException;)V

    :cond_14
    return-void
.end method

.method public final zzW(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v1, Lcom/google/android/gms/games/internal/zzu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzu;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzan;->zzS(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;Z)V

    return-void
.end method

.method public final zzX(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;ZLjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v1, Lcom/google/android/gms/games/internal/zzv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzv;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzan;->zzT(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;ZLjava/util/List;)V

    return-void
.end method

.method public final zzY(Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/zzan;->zzU(Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzah;->zzaf(Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzZ(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/zzan;->zzV(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzah;->zzaf(Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzaa()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/zzan;->zzW()V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzah;->zzaf(Ljava/lang/SecurityException;)V

    return-void
.end method

.method final synthetic zzab(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/zzan;->zzQ()Landroid/app/PendingIntent;

    move-result-object v0

    const/16 v1, 0x684f

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zzb(ILandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/games/FriendsResolutionRequiredException;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/FriendsResolutionRequiredException;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public final zzu(Lcom/google/android/gms/games/internal/zzf;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzi:Lcom/google/android/gms/games/internal/zzao;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/games/internal/zzf;->zzc(Lcom/google/android/gms/games/internal/zzc;)V

    return-void
.end method

.method public final zzv()Lcom/google/android/gms/games/Player;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->checkConnected()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzh:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_35

    .line 2
    new-instance v0, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzan;

    invoke-interface {v1}, Lcom/google/android/gms/games/internal/zzan;->zzi()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_39

    .line 3
    :try_start_17
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerBuffer;->getCount()I

    move-result v1

    if-lez v1, :cond_2c

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Lcom/google/android/gms/games/Player;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v2, v1}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    .line 4
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v2, p0, Lcom/google/android/gms/games/internal/zzah;->zzh:Lcom/google/android/gms/games/PlayerEntity;
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_30

    .line 6
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    goto :goto_35

    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    .line 7
    throw v1

    .line 8
    :cond_35
    :goto_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_39

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzah;->zzh:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0

    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public final zzw(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v1, Lcom/google/android/gms/games/internal/zzad;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzad;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/gms/games/internal/zzan;->zzK(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;Z)V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzx(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v1, Lcom/google/android/gms/games/internal/zzad;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzad;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzan;->zzK(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzy(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "played_with"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "friends_all"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1d

    :cond_11
    const-string p1, "Invalid player collection: "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzan;

    new-instance v2, Lcom/google/android/gms/games/internal/zzac;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/games/internal/zzac;-><init>(Lcom/google/android/gms/games/internal/zzah;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzan;->zzy(Lcom/google/android/gms/games/internal/zzaj;Ljava/lang/String;IZZ)V
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception v0

    move-object p2, v0

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final zzz(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzan;

    new-instance v1, Lcom/google/android/gms/games/internal/zzz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzz;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzan;->zzq(Lcom/google/android/gms/games/internal/zzaj;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method
