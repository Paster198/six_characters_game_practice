.class public final Lcom/google/android/gms/internal/play_billing/zzbn;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzbq;

.field private zzb:Z

.field private zzc:J

.field private zzd:J


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzb()Lcom/google/android/gms/internal/play_billing/zzbq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zza:Lcom/google/android/gms/internal/play_billing/zzbq;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzbq;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ticker"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzbl;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzbq;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zza:Lcom/google/android/gms/internal/play_billing/zzbq;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/play_billing/zzbq;)Lcom/google/android/gms/internal/play_billing/zzbn;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzbn;-><init>(Lcom/google/android/gms/internal/play_billing/zzbq;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbn;->zze()Lcom/google/android/gms/internal/play_billing/zzbn;

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/play_billing/zzbq;)Lcom/google/android/gms/internal/play_billing/zzbn;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzbn;-><init>(Lcom/google/android/gms/internal/play_billing/zzbq;)V

    return-object v0
.end method

.method private final zzh()J
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzb:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zza:Lcom/google/android/gms/internal/play_billing/zzbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbq;->zza()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzd:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzc:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_11
    iget-wide v0, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzc:J

    return-wide v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzbn;->zzh()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_15

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    goto :goto_62

    .line 11
    :cond_15
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_24

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_62

    :cond_24
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_33

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_62

    :cond_33
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_42

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_62

    :cond_42
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_51

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_62

    :cond_51
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_60

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_62

    .line 12
    :cond_60
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_62
    long-to-double v0, v0

    .line 2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    .line 8
    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    long-to-double v3, v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    div-double/2addr v0, v3

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.4g"

    invoke-static {v5, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzbm;->zza:[I

    invoke-virtual {v2}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_b8

    .line 7
    new-instance v0, Ljava/lang/AssertionError;

    .line 12
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 11
    :pswitch_8e
    const-string v1, "d"

    goto :goto_a2

    :pswitch_91
    const-string v1, "h"

    goto :goto_a2

    :pswitch_94
    const-string v1, "min"

    goto :goto_a2

    :pswitch_97
    const-string v1, "s"

    goto :goto_a2

    :pswitch_9a
    const-string v1, "ms"

    goto :goto_a2

    :pswitch_9d
    const-string v1, "\u03bcs"

    goto :goto_a2

    .line 10
    :pswitch_a0
    const-string v1, "ns"

    :goto_a2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
    .end packed-switch
.end method

.method public final zza(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzbn;->zzh()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/play_billing/zzbn;
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzc:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzb:Z

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/play_billing/zzbn;
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzb:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "This stopwatch is already running."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzbl;->zze(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zza:Lcom/google/android/gms/internal/play_billing/zzbq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbq;->zza()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzd:J

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/play_billing/zzbn;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zza:Lcom/google/android/gms/internal/play_billing/zzbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbq;->zza()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzb:Z

    const-string v3, "This stopwatch is already stopped."

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzbl;->zze(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzb:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzc:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzd:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzc:J

    return-object p0
.end method

.method public final zzg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzb:Z

    return v0
.end method
