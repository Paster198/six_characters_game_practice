.class public final Lcom/google/android/gms/internal/games_v2/zzfx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/games_v2/zzfv;

.field private static volatile zzb:Lcom/google/android/gms/internal/games_v2/zzfv;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzfw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzfw;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzfx;->zza:Lcom/google/android/gms/internal/games_v2/zzfv;

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzfx;->zzb:Lcom/google/android/gms/internal/games_v2/zzfv;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/games_v2/zzfv;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzfx;->zzb:Lcom/google/android/gms/internal/games_v2/zzfv;

    return-object v0
.end method
