.class final synthetic Lcom/google/android/gms/games/internal/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/games/internal/zzf;

.field private final synthetic zzb:Lcom/google/android/gms/games/internal/zzc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/games/internal/zzc;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzd;->zza:Lcom/google/android/gms/games/internal/zzf;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzd;->zzb:Lcom/google/android/gms/games/internal/zzc;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzd;->zza:Lcom/google/android/gms/games/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzd;->zzb:Lcom/google/android/gms/games/internal/zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/zzf;->zze(Lcom/google/android/gms/games/internal/zzc;)V

    return-void
.end method
