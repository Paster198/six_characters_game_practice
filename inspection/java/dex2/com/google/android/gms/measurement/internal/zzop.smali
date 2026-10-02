.class public final Lcom/google/android/gms/measurement/internal/zzop;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/measurement/internal/zzoo;

.field protected final zzb:Lcom/google/android/gms/measurement/internal/zzon;

.field protected final zzc:Lcom/google/android/gms/measurement/internal/zzol;

.field private zzd:Landroid/os/Handler;

.field private zze:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzio;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzop;->zze:Z

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzoo;-><init>(Lcom/google/android/gms/measurement/internal/zzop;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzop;->zza:Lcom/google/android/gms/measurement/internal/zzoo;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzon;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Lcom/google/android/gms/measurement/internal/zzop;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Lcom/google/android/gms/measurement/internal/zzon;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzol;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzol;-><init>(Lcom/google/android/gms/measurement/internal/zzop;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Lcom/google/android/gms/measurement/internal/zzol;

    return-void
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/measurement/internal/zzop;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzop;->zzd:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/measurement/internal/zzop;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzop;->zzq()V

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/measurement/internal/zzop;J)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzop;->zzq()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Lcom/google/android/gms/measurement/internal/zzol;

    .line 5
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzol;->zza(J)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Lcom/google/android/gms/measurement/internal/zzon;

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzon;->zzb(J)V

    :cond_2d
    return-void
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/measurement/internal/zzop;J)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzop;->zzq()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzba:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()Z

    move-result v0

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzop;->zze:Z

    if-eqz v0, :cond_55

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Lcom/google/android/gms/measurement/internal/zzon;

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzon;->zzc(J)V

    goto :goto_55

    .line 8
    :cond_3a
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()Z

    move-result v1

    if-nez v1, :cond_50

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzht;->zzn:Lcom/google/android/gms/measurement/internal/zzhn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhn;->zzb()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Lcom/google/android/gms/measurement/internal/zzon;

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzon;->zzc(J)V

    .line 15
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Lcom/google/android/gms/measurement/internal/zzol;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzol;->zzb()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzop;->zza:Lcom/google/android/gms/measurement/internal/zzoo;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoo;->zza:Lcom/google/android/gms/measurement/internal/zzop;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result p2

    if-nez p2, :cond_6a

    return-void

    :cond_6a
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(JZ)V

    return-void
.end method

.method private final zzq()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzop;->zzd:Landroid/os/Handler;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcr;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcr;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzop;->zzd:Landroid/os/Handler;

    :cond_12
    return-void
.end method


# virtual methods
.method protected final zzf()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzm(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzop;->zze:Z

    return-void
.end method

.method final zzp()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzop;->zze:Z

    return v0
.end method
