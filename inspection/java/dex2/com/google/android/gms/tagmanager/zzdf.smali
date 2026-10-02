.class final Lcom/google/android/gms/tagmanager/zzdf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzec;


# instance fields
.field private zza:D

.field private zzb:J

.field private final zzc:Ljava/lang/Object;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method public constructor <init>(IIJJLjava/lang/String;Lcom/google/android/gms/common/util/Clock;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzc:Ljava/lang/Object;

    const/4 p1, 0x1

    const/4 p2, 0x5

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdf;->zza:D

    const-string p1, "refreshing"

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzd:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/tagmanager/zzdf;->zze:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdf;->zze:Lcom/google/android/gms/common/util/Clock;

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzb:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1388

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-gez v5, :cond_37

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzd:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Excessive "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detected; call ignored."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    .line 3
    monitor-exit v0

    return v6

    :cond_37
    iget-wide v7, p0, Lcom/google/android/gms/tagmanager/zzdf;->zza:D

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    cmpg-double v5, v7, v9

    if-gez v5, :cond_53

    long-to-double v3, v3

    const-wide v11, 0x412b774000000000L    # 900000.0

    div-double/2addr v3, v11

    const-wide/16 v11, 0x0

    cmpl-double v5, v3, v11

    if-lez v5, :cond_53

    add-double/2addr v7, v3

    .line 4
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gms/tagmanager/zzdf;->zza:D

    :cond_53
    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzb:J

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v7, v1

    if-ltz v1, :cond_63

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    add-double/2addr v7, v1

    iput-wide v7, p0, Lcom/google/android/gms/tagmanager/zzdf;->zza:D

    .line 5
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_63
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzd:Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Excessive "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detected; call ignored."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return v6

    :catchall_86
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_3 .. :try_end_88} :catchall_86

    throw v1
.end method
