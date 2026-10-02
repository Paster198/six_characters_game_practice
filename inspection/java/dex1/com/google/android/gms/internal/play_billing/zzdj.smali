.class final Lcom/google/android/gms/internal/play_billing/zzdj;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzbr;

.field private final zzb:Ljava/lang/String;

.field private volatile zzc:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzbr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:Lcom/google/android/gms/internal/play_billing/zzbr;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final zza()Ljava/util/logging/Logger;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Ljava/util/logging/Logger;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:Lcom/google/android/gms/internal/play_billing/zzbr;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Ljava/util/logging/Logger;

    if-eqz v1, :cond_e

    monitor-exit v0

    return-object v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Ljava/util/logging/Logger;

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v1
.end method
