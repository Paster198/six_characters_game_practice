.class final Lcom/google/android/gms/internal/gtm/zzcv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzcw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zza:Lcom/google/android/gms/internal/gtm/zzcw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zza:Lcom/google/android/gms/internal/gtm/zzcw;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzcw;->zzc(Lcom/google/android/gms/internal/gtm/zzcw;)Lcom/google/android/gms/internal/gtm/zzbv;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbv;->zzd()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/zzr;->zzi(Ljava/lang/Runnable;)V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zza:Lcom/google/android/gms/internal/gtm/zzcw;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcw;->zzh()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zza:Lcom/google/android/gms/internal/gtm/zzcw;

    const-wide/16 v2, 0x0

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzcw;->zzd(Lcom/google/android/gms/internal/gtm/zzcw;J)V

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zza:Lcom/google/android/gms/internal/gtm/zzcw;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcw;->zza()V

    :cond_2c
    return-void
.end method
