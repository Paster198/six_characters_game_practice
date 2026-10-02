.class final Lcom/google/android/gms/common/internal/zzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/zzq;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/internal/zzq;[B)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "Timeout waiting for ServiceConnection callback "

    const/4 v2, 0x1

    if-eqz v0, :cond_75

    if-eq v0, v2, :cond_b

    const/4 p1, 0x0

    return p1

    .line 14
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzf()Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 2
    :try_start_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzf()Ljava/util/HashMap;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzo;

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzo;->zze()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_70

    const-string v4, "GmsClientSupervisor"

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzo;->zzi()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_5a

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzn;->zzc()Landroid/content/ComponentName;

    move-result-object v1

    :cond_5a
    if-nez v1, :cond_6d

    new-instance v1, Landroid/content/ComponentName;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzn;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const-string v4, "unknown"

    invoke-direct {v1, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_6d
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzo;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 8
    :cond_70
    monitor-exit v3

    return v2

    :catchall_72
    move-exception p1

    monitor-exit v3
    :try_end_74
    .catchall {:try_start_12 .. :try_end_74} :catchall_72

    throw p1

    .line 1
    :cond_75
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzf()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 9
    :try_start_7c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzf()Ljava/util/HashMap;

    move-result-object v3

    .line 10
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/zzo;

    if-eqz v3, :cond_a4

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzo;->zzg()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzo;->zzd()Z

    move-result v4

    if-eqz v4, :cond_9d

    const-string v4, "GmsClientSupervisor"

    .line 12
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/internal/zzo;->zza(Ljava/lang/String;)V

    :cond_9d
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzf()Ljava/util/HashMap;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_a4
    monitor-exit v1

    return v2

    :catchall_a6
    move-exception p1

    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_7c .. :try_end_a8} :catchall_a6

    throw p1
.end method
