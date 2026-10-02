.class public Lcom/google/android/gms/internal/play_billing/zzo;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdk;


# static fields
.field static final zza:Z

.field static final zzb:Lcom/google/android/gms/internal/play_billing/zzd;

.field public static final synthetic zzf:I

.field private static final zzg:Ljava/util/logging/Logger;

.field private static final zzh:Ljava/lang/Object;


# instance fields
.field volatile zzc:Ljava/lang/Object;

.field volatile zzd:Lcom/google/android/gms/internal/play_billing/zzh;

.field volatile zze:Lcom/google/android/gms/internal/play_billing/zzm;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    const-string v0, "zzc"

    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/gms/internal/play_billing/zzo;->zza:Z

    .line 3
    const-class v1, Lcom/google/android/gms/internal/play_billing/zzo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/play_billing/zzo;->zzg:Ljava/util/logging/Logger;

    :try_start_1c
    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzj;

    const-class v2, Lcom/google/android/gms/internal/play_billing/zzm;

    const-class v4, Ljava/lang/Thread;

    const-string v5, "zzb"

    .line 4
    invoke-static {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v2, Lcom/google/android/gms/internal/play_billing/zzm;

    const-class v5, Lcom/google/android/gms/internal/play_billing/zzm;

    .line 5
    invoke-static {v2, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v2, Lcom/google/android/gms/internal/play_billing/zzm;

    const-string v6, "zze"

    .line 6
    invoke-static {v1, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v2, Lcom/google/android/gms/internal/play_billing/zzh;

    const-string v7, "zzd"

    .line 7
    invoke-static {v1, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v2, Ljava/lang/Object;

    .line 8
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/play_billing/zzj;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_49
    .catchall {:try_start_1c .. :try_end_49} :catchall_4b

    const/4 v0, 0x0

    goto :goto_51

    :catchall_4b
    move-exception v0

    .line 9
    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzl;

    invoke-direct {v3}, Lcom/google/android/gms/internal/play_billing/zzl;-><init>()V

    :goto_51
    move-object v9, v0

    .line 8
    sput-object v3, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:Lcom/google/android/gms/internal/play_billing/zzd;

    if-eqz v9, :cond_63

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzo;->zzg:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "<clinit>"

    const-string v8, "SafeAtomicHelper is broken!"

    .line 9
    const-string v6, "com.android.billingclient.util.concurrent.AbstractResolvableFuture"

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzo;->zzh:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/play_billing/zzo;)V
    .registers 5

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zze:Lcom/google/android/gms/internal/play_billing/zzm;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:Lcom/google/android/gms/internal/play_billing/zzd;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzm;->zza:Lcom/google/android/gms/internal/play_billing/zzm;

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/android/gms/internal/play_billing/zzd;->zze(Lcom/google/android/gms/internal/play_billing/zzo;Lcom/google/android/gms/internal/play_billing/zzm;Lcom/google/android/gms/internal/play_billing/zzm;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_c
    const/4 v2, 0x0

    if-nez v0, :cond_3a

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzd:Lcom/google/android/gms/internal/play_billing/zzh;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzh;->zza:Lcom/google/android/gms/internal/play_billing/zzh;

    .line 3
    invoke-virtual {v1, p0, v0, v3}, Lcom/google/android/gms/internal/play_billing/zzd;->zzc(Lcom/google/android/gms/internal/play_billing/zzo;Lcom/google/android/gms/internal/play_billing/zzh;Lcom/google/android/gms/internal/play_billing/zzh;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object p0, v2

    :goto_1a
    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzh;->zzd:Lcom/google/android/gms/internal/play_billing/zzh;

    iput-object p0, v0, Lcom/google/android/gms/internal/play_billing/zzh;->zzd:Lcom/google/android/gms/internal/play_billing/zzh;

    move-object p0, v0

    move-object v0, v1

    goto :goto_1a

    :cond_23
    :goto_23
    if-eqz p0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzh;->zzb:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzh;->zzd:Lcom/google/android/gms/internal/play_billing/zzh;

    instance-of v3, v0, Lcom/google/android/gms/internal/play_billing/zzk;

    if-nez v3, :cond_34

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzh;->zzc:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzo;->zzf(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object p0, v1

    goto :goto_23

    .line 5
    :cond_34
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzk;

    .line 6
    iget-object p0, v0, Lcom/google/android/gms/internal/play_billing/zzk;->zza:Lcom/google/android/gms/internal/play_billing/zzo;

    .line 7
    throw v2

    :cond_39
    return-void

    .line 4
    :cond_3a
    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/zzm;->zzb:Ljava/lang/Thread;

    if-eqz v3, :cond_43

    iput-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzm;->zzb:Ljava/lang/Thread;

    .line 2
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_43
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzm;->zzc:Lcom/google/android/gms/internal/play_billing/zzm;

    goto :goto_c
.end method

.method private final zze(Ljava/lang/StringBuilder;)V
    .registers 5

    .line 1
    const-string v0, "]"

    const/4 v1, 0x0

    :goto_3
    :try_start_3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_7} :catch_5c
    .catchall {:try_start_3 .. :try_end_7} :catchall_29

    if-eqz v1, :cond_10

    .line 2
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_10
    const-string v1, "SUCCESS, result=["

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, p0, :cond_1a

    const-string v1, "this future"

    goto :goto_1e

    .line 5
    :cond_1a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_1e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_25
    move-exception v0

    goto :goto_34

    :catch_27
    move-exception v1

    goto :goto_4c

    :catchall_29
    move-exception v2

    if-eqz v1, :cond_33

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :cond_33
    throw v2
    :try_end_34
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_34} :catch_27
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_34} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_34} :catch_25

    .line 7
    :goto_34
    const-string v1, "UNKNOWN, cause=["

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 8
    :catch_46
    const-string v0, "CANCELLED"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 3
    :goto_4c
    const-string v2, "FAILURE, cause=["

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_5c
    const/4 v1, 0x1

    goto :goto_3
.end method

.method private static zzf(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 8

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    move-object v5, v0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzo;->zzg:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 2
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

    const-string v2, "com.android.billingclient.util.concurrent.AbstractResolvableFuture"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/play_billing/zzm;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzm;->zzb:Ljava/lang/Thread;

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zze:Lcom/google/android/gms/internal/play_billing/zzm;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzm;->zza:Lcom/google/android/gms/internal/play_billing/zzm;

    if-eq p1, v1, :cond_28

    move-object v1, v0

    :goto_a
    if-eqz p1, :cond_28

    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/zzm;->zzc:Lcom/google/android/gms/internal/play_billing/zzm;

    iget-object v3, p1, Lcom/google/android/gms/internal/play_billing/zzm;->zzb:Ljava/lang/Thread;

    if-eqz v3, :cond_14

    move-object v1, p1

    goto :goto_26

    :cond_14
    if-eqz v1, :cond_1d

    iput-object v2, v1, Lcom/google/android/gms/internal/play_billing/zzm;->zzc:Lcom/google/android/gms/internal/play_billing/zzm;

    iget-object p1, v1, Lcom/google/android/gms/internal/play_billing/zzm;->zzb:Ljava/lang/Thread;

    if-nez p1, :cond_26

    goto :goto_3

    :cond_1d
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:Lcom/google/android/gms/internal/play_billing/zzd;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzd;->zze(Lcom/google/android/gms/internal/play_billing/zzo;Lcom/google/android/gms/internal/play_billing/zzm;Lcom/google/android/gms/internal/play_billing/zzm;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_3

    :cond_26
    :goto_26
    move-object p1, v2

    goto :goto_a

    :cond_28
    return-void
.end method

.method private static final zzh(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zze;

    if-nez v0, :cond_18

    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzg;

    if-nez v0, :cond_e

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzo;->zzh:Ljava/lang/Object;

    if-ne p0, v0, :cond_d

    const/4 p0, 0x0

    :cond_d
    return-object p0

    :cond_e
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzg;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzg;->zza:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1
    :cond_18
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zze;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zze;->zzc:Ljava/lang/Throwable;

    .line 2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1
    throw v0
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzk;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v3

    :goto_b
    or-int/2addr v1, v4

    if-eqz v1, :cond_42

    sget-boolean v1, Lcom/google/android/gms/internal/play_billing/zzo;->zza:Z

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zze;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v4}, Lcom/google/android/gms/internal/play_billing/zze;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_26

    :cond_1f
    if-eqz p1, :cond_24

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zze;->zza:Lcom/google/android/gms/internal/play_billing/zze;

    goto :goto_26

    .line 3
    :cond_24
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zze;->zzb:Lcom/google/android/gms/internal/play_billing/zze;

    .line 1
    :cond_26
    :goto_26
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:Lcom/google/android/gms/internal/play_billing/zzd;

    .line 4
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzd;->zzd(Lcom/google/android/gms/internal/play_billing/zzo;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzo;->zzc(Lcom/google/android/gms/internal/play_billing/zzo;)V

    instance-of p1, v0, Lcom/google/android/gms/internal/play_billing/zzk;

    if-nez p1, :cond_36

    return v2

    .line 6
    :cond_36
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzk;

    iget-object p1, v0, Lcom/google/android/gms/internal/play_billing/zzk;->zzb:Lcom/google/android/gms/internal/play_billing/zzdk;

    const/4 p1, 0x0

    .line 7
    throw p1

    .line 5
    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    instance-of p1, v0, Lcom/google/android/gms/internal/play_billing/zzk;

    if-nez p1, :cond_26

    :cond_42
    return v3
.end method

.method public final get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    move v3, v2

    goto :goto_f

    :cond_e
    move v3, v1

    :goto_f
    instance-of v4, v0, Lcom/google/android/gms/internal/play_billing/zzk;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzo;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zze:Lcom/google/android/gms/internal/play_billing/zzm;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzm;->zza:Lcom/google/android/gms/internal/play_billing/zzm;

    if-eq v0, v3, :cond_58

    new-instance v4, Lcom/google/android/gms/internal/play_billing/zzm;

    .line 4
    invoke-direct {v4}, Lcom/google/android/gms/internal/play_billing/zzm;-><init>()V

    :cond_25
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:Lcom/google/android/gms/internal/play_billing/zzd;

    .line 5
    invoke-virtual {v5, v4, v0}, Lcom/google/android/gms/internal/play_billing/zzd;->zza(Lcom/google/android/gms/internal/play_billing/zzm;Lcom/google/android/gms/internal/play_billing/zzm;)V

    .line 6
    invoke-virtual {v5, p0, v0, v4}, Lcom/google/android/gms/internal/play_billing/zzd;->zze(Lcom/google/android/gms/internal/play_billing/zzo;Lcom/google/android/gms/internal/play_billing/zzm;Lcom/google/android/gms/internal/play_billing/zzm;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 7
    :cond_30
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    if-eqz v0, :cond_3f

    move v3, v2

    goto :goto_40

    :cond_3f
    move v3, v1

    :goto_40
    instance-of v5, v0, Lcom/google/android/gms/internal/play_billing/zzk;

    xor-int/2addr v5, v2

    and-int/2addr v3, v5

    if-eqz v3, :cond_30

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzo;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 9
    :cond_4b
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/play_billing/zzo;->zzg(Lcom/google/android/gms/internal/play_billing/zzm;)V

    new-instance v0, Ljava/lang/InterruptedException;

    .line 10
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 11
    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zze:Lcom/google/android/gms/internal/play_billing/zzm;

    if-ne v0, v3, :cond_25

    :cond_58
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzo;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_5f
    new-instance v0, Ljava/lang/InterruptedException;

    .line 2
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 13
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 14
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_177

    .line 15
    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_17

    move v9, v8

    goto :goto_18

    :cond_17
    const/4 v9, 0x0

    :goto_18
    instance-of v10, v6, Lcom/google/android/gms/internal/play_billing/zzk;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_23

    .line 16
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzo;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_23
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2f

    .line 17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_30

    :cond_2f
    move-wide v11, v9

    :goto_30
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_8d

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/zzo;->zze:Lcom/google/android/gms/internal/play_billing/zzm;

    sget-object v15, Lcom/google/android/gms/internal/play_billing/zzm;->zza:Lcom/google/android/gms/internal/play_billing/zzm;

    if-eq v6, v15, :cond_86

    new-instance v7, Lcom/google/android/gms/internal/play_billing/zzm;

    .line 18
    invoke-direct {v7}, Lcom/google/android/gms/internal/play_billing/zzm;-><init>()V

    move/from16 v16, v8

    :cond_43
    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:Lcom/google/android/gms/internal/play_billing/zzd;

    .line 19
    invoke-virtual {v8, v7, v6}, Lcom/google/android/gms/internal/play_billing/zzd;->zza(Lcom/google/android/gms/internal/play_billing/zzm;Lcom/google/android/gms/internal/play_billing/zzm;)V

    .line 20
    invoke-virtual {v8, v0, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzd;->zze(Lcom/google/android/gms/internal/play_billing/zzo;Lcom/google/android/gms/internal/play_billing/zzm;Lcom/google/android/gms/internal/play_billing/zzm;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 21
    :cond_4e
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 22
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_79

    .line 25
    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    if-eqz v4, :cond_5e

    move/from16 v5, v16

    goto :goto_5f

    :cond_5e
    const/4 v5, 0x0

    :goto_5f
    instance-of v6, v4, Lcom/google/android/gms/internal/play_billing/zzk;

    xor-int/lit8 v6, v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_6b

    .line 26
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzo;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 23
    :cond_6b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4e

    .line 27
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzo;->zzg(Lcom/google/android/gms/internal/play_billing/zzm;)V

    goto :goto_8f

    .line 24
    :cond_79
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/play_billing/zzo;->zzg(Lcom/google/android/gms/internal/play_billing/zzm;)V

    new-instance v1, Ljava/lang/InterruptedException;

    .line 25
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 29
    :cond_82
    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/zzo;->zze:Lcom/google/android/gms/internal/play_billing/zzm;

    if-ne v6, v15, :cond_43

    :cond_86
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    .line 42
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzo;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_8d
    move/from16 v16, v8

    :goto_8f
    cmp-long v6, v4, v9

    if-lez v6, :cond_ba

    .line 27
    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    if-eqz v4, :cond_9a

    move/from16 v5, v16

    goto :goto_9b

    :cond_9a
    const/4 v5, 0x0

    :goto_9b
    instance-of v6, v4, Lcom/google/android/gms/internal/play_billing/zzk;

    xor-int/lit8 v6, v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_a7

    .line 30
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzo;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 28
    :cond_a7
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_b4

    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_8f

    .line 28
    :cond_b4
    new-instance v1, Ljava/lang/InterruptedException;

    .line 31
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 32
    :cond_ba
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzo;->toString()Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-virtual {v3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-virtual {v3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Waited "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v8, v11, v9

    if-gez v8, :cond_14b

    const-string v8, " (plus "

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    invoke-virtual {v3, v4, v5, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 36
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    cmp-long v3, v11, v9

    if-eqz v3, :cond_10c

    cmp-long v8, v4, v13

    if-lez v8, :cond_10a

    goto :goto_10c

    :cond_10a
    const/16 v16, 0x0

    :cond_10c
    :goto_10c
    if-lez v3, :cond_12f

    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_12b

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12b
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12f
    if-eqz v16, :cond_145

    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_145
    const-string v1, "delay)"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    :cond_14b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzo;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15d

    const-string v1, " but future completed as timeout expired"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_15d
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_177
    new-instance v1, Ljava/lang/InterruptedException;

    .line 15
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public final isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/play_billing/zze;

    return v0
.end method

.method public final isDone()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzk;

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/play_billing/zze;

    const-string v2, "]"

    if-eqz v1, :cond_1f

    const-string v1, "CANCELLED"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 3
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzo;->isDone()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzo;->zze(Ljava/lang/StringBuilder;)V

    goto :goto_64

    .line 5
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzo;->zza()Ljava/lang/String;

    move-result-object v1
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2d} :catch_2e

    goto :goto_41

    :catch_2e
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Exception thrown from implementation: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_41
    if-eqz v1, :cond_55

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_55

    const-string v3, "PENDING, info=["

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 8
    :cond_55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzo;->isDone()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzo;->zze(Ljava/lang/StringBuilder;)V

    goto :goto_64

    :cond_5f
    const-string v1, "PENDING"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :goto_64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zza()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzk;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzk;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzk;->zzb:Lcom/google/android/gms/internal/play_billing/zzdk;

    const-string v0, "setFuture=[null]"

    return-object v0

    .line 2
    :cond_d
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2e

    .line 3
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remaining delay=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 7

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzd:Lcom/google/android/gms/internal/play_billing/zzh;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzh;->zza:Lcom/google/android/gms/internal/play_billing/zzh;

    if-eq v0, v1, :cond_1d

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzh;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzh;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_e
    iput-object v0, v2, Lcom/google/android/gms/internal/play_billing/zzh;->zzd:Lcom/google/android/gms/internal/play_billing/zzh;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:Lcom/google/android/gms/internal/play_billing/zzd;

    invoke-virtual {v3, p0, v0, v2}, Lcom/google/android/gms/internal/play_billing/zzd;->zzc(Lcom/google/android/gms/internal/play_billing/zzo;Lcom/google/android/gms/internal/play_billing/zzh;Lcom/google/android/gms/internal/play_billing/zzh;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzo;->zzd:Lcom/google/android/gms/internal/play_billing/zzh;

    if-ne v0, v1, :cond_e

    .line 2
    :cond_1d
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzo;->zzf(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected zzd(Ljava/lang/Object;)Z
    .registers 4

    if-nez p1, :cond_4

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzo;->zzh:Ljava/lang/Object;

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:Lcom/google/android/gms/internal/play_billing/zzd;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzd;->zzd(Lcom/google/android/gms/internal/play_billing/zzo;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzo;->zzc(Lcom/google/android/gms/internal/play_billing/zzo;)V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method
