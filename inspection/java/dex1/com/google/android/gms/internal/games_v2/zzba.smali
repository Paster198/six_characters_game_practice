.class final enum Lcom/google/android/gms/internal/games_v2/zzba;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/games_v2/zzba;

.field public static final enum zzb:Lcom/google/android/gms/internal/games_v2/zzba;

.field public static final enum zzc:Lcom/google/android/gms/internal/games_v2/zzba;

.field public static final enum zzd:Lcom/google/android/gms/internal/games_v2/zzba;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/games_v2/zzba;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzba;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/games_v2/zzba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzba;->zza:Lcom/google/android/gms/internal/games_v2/zzba;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzba;

    const-string v2, "AUTHENTICATING"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/games_v2/zzba;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/games_v2/zzba;->zzb:Lcom/google/android/gms/internal/games_v2/zzba;

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzba;

    const-string v3, "AUTHENTICATED"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/games_v2/zzba;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/games_v2/zzba;->zzc:Lcom/google/android/gms/internal/games_v2/zzba;

    new-instance v3, Lcom/google/android/gms/internal/games_v2/zzba;

    const-string v4, "AUTHENTICATION_FAILED"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/games_v2/zzba;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/games_v2/zzba;->zzd:Lcom/google/android/gms/internal/games_v2/zzba;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/games_v2/zzba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzba;->zze:[Lcom/google/android/gms/internal/games_v2/zzba;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/games_v2/zzba;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzba;->zze:[Lcom/google/android/gms/internal/games_v2/zzba;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/games_v2/zzba;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/games_v2/zzba;

    return-object v0
.end method
