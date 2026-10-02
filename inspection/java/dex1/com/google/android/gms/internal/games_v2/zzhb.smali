.class final enum Lcom/google/android/gms/internal/games_v2/zzhb;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/games_v2/zzhb;

.field private static final synthetic zzb:[Lcom/google/android/gms/internal/games_v2/zzhb;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzhb;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/games_v2/zzhb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzhb;->zza:Lcom/google/android/gms/internal/games_v2/zzhb;

    filled-new-array {v0}, [Lcom/google/android/gms/internal/games_v2/zzhb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzb:[Lcom/google/android/gms/internal/games_v2/zzhb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    const-string p1, "INSTANCE"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/games_v2/zzhb;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzhb;->zzb:[Lcom/google/android/gms/internal/games_v2/zzhb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/games_v2/zzhb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/games_v2/zzhb;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
