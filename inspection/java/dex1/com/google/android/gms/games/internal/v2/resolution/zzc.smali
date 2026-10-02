.class public final Lcom/google/android/gms/games/internal/v2/resolution/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private final zza:Z

.field private final zzb:Landroid/content/Intent;


# direct methods
.method private constructor <init>(ZLandroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/v2/resolution/zzc;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/games/internal/v2/resolution/zzc;->zzb:Landroid/content/Intent;

    return-void
.end method

.method public static zza(Landroid/content/Intent;)Lcom/google/android/gms/games/internal/v2/resolution/zzc;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/v2/resolution/zzc;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/games/internal/v2/resolution/zzc;-><init>(ZLandroid/content/Intent;)V

    return-object v0
.end method

.method public static zzb(Landroid/content/Intent;)Lcom/google/android/gms/games/internal/v2/resolution/zzc;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/v2/resolution/zzc;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/games/internal/v2/resolution/zzc;-><init>(ZLandroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method public final zzc()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/v2/resolution/zzc;->zza:Z

    return v0
.end method

.method public final zzd()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/resolution/zzc;->zzb:Landroid/content/Intent;

    return-object v0
.end method
