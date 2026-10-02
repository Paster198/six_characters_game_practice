.class final Lcom/google/android/gms/internal/measurement/zzdt;
.super Lcom/google/android/gms/internal/measurement/zzeu;
.source "com.google.android.gms:play-services-measurement-sdk-api@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzff;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzff;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdt;->zza:Lcom/google/android/gms/internal/measurement/zzff;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Lcom/google/android/gms/internal/measurement/zzff;Z)V

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdt;->zza:Lcom/google/android/gms/internal/measurement/zzff;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzff;->zze(Lcom/google/android/gms/internal/measurement/zzff;)Lcom/google/android/gms/internal/measurement/zzcv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcv;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzdt;->zzh:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcv;->resetAnalyticsData(J)V

    return-void
.end method
