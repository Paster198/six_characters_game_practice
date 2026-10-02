.class public final Lcom/google/android/gms/internal/games_v2/zzf;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field private static final zzb:Lcom/google/android/gms/common/api/Api$ClientKey;

.field private static final zzc:Lcom/google/android/gms/common/api/Api;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzf;->zza:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 2
    new-instance v1, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/games_v2/zzf;->zzb:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "Games.API"

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/internal/games_v2/zzf;->zzc:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/games/zzi;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzf;->zzc:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    return-void
.end method


# virtual methods
.method public final createClientSettingsBuilder()Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/GoogleApi;->createClientSettingsBuilder()Lcom/google/android/gms/common/internal/ClientSettings$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzf;->getApiOptions()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzf;->getApiOptions()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/zzi;

    iget-object v1, v1, Lcom/google/android/gms/games/zzi;->zzk:Ljava/lang/String;

    :cond_12
    return-object v0
.end method
