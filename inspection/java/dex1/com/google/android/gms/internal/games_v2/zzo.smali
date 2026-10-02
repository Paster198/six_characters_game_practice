.class final Lcom/google/android/gms/internal/games_v2/zzo;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzk;


# static fields
.field private static final zza:Lcom/google/android/gms/common/api/Api$ClientKey;

.field private static final zzb:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field private static final zzc:Lcom/google/android/gms/common/api/Api;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzo;->zza:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/games_v2/zzl;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/games_v2/zzo;->zzb:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "GamesConnect.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/internal/games_v2/zzo;->zzc:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/games_v2/zzi;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzo;->zzc:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/games_v2/zzq;Z)Lcom/google/android/gms/tasks/Task;
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/games_v2/zzn;-><init>(Lcom/google/android/gms/internal/games_v2/zzo;Lcom/google/android/gms/internal/games_v2/zzq;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    const/16 v0, 0x1a51

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    if-eqz p2, :cond_22

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games_v2/zzo;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 7
    :cond_22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games_v2/zzo;->doBestEffortWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
