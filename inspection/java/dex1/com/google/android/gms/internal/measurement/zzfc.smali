.class final Lcom/google/android/gms/internal/measurement/zzfc;
.super Lcom/google/android/gms/internal/measurement/zzeu;
.source "com.google.android.gms:play-services-measurement-sdk-api@@22.4.0"


# instance fields
.field final synthetic zza:Landroid/app/Activity;

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzcs;

.field final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzfe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfe;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/zzcs;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfc;->zza:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzfc;->zzb:Lcom/google/android/gms/internal/measurement/zzcs;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfc;->zzc:Lcom/google/android/gms/internal/measurement/zzfe;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfe;->zza:Lcom/google/android/gms/internal/measurement/zzff;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Lcom/google/android/gms/internal/measurement/zzff;Z)V

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc;->zzc:Lcom/google/android/gms/internal/measurement/zzfe;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfe;->zza:Lcom/google/android/gms/internal/measurement/zzff;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzff;->zze(Lcom/google/android/gms/internal/measurement/zzff;)Lcom/google/android/gms/internal/measurement/zzcv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcv;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfc;->zza:Landroid/app/Activity;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzdj;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/zzdj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfc;->zzb:Lcom/google/android/gms/internal/measurement/zzcs;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzfc;->zzi:J

    .line 3
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcv;->onActivitySaveInstanceStateByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdj;Lcom/google/android/gms/internal/measurement/zzcy;J)V

    return-void
.end method
