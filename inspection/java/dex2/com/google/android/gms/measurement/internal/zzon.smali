.class final Lcom/google/android/gms/measurement/internal/zzon;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field protected zza:J

.field protected zzb:J

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzop;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzaz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzop;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Lcom/google/android/gms/measurement/internal/zzop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzom;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzom;-><init>(Lcom/google/android/gms/measurement/internal/zzon;Lcom/google/android/gms/measurement/internal/zzjs;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Lcom/google/android/gms/measurement/internal/zzaz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Lcom/google/android/gms/measurement/internal/zzaz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaz;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzbb:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_21

    :cond_1f
    const-wide/16 v0, 0x0

    :goto_21
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    return-void
.end method

.method final zzb(J)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Lcom/google/android/gms/measurement/internal/zzaz;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzb()V

    return-void
.end method

.method final zzc(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Lcom/google/android/gms/measurement/internal/zzop;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Lcom/google/android/gms/measurement/internal/zzaz;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaz;->zzb()V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zza:J

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    return-void
.end method

.method public final zzd(ZZJ)Z
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Lcom/google/android/gms/measurement/internal/zzop;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzop;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzht;->zzk:Lcom/google/android/gms/measurement/internal/zzhp;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    :cond_23
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zza:J

    sub-long v1, p3, v1

    if-nez p1, :cond_45

    const-wide/16 v3, 0x3e8

    cmp-long p1, v1, v3

    if-ltz p1, :cond_30

    goto :goto_45

    .line 19
    :cond_30
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string p2, "Screen exposed for less than 1000 ms. Event not sent. time"

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_45
    :goto_45
    if-nez p2, :cond_4d

    .line 5
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    sub-long v1, p3, v1

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    :cond_4d
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "Recording user engagement, ms"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Landroid/os/Bundle;

    .line 9
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_et"

    .line 10
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzz()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()Lcom/google/android/gms/measurement/internal/zzmo;

    move-result-object v2

    .line 14
    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzmo;->zzj(Z)Lcom/google/android/gms/measurement/internal/zzmh;

    move-result-object p1

    .line 15
    invoke-static {p1, v3, v1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzN(Lcom/google/android/gms/measurement/internal/zzmh;Landroid/os/Bundle;Z)V

    if-nez p2, :cond_8e

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zzlw;

    move-result-object p1

    const-string p2, "auto"

    const-string v0, "_e"

    .line 17
    invoke-virtual {p1, p2, v0, v3}, Lcom/google/android/gms/measurement/internal/zzlw;->zzR(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8e
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzon;->zza:J

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Lcom/google/android/gms/measurement/internal/zzaz;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzb()V

    .line 19
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzgi;->zzap:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 p3, 0x0

    .line 20
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 19
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd(J)V

    return v1
.end method
