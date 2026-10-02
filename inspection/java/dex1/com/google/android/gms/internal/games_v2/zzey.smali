.class public final Lcom/google/android/gms/internal/games_v2/zzey;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/RecallClient;


# static fields
.field private static final zza:Lcom/google/android/gms/common/api/Api$ClientKey;

.field private static final zzb:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field private static final zzc:Lcom/google/android/gms/common/api/Api;


# instance fields
.field private final zzd:Lcom/google/android/gms/internal/games_v2/zzaw;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzey;->zza:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzeu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/games_v2/zzeu;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/games_v2/zzey;->zzb:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "Recall.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/internal/games_v2/zzey;->zzc:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/games_v2/zzaw;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzey;->zzc:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/Api$ApiOptions;->NO_OPTIONS:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    sget-object v2, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzey;->zzd:Lcom/google/android/gms/internal/games_v2/zzaw;

    return-void
.end method


# virtual methods
.method public final requestRecallAccess()Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/RecallAccess;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/16 v1, 0x1a56

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setAutoResolveMissingFeatures(Z)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    sget-object v3, Lcom/google/android/gms/games/zzd;->zze:Lcom/google/android/gms/common/Feature;

    aput-object v3, v2, v1

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzex;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/games_v2/zzex;-><init>(Lcom/google/android/gms/internal/games_v2/zzey;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzey;->zzd:Lcom/google/android/gms/internal/games_v2/zzaw;

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/games_v2/zzaw;->zzd()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzew;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/games_v2/zzew;-><init>(Lcom/google/android/gms/internal/games_v2/zzey;Lcom/google/android/gms/common/api/internal/TaskApiCall;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
