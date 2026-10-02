.class final Lcom/google/android/gms/measurement/internal/zzox;
.super Lcom/google/android/gms/measurement/internal/zzaz;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzoy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzoy;Lcom/google/android/gms/measurement/internal/zzjs;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzox;->zza:Lcom/google/android/gms/measurement/internal/zzoy;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Lcom/google/android/gms/measurement/internal/zzjs;)V

    return-void
.end method


# virtual methods
.method public final zzc()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzox;->zza:Lcom/google/android/gms/measurement/internal/zzoy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzoy;->zza()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Starting upload from DelayedRunnable"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzoy;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzat()V

    return-void
.end method
