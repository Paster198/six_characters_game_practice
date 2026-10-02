.class public final enum Lcom/google/android/gms/games/gamessignin/AuthScope;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/games/gamessignin/AuthScope;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMAIL:Lcom/google/android/gms/games/gamessignin/AuthScope;

.field public static final enum OPEN_ID:Lcom/google/android/gms/games/gamessignin/AuthScope;

.field public static final enum PROFILE:Lcom/google/android/gms/games/gamessignin/AuthScope;

.field public static final enum zza:Lcom/google/android/gms/games/gamessignin/AuthScope;

.field public static final enum zzb:Lcom/google/android/gms/games/gamessignin/AuthScope;

.field private static final zzd:Lcom/google/android/gms/internal/games_v2/zzgp;

.field private static final synthetic zze:[Lcom/google/android/gms/games/gamessignin/AuthScope;


# instance fields
.field private final zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lcom/google/android/gms/games/gamessignin/AuthScope;

    const-string v1, "EMAIL"

    const/4 v2, 0x0

    const-string v3, "email"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/games/gamessignin/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/gamessignin/AuthScope;->EMAIL:Lcom/google/android/gms/games/gamessignin/AuthScope;

    new-instance v1, Lcom/google/android/gms/games/gamessignin/AuthScope;

    const-string v3, "PROFILE"

    const/4 v4, 0x1

    .line 2
    const-string v5, "profile"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/games/gamessignin/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/games/gamessignin/AuthScope;->PROFILE:Lcom/google/android/gms/games/gamessignin/AuthScope;

    new-instance v3, Lcom/google/android/gms/games/gamessignin/AuthScope;

    const-string v4, "OPEN_ID"

    const/4 v5, 0x2

    .line 3
    const-string v6, "openid"

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/games/gamessignin/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/games/gamessignin/AuthScope;->OPEN_ID:Lcom/google/android/gms/games/gamessignin/AuthScope;

    new-instance v4, Lcom/google/android/gms/games/gamessignin/AuthScope;

    const-string v5, "GAMES_LITE"

    const/4 v6, 0x3

    .line 4
    const-string v7, "https://www.googleapis.com/auth/games_lite"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/games/gamessignin/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/games/gamessignin/AuthScope;->zza:Lcom/google/android/gms/games/gamessignin/AuthScope;

    new-instance v5, Lcom/google/android/gms/games/gamessignin/AuthScope;

    const-string v6, "DRIVE_APP_FOLDER"

    const/4 v7, 0x4

    .line 5
    const-string v8, "https://www.googleapis.com/auth/drive.appdata"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/games/gamessignin/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/android/gms/games/gamessignin/AuthScope;->zzb:Lcom/google/android/gms/games/gamessignin/AuthScope;

    filled-new-array {v0, v1, v3, v4, v5}, [Lcom/google/android/gms/games/gamessignin/AuthScope;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/games/gamessignin/AuthScope;->zze:[Lcom/google/android/gms/games/gamessignin/AuthScope;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzgo;-><init>()V

    .line 6
    invoke-static {}, Lcom/google/android/gms/games/gamessignin/AuthScope;->values()[Lcom/google/android/gms/games/gamessignin/AuthScope;

    move-result-object v1

    array-length v3, v1

    :goto_4c
    if-ge v2, v3, :cond_58

    aget-object v4, v1, v2

    .line 7
    iget-object v5, v4, Lcom/google/android/gms/games/gamessignin/AuthScope;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/games_v2/zzgo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzgo;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 8
    :cond_58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgo;->zzb()Lcom/google/android/gms/internal/games_v2/zzgp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/games/gamessignin/AuthScope;->zzd:Lcom/google/android/gms/internal/games_v2/zzgp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/games/gamessignin/AuthScope;->zzc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/games/gamessignin/AuthScope;
    .registers 2

    .line 1
    const-class v0, Lcom/google/android/gms/games/gamessignin/AuthScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/games/gamessignin/AuthScope;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/games/gamessignin/AuthScope;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/games/gamessignin/AuthScope;->zze:[Lcom/google/android/gms/games/gamessignin/AuthScope;

    invoke-virtual {v0}, [Lcom/google/android/gms/games/gamessignin/AuthScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/games/gamessignin/AuthScope;

    return-object v0
.end method

.method public static zza(Ljava/util/List;)Lcom/google/android/gms/internal/games_v2/zzgm;
    .registers 4

    .line 1
    const-string v0, "Input values list cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget v0, Lcom/google/android/gms/internal/games_v2/zzgm;->zzd:I

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzgj;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Input list of scope strings must not be null"

    .line 4
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/games/gamessignin/AuthScope;->zzd:Lcom/google/android/gms/internal/games_v2/zzgp;

    .line 5
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/games_v2/zzgp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/gamessignin/AuthScope;

    if-eqz v2, :cond_2f

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/games_v2/zzgj;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzgj;

    goto :goto_10

    .line 5
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid scope: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgj;->zzc()Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/gamessignin/AuthScope;->zzc:Ljava/lang/String;

    return-object v0
.end method
