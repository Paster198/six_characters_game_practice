.class final Lcom/google/android/gms/measurement/internal/zzom;
.super Lcom/google/android/gms/measurement/internal/zzaz;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzon;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzon;Lcom/google/android/gms/measurement/internal/zzjs;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzom;->zza:Lcom/google/android/gms/measurement/internal/zzon;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Lcom/google/android/gms/measurement/internal/zzjs;)V

    return-void
.end method


# virtual methods
.method public final zzc()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzom;->zza:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Lcom/google/android/gms/measurement/internal/zzop;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzon;->zzd(ZZJ)Z

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzd()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzd;->zzf(J)V

    return-void
.end method
