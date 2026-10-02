.class abstract Lcom/google/android/gms/measurement/internal/zzpg;
.super Lcom/google/android/gms/measurement/internal/zzoz;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field private zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpv;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoz;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzad()V

    return-void
.end method


# virtual methods
.method protected final zzav()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzax()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzaw()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zza:Z

    if-nez v0, :cond_10

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzV()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zza:Z

    return-void

    .line 1
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzax()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzpg;->zza:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzb()Z
.end method
