.class final Lcom/google/android/gms/measurement/internal/zzpn;
.super Lcom/google/android/gms/measurement/internal/zzaz;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzpv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpv;Lcom/google/android/gms/measurement/internal/zzjs;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpn;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Lcom/google/android/gms/measurement/internal/zzjs;)V

    return-void
.end method


# virtual methods
.method public final zzc()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzpn;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzE(Lcom/google/android/gms/measurement/internal/zzpv;)Ljava/util/Deque;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_41

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzG(Lcom/google/android/gms/measurement/internal/zzpv;J)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Sending trigger URI notification to app"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Landroid/content/Intent;

    .line 5
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 6
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaT()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzJ(Landroid/content/Context;Landroid/content/Intent;)V

    .line 9
    :cond_41
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzI(Lcom/google/android/gms/measurement/internal/zzpv;)V

    return-void
.end method
