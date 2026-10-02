.class public final Lcom/google/android/gms/internal/gtm/zzrk;
.super Lcom/google/android/gms/internal/gtm/zzut;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzut<",
        "Lcom/google/android/gms/internal/gtm/zzrl;",
        "Lcom/google/android/gms/internal/gtm/zzrk;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrl;->zzf()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzut;-><init>(Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzrj;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrl;->zzf()Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzut;-><init>(Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/gtm/zzaa;)Lcom/google/android/gms/internal/gtm/zzrk;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zzb:Z

    if-eqz v0, :cond_a

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzut;->zzF()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zzb:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrk;->zza:Lcom/google/android/gms/internal/gtm/zzuz;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrl;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrl;->zzi(Lcom/google/android/gms/internal/gtm/zzrl;Lcom/google/android/gms/internal/gtm/zzaa;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzai;)Lcom/google/android/gms/internal/gtm/zzrk;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zzb:Z

    if-eqz v0, :cond_a

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzut;->zzF()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zzb:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrk;->zza:Lcom/google/android/gms/internal/gtm/zzuz;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrl;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrl;->zzj(Lcom/google/android/gms/internal/gtm/zzrl;Lcom/google/android/gms/internal/gtm/zzai;)V

    return-object p0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/gtm/zzrk;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zzb:Z

    if-eqz v0, :cond_a

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzut;->zzF()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzut;->zzb:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrk;->zza:Lcom/google/android/gms/internal/gtm/zzuz;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrl;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzrl;->zzh(Lcom/google/android/gms/internal/gtm/zzrl;J)V

    return-object p0
.end method
