.class final Lcom/google/android/gms/measurement/internal/zzhm;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzpv;

.field private zzb:Z

.field private zzc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpv;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzhm;)Lcom/google/android/gms/measurement/internal/zzpv;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    return-object p0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "NetworkBroadcastReceiver received action"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzp()Lcom/google/android/gms/measurement/internal/zzhk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhk;->zzd()Z

    move-result p2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Z

    if-eq v0, p2, :cond_38

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Z

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/measurement/internal/zzhl;-><init>(Lcom/google/android/gms/measurement/internal/zzhm;Z)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    :cond_38
    return-void

    .line 6
    :cond_39
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Z

    if-eqz v1, :cond_11

    return-void

    .line 3
    :cond_11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaT()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 4
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzp()Lcom/google/android/gms/measurement/internal/zzhk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhk;->zzd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Z

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Z

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Z

    return-void
.end method

.method public final zzc()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzM()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Z

    if-nez v1, :cond_18

    return-void

    .line 4
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Unregistering connectivity change receiver"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Z

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Z

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 7
    :try_start_2e
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
