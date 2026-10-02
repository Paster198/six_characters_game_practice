.class final Lcom/google/android/gms/measurement/internal/zznk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzr;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzny;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznk;->zza:Lcom/google/android/gms/measurement/internal/zzr;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznk;->zzb:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznk;->zzb:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzi(Lcom/google/android/gms/measurement/internal/zzny;)Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Failed to send consent settings to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznk;->zza:Lcom/google/android/gms/measurement/internal/zzr;

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgl;->zzv(Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzy(Lcom/google/android/gms/measurement/internal/zzny;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznk;->zzb:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Failed to send consent settings to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
