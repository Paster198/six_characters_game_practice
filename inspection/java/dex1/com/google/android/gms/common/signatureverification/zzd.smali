.class public final Lcom/google/android/gms/common/signatureverification/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# static fields
.field private static zza:Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static declared-synchronized zza(Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;)V
    .registers 3

    const-class v0, Lcom/google/android/gms/common/signatureverification/zzd;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/signatureverification/zzd;->zza:Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;

    if-nez v1, :cond_b

    sput-object p0, Lcom/google/android/gms/common/signatureverification/zzd;->zza:Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    monitor-exit v0

    return-void

    :cond_b
    :try_start_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Redundantly setting SignatureVerificationConfiguration"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p0
.end method

.method static synthetic zzb()Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/common/signatureverification/zzd;->zzc()Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized zzc()Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;
    .registers 2

    const-class v0, Lcom/google/android/gms/common/signatureverification/zzd;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/signatureverification/zzd;->zza:Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;

    if-nez v1, :cond_f

    new-instance v1, Lcom/google/android/gms/common/signatureverification/zzb;

    invoke-direct {v1}, Lcom/google/android/gms/common/signatureverification/zzb;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/common/signatureverification/zzd;->zza(Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;)V

    :cond_f
    sget-object v1, Lcom/google/android/gms/common/signatureverification/zzd;->zza:Lcom/google/android/gms/common/signatureverification/SignatureVerificationConfiguration;
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
