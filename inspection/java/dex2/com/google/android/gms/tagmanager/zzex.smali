.class final Lcom/google/android/gms/tagmanager/zzex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzec;


# instance fields
.field private zza:D

.field private zzb:J

.field private final zzc:Ljava/lang/Object;

.field private final zzd:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzex;->zzc:Ljava/lang/Object;

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzex;->zza:D

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzex;->zzd:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzex;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzex;->zzd:Lcom/google/android/gms/common/util/Clock;

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzex;->zza:D

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    cmpg-double v7, v3, v5

    if-gez v7, :cond_29

    iget-wide v7, p0, Lcom/google/android/gms/tagmanager/zzex;->zzb:J

    sub-long v7, v1, v7

    long-to-double v7, v7

    const-wide v9, 0x409f400000000000L    # 2000.0

    div-double/2addr v7, v9

    const-wide/16 v9, 0x0

    cmpl-double v9, v7, v9

    if-lez v9, :cond_29

    add-double/2addr v3, v7

    .line 2
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/tagmanager/zzex;->zza:D

    :cond_29
    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzex;->zzb:J

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v3, v1

    if-ltz v1, :cond_39

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    add-double/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/gms/tagmanager/zzex;->zza:D

    .line 3
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_39
    const-string v1, "No more tokens available."

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    .line 5
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_41
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method
