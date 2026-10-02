.class final Lcom/google/android/gms/measurement/internal/zzay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjs;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzaz;Lcom/google/android/gms/measurement/internal/zzjs;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzay;->zza:Lcom/google/android/gms/measurement/internal/zzjs;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzb:Lcom/google/android/gms/measurement/internal/zzaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zza:Lcom/google/android/gms/measurement/internal/zzjs;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzjs;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->zza()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzjs;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzb:Lcom/google/android/gms/measurement/internal/zzaz;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaz;->zze()Z

    move-result v1

    const-wide/16 v2, 0x0

    .line 4
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaz;->zza(Lcom/google/android/gms/measurement/internal/zzaz;J)V

    if-eqz v1, :cond_23

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaz;->zzc()V

    :cond_23
    return-void
.end method
