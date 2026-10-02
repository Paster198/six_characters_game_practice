.class public abstract Lcom/google/android/gms/common/internal/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# instance fields
.field private zza:Ljava/lang/Object;

.field private zzb:Z

.field final synthetic zzd:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzc;->zzd:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzc;->zza:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zzc;->zzb:Z

    return-void
.end method


# virtual methods
.method protected abstract zzc(Ljava/lang/Object;)V
.end method

.method public final zzd()V
    .registers 8

    .line 1
    const-string v0, " being reused. This is not safe."

    const-string v1, "Callback proxy "

    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzc;->zza:Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/google/android/gms/common/internal/zzc;->zzb:Z

    if-eqz v3, :cond_2c

    const-string v3, "GmsClient"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_3e

    if-eqz v2, :cond_32

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/internal/zzc;->zzc(Ljava/lang/Object;)V

    :cond_32
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_34
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzc;->zzb:Z

    .line 5
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzc;->zze()V

    return-void

    :catchall_3b
    move-exception v0

    .line 5
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0

    :catchall_3e
    move-exception v0

    .line 2
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public final zze()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzc;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzc;->zzd:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw v0
.end method

.method public final zzf()V
    .registers 2

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzc;->zza:Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method
