.class public abstract Lcom/google/android/gms/internal/play_billing/zzcu;
.super Lcom/google/android/gms/internal/play_billing/zzcv;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/play_billing/zzcv<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcv;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/play_billing/zzdk;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzr(Lcom/google/android/gms/internal/play_billing/zzdk;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    if-nez v0, :cond_18

    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;

    if-nez v0, :cond_e

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcu;->zza:Ljava/lang/Object;

    if-ne p0, v0, :cond_d

    const/4 p0, 0x0

    :cond_d
    return-object p0

    .line 4
    :cond_e
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;->zzb:Ljava/lang/Throwable;

    .line 5
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 4
    throw v0

    .line 1
    :cond_18
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    .line 2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;->zzd:Ljava/lang/Throwable;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1
    throw v0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/play_billing/zzcu;Z)V
    .registers 2

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzu(Lcom/google/android/gms/internal/play_billing/zzcu;Z)V

    return-void
.end method

.method static zzh(Ljava/lang/Object;)Z
    .registers 1

    instance-of p0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static zzr(Lcom/google/android/gms/internal/play_billing/zzdk;)Ljava/lang/Object;
    .registers 8

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    .line 1
    instance-of v1, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zze;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzcu;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    if-eqz v0, :cond_23

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    .line 3
    iget-boolean v1, v0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;->zzc:Z

    if-eqz v1, :cond_23

    .line 4
    iget-object p0, v0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;->zzd:Ljava/lang/Throwable;

    if-eqz p0, :cond_21

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    .line 5
    invoke-direct {v0, v2, p0}, Lcom/google/android/gms/internal/play_billing/zzcu$zza;-><init>(ZLjava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_23

    .line 6
    :cond_21
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;->zzb:Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    :cond_23
    :goto_23
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_28
    instance-of v1, p0, Lcom/google/android/gms/internal/play_billing/zzdq;

    if-eqz v1, :cond_3c

    .line 7
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzdq;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzdq;->zze()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_36

    goto :goto_3c

    .line 9
    :cond_36
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 10
    :cond_3c
    :goto_3c
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzdk;->isCancelled()Z

    move-result v1

    sget-boolean v3, Lcom/google/android/gms/internal/play_billing/zzcu;->zzc:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_4e

    .line 11
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;->zzb:Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12
    :cond_4e
    :try_start_4e
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzs(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_6f

    .line 13
    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/play_billing/zzcu$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_6f
    if-nez v3, :cond_74

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzcu;->zza:Ljava/lang/Object;
    :try_end_73
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4e .. :try_end_73} :catch_9e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4e .. :try_end_73} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_73} :catch_75
    .catch Ljava/lang/Error; {:try_start_4e .. :try_end_73} :catch_75

    return-object p0

    :cond_74
    return-object v3

    :catch_75
    move-exception p0

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_7c
    move-exception v0

    if-nez v1, :cond_98

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 16
    :cond_98
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzcu$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_9e
    move-exception v3

    if-eqz v1, :cond_b8

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/play_billing/zzcu$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    .line 18
    :cond_b8
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static zzs(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1b
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    if-eqz v0, :cond_e

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object p0

    :catchall_f
    move-exception p0

    if-nez v0, :cond_13

    goto :goto_1a

    :cond_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :goto_1a
    throw p0

    :catch_1b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private final zzt(Ljava/lang/StringBuilder;)V
    .registers 5

    .line 1
    const-string v0, "]"

    :try_start_2
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzs(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_13

    const-string v1, "null"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_13
    if-ne v1, p0, :cond_1b

    .line 8
    const-string v1, "this future"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :goto_36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_39} :catch_53
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_39} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception v0

    .line 10
    const-string v1, "UNKNOWN, cause=["

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 11
    :catch_4d
    const-string v0, "CANCELLED"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_53
    move-exception v1

    .line 7
    const-string v2, "FAILURE, cause=["

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zzu(Lcom/google/android/gms/internal/play_billing/zzcu;Z)V
    .registers 5

    const/4 p1, 0x0

    .line 1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcv;->zzo()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzg()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcu$zzd;->zza:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcv;->zzk(Lcom/google/android/gms/internal/play_billing/zzcu$zzd;)Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    move-result-object p0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    :goto_10
    if-eqz p1, :cond_19

    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzcu$zzd;->next:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    iput-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzcu$zzd;->next:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    move-object p0, p1

    move-object p1, v0

    goto :goto_10

    :cond_19
    :goto_19
    if-eqz p0, :cond_4c

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzd;->zzb:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzd;->next:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;

    if-eqz v1, :cond_3f

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;

    .line 6
    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zza:Lcom/google/android/gms/internal/play_billing/zzcu;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    if-ne v1, p1, :cond_4a

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zzb:Lcom/google/android/gms/internal/play_billing/zzdk;

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzr(Lcom/google/android/gms/internal/play_billing/zzdk;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzq(Lcom/google/android/gms/internal/play_billing/zzcv;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    move-object p1, v0

    goto :goto_1

    :cond_3f
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zzd;->zzc:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzv(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_4a
    move-object p0, v0

    goto :goto_19

    :cond_4c
    return-void
.end method

.method private static zzv(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 8

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    move-object v5, v0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcu;->zzb:Lcom/google/android/gms/internal/play_billing/zzdj;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdj;->zza()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RuntimeException while executing runnable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    .line 3
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_a

    move v4, v3

    goto :goto_b

    :cond_a
    move v4, v2

    :goto_b
    or-int/2addr v1, v4

    if-eqz v1, :cond_60

    sget-boolean v1, Lcom/google/android/gms/internal/play_billing/zzcu;->zzc:Z

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v4}, Lcom/google/android/gms/internal/play_billing/zzcu$zza;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_2a

    :cond_1f
    if-eqz p1, :cond_24

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcu$zza;->zza:Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    goto :goto_26

    .line 3
    :cond_24
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcu$zza;->zzb:Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    .line 4
    :goto_26
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2a
    move-object v4, p0

    move v5, v2

    .line 5
    :cond_2c
    :goto_2c
    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzq(Lcom/google/android/gms/internal/play_billing/zzcv;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 6
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzu(Lcom/google/android/gms/internal/play_billing/zzcu;Z)V

    instance-of v4, v0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;

    if-eqz v4, :cond_56

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zzb:Lcom/google/android/gms/internal/play_billing/zzdk;

    instance-of v4, v0, Lcom/google/android/gms/internal/play_billing/zzcu$zze;

    if-eqz v4, :cond_53

    .line 8
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzcu;

    iget-object v0, v4, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    if-nez v0, :cond_4a

    move v5, v3

    goto :goto_4b

    :cond_4a
    move v5, v2

    :goto_4b
    instance-of v6, v0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;

    or-int/2addr v5, v6

    if-eqz v5, :cond_52

    move v5, v3

    goto :goto_2c

    :cond_52
    return v3

    .line 9
    :cond_53
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzdk;->cancel(Z)Z

    :cond_56
    return v3

    :cond_57
    iget-object v0, v4, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzh(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    return v5

    :cond_60
    return v2
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcv;->zzl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzcv;->zzm(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    return v0
.end method

.method public final isDone()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzh(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    and-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 20
    :cond_21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    const/16 v1, 0x40

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    const-string v2, "]"

    if-eqz v1, :cond_50

    const-string v1, "CANCELLED"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_cd

    .line 7
    :cond_50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcu;->isDone()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 24
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzt(Ljava/lang/StringBuilder;)V

    goto/16 :goto_cd

    .line 8
    :cond_5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v3, "PENDING"

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    instance-of v4, v3, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;

    const-string v5, "Exception thrown from implementation: "

    if-eqz v4, :cond_93

    const-string v4, ", setFuture=["

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;

    iget-object v3, v3, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;->zzb:Lcom/google/android/gms/internal/play_billing/zzdk;

    if-ne v3, p0, :cond_7d

    :try_start_77
    const-string v3, "this future"

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8f

    .line 13
    :cond_7d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_81

    goto :goto_8f

    :catchall_81
    move-exception v3

    .line 14
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdl;->zza(Ljava/lang/Throwable;)V

    .line 15
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    :goto_8f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bd

    .line 17
    :cond_93
    :try_start_93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_9b
    .catchall {:try_start_93 .. :try_end_9b} :catchall_9c

    goto :goto_b0

    :catchall_9c
    move-exception v3

    .line 18
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzdl;->zza(Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 19
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_b0
    if-eqz v3, :cond_bd

    .line 17
    const-string v4, ", info=["

    .line 20
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_bd
    :goto_bd
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcu;->isDone()Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzt(Ljava/lang/StringBuilder;)V

    .line 25
    :cond_cd
    :goto_cd
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 1
    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzbl;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcu;->isDone()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->listenersField:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcu$zzd;->zza:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    if-eq v0, v1, :cond_26

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzcu$zzd;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_16
    iput-object v0, v1, Lcom/google/android/gms/internal/play_billing/zzcu$zzd;->next:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcv;->zzp(Lcom/google/android/gms/internal/play_billing/zzcu$zzd;Lcom/google/android/gms/internal/play_billing/zzcu$zzd;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->listenersField:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzcu$zzd;->zza:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    if-ne v0, v2, :cond_16

    goto :goto_26

    :cond_25
    return-void

    .line 4
    :cond_26
    :goto_26
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzv(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected zzd()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method protected final zze()Ljava/lang/Throwable;
    .registers 3

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzcu$zze;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;->zzb:Ljava/lang/Throwable;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method protected zzg()V
    .registers 1

    return-void
.end method

.method protected final zzi(Ljava/lang/Throwable;)Z
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzq(Lcom/google/android/gms/internal/play_billing/zzcv;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzu(Lcom/google/android/gms/internal/play_billing/zzcu;Z)V

    const/4 p1, 0x1

    return p1

    :cond_12
    return v0
.end method

.method protected final zzj(Lcom/google/android/gms/internal/play_billing/zzdk;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_3c

    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/zzdk;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1c

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzr(Lcom/google/android/gms/internal/play_billing/zzdk;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-static {p0, v3, p1}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzq(Lcom/google/android/gms/internal/play_billing/zzcv;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 4
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzu(Lcom/google/android/gms/internal/play_billing/zzcu;Z)V

    return v2

    :cond_1b
    return v1

    :cond_1c
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzcu$zzb;-><init>(Lcom/google/android/gms/internal/play_billing/zzcu;Lcom/google/android/gms/internal/play_billing/zzdk;)V

    .line 5
    invoke-static {p0, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzq(Lcom/google/android/gms/internal/play_billing/zzcv;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    :try_start_27
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzda;->zza:Lcom/google/android/gms/internal/play_billing/zzda;

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2d

    goto :goto_39

    :catchall_2d
    move-exception p1

    .line 7
    :try_start_2e
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;-><init>(Ljava/lang/Throwable;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_34
    .catch Ljava/lang/Error; {:try_start_2e .. :try_end_33} :catch_34

    goto :goto_36

    .line 8
    :catch_34
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcu$zzc;->zza:Lcom/google/android/gms/internal/play_billing/zzcu$zzc;

    .line 9
    :goto_36
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzq(Lcom/google/android/gms/internal/play_billing/zzcv;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_39
    return v2

    .line 6
    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    :cond_3c
    instance-of v2, v0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    if-eqz v2, :cond_47

    .line 10
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/play_billing/zzcu$zza;->zzc:Z

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzdk;->cancel(Z)Z

    :cond_47
    return v1
.end method
