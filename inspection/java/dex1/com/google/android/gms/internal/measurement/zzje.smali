.class public final Lcom/google/android/gms/internal/measurement/zzje;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzjd;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static declared-synchronized zza()Lcom/google/android/gms/internal/measurement/zzjd;
    .registers 2

    const-class v0, Lcom/google/android/gms/internal/measurement/zzje;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzje;->zza:Lcom/google/android/gms/internal/measurement/zzjd;

    if-nez v1, :cond_f

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzjh;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzje;->zzb(Lcom/google/android/gms/internal/measurement/zzjd;)V

    :cond_f
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzje;->zza:Lcom/google/android/gms/internal/measurement/zzjd;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static declared-synchronized zzb(Lcom/google/android/gms/internal/measurement/zzjd;)V
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/measurement/zzje;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzje;->zza:Lcom/google/android/gms/internal/measurement/zzjd;

    if-nez v1, :cond_b

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzje;->zza:Lcom/google/android/gms/internal/measurement/zzjd;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    monitor-exit v0

    return-void

    :cond_b
    :try_start_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "init() already called"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p0
.end method
