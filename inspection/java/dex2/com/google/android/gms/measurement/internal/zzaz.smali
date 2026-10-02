.class abstract Lcom/google/android/gms/measurement/internal/zzaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field private static volatile zza:Landroid/os/Handler;


# instance fields
.field private final zzb:Lcom/google/android/gms/measurement/internal/zzjs;

.field private final zzc:Ljava/lang/Runnable;

.field private volatile zzd:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjs;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzb:Lcom/google/android/gms/measurement/internal/zzjs;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzay;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Lcom/google/android/gms/measurement/internal/zzaz;Lcom/google/android/gms/measurement/internal/zzjs;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzc:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzaz;J)V
    .registers 3

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzd:J

    return-void
.end method

.method private final zzf()Landroid/os/Handler;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaz;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaz;->zza:Landroid/os/Handler;

    return-object v0

    :cond_7
    const-class v0, Lcom/google/android/gms/measurement/internal/zzaz;

    monitor-enter v0

    :try_start_a
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaz;->zza:Landroid/os/Handler;

    if-nez v1, :cond_1f

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzcr;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzb:Lcom/google/android/gms/measurement/internal/zzjs;

    invoke-interface {v2}, Lcom/google/android/gms/measurement/internal/zzjs;->zzaT()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzcr;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzaz;->zza:Landroid/os/Handler;

    :cond_1f
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaz;->zza:Landroid/os/Handler;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_23
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_23

    throw v1
.end method


# virtual methods
.method final zzb()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzd:J

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzaz;->zzf()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract zzc()V
.end method

.method public final zzd(J)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaz;->zzb()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzb:Lcom/google/android/gms/measurement/internal/zzjs;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzjs;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzd:J

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzaz;->zzf()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    if-nez v1, :cond_32

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzjs;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Failed to schedule delayed post. time"

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_32
    return-void
.end method

.method public final zze()Z
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
