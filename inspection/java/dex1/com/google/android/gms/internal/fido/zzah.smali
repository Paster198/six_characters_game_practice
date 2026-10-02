.class final Lcom/google/android/gms/internal/fido/zzah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static volatile zzb:Z = false

.field private static volatile zzc:Lcom/google/android/gms/internal/fido/zzag; = null

.field private static volatile zzd:Z = false

.field private static volatile zze:Lcom/google/android/gms/internal/fido/zzag;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzah;->zza:Ljava/lang/Object;

    return-void
.end method

.method static zza()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/fido/zzah;->zzd:Z

    return-void
.end method

.method static zzb()V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzah;->zze:Lcom/google/android/gms/internal/fido/zzag;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/fido/zzag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzag;-><init>(Lcom/google/android/gms/internal/fido/zzaf;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzah;->zze:Lcom/google/android/gms/internal/fido/zzag;

    :cond_c
    return-void
.end method

.method static zzc()V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzah;->zzc:Lcom/google/android/gms/internal/fido/zzag;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/fido/zzag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzag;-><init>(Lcom/google/android/gms/internal/fido/zzaf;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzah;->zzc:Lcom/google/android/gms/internal/fido/zzag;

    :cond_c
    return-void
.end method

.method static zzd()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzah;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_6
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_6

    throw v1
.end method
