.class public final Lcom/google/android/gms/games/internal/zzap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/games/internal/zzap;


# instance fields
.field private volatile zzb:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/internal/zzap;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/zzap;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/zzap;->zza:Lcom/google/android/gms/games/internal/zzap;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzap;->zzb:Z

    return-void
.end method

.method public static zza()Lcom/google/android/gms/games/internal/zzap;
    .registers 1

    sget-object v0, Lcom/google/android/gms/games/internal/zzap;->zza:Lcom/google/android/gms/games/internal/zzap;

    return-object v0
.end method


# virtual methods
.method public final zzb()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/zzap;->zzb:Z

    return v0
.end method

.method public final zzc()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzap;->zzb:Z

    return-void
.end method
