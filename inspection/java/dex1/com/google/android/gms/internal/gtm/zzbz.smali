.class final Lcom/google/android/gms/internal/gtm/zzbz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzcb;

.field final synthetic zzb:Lcom/google/android/gms/internal/gtm/zzey;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzcb;Lcom/google/android/gms/internal/gtm/zzey;[B)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbz;->zza:Lcom/google/android/gms/internal/gtm/zzcb;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbz;->zzb:Lcom/google/android/gms/internal/gtm/zzey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbz;->zza:Lcom/google/android/gms/internal/gtm/zzcb;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcc;->zzg()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbz;->zza:Lcom/google/android/gms/internal/gtm/zzcb;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    const-string v1, "Connected to service after a timeout"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbz;->zza:Lcom/google/android/gms/internal/gtm/zzcb;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbz;->zzb:Lcom/google/android/gms/internal/gtm/zzey;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzcc;->zzi(Lcom/google/android/gms/internal/gtm/zzcc;Lcom/google/android/gms/internal/gtm/zzey;)V

    :cond_1c
    return-void
.end method
