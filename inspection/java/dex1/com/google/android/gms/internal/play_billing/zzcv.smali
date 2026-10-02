.class abstract Lcom/google/android/gms/internal/play_billing/zzcv;
.super Lcom/google/android/gms/internal/play_billing/zzdq;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/play_billing/zzdq;",
        "Lcom/google/android/gms/internal/play_billing/zzdk<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final zza:Ljava/lang/Object;

.field static final zzb:Lcom/google/android/gms/internal/play_billing/zzdj;

.field static final zzc:Z

.field private static final zzd:Lcom/google/android/gms/internal/play_billing/zzcv$zza;


# instance fields
.field volatile listenersField:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

.field volatile valueField:Ljava/lang/Object;

.field volatile waitersField:Lcom/google/android/gms/internal/play_billing/zzcv$zze;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcv;->zza:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzdj;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzcu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzdj;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcv;->zzb:Lcom/google/android/gms/internal/play_billing/zzdj;

    :try_start_10
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    .line 2
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_1c} :catch_1d

    goto :goto_1e

    :catch_1d
    const/4 v0, 0x0

    :goto_1e
    sput-boolean v0, Lcom/google/android/gms/internal/play_billing/zzcv;->zzc:Z

    const-string v0, "java.runtime.name"

    const-string v1, ""

    .line 4
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    const-string v2, "Android"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_40

    .line 6
    :cond_34
    :try_start_34
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcv$zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcv$zzb;-><init>(Lcom/google/android/gms/internal/play_billing/zzcz;)V
    :try_end_39
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_34 .. :try_end_39} :catch_3a

    goto :goto_45

    .line 8
    :catch_3a
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcv$zzc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcv$zzc;-><init>(Lcom/google/android/gms/internal/play_billing/zzcz;)V

    goto :goto_45

    .line 7
    :cond_40
    :goto_40
    :try_start_40
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;-><init>(Lcom/google/android/gms/internal/play_billing/zzcz;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_45} :catch_4a
    .catch Ljava/lang/Error; {:try_start_40 .. :try_end_45} :catch_48

    :goto_45
    move-object v6, v1

    move-object v12, v6

    goto :goto_5f

    :catch_48
    move-exception v0

    goto :goto_4b

    :catch_4a
    move-exception v0

    :goto_4b
    move-object v2, v0

    .line 8
    :try_start_4c
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcv$zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcv$zzb;-><init>(Lcom/google/android/gms/internal/play_billing/zzcz;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_51} :catch_56
    .catch Ljava/lang/Error; {:try_start_4c .. :try_end_51} :catch_54

    move-object v6, v1

    move-object v12, v2

    goto :goto_5f

    :catch_54
    move-exception v0

    goto :goto_57

    :catch_56
    move-exception v0

    :goto_57
    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzcv$zzc;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzcv$zzc;-><init>(Lcom/google/android/gms/internal/play_billing/zzcz;)V

    move-object v6, v0

    move-object v12, v2

    move-object v0, v3

    .line 7
    :goto_5f
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcv;->zzd:Lcom/google/android/gms/internal/play_billing/zzcv$zza;

    if-eqz v6, :cond_83

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcv;->zzb:Lcom/google/android/gms/internal/play_billing/zzdj;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdj;->zza()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v10, "<clinit>"

    const-string v11, "UnsafeAtomicHelper is broken!"

    const-string v9, "com.google.common.util.concurrent.AbstractFutureState"

    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzdj;->zza()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "<clinit>"

    const-string v5, "AtomicReferenceFieldUpdaterAtomicHelper is broken!"

    .line 11
    const-string v3, "com.google.common.util.concurrent.AbstractFutureState"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_83
    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzdq;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/play_billing/zzcv$zze;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->thread:Ljava/lang/Thread;

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->waitersField:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->zza:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    if-eq p1, v1, :cond_28

    move-object v1, v0

    :goto_a
    if-eqz p1, :cond_28

    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->next:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_14

    move-object v1, p1

    goto :goto_26

    :cond_14
    if-eqz v1, :cond_1d

    iput-object v2, v1, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->next:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    iget-object p1, v1, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_26

    goto :goto_3

    :cond_1d
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzcv;->zzd:Lcom/google/android/gms/internal/play_billing/zzcv$zza;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzcv$zza;->zzg(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcv$zze;Lcom/google/android/gms/internal/play_billing/zzcv$zze;)Z

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

.method static synthetic zzn(Lcom/google/android/gms/internal/play_billing/zzcv$zze;Ljava/lang/Thread;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcv;->zzd:Lcom/google/android/gms/internal/play_billing/zzcv$zza;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzcv$zza;->zzd(Lcom/google/android/gms/internal/play_billing/zzcv$zze;Ljava/lang/Thread;)V

    return-void
.end method

.method static zzq(Lcom/google/android/gms/internal/play_billing/zzcv;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcv;->zzd:Lcom/google/android/gms/internal/play_billing/zzcv$zza;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzcv$zza;->zzf(Lcom/google/android/gms/internal/play_billing/zzcv;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method final zzk(Lcom/google/android/gms/internal/play_billing/zzcu$zzd;)Lcom/google/android/gms/internal/play_billing/zzcu$zzd;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcv;->zzd:Lcom/google/android/gms/internal/play_billing/zzcv$zza;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzcv$zza;->zza(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcu$zzd;)Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    move-result-object p1

    return-object p1
.end method

.method final zzl()Ljava/lang/Object;
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

    if-nez v0, :cond_67

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    .line 3
    :goto_f
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzh(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1b

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->waitersField:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->zza:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    if-eq v0, v3, :cond_5c

    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    .line 5
    invoke-direct {v3}, Lcom/google/android/gms/internal/play_billing/zzcv$zze;-><init>()V

    :cond_26
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzcv;->zzd:Lcom/google/android/gms/internal/play_billing/zzcv$zza;

    .line 6
    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzcv$zza;->zzc(Lcom/google/android/gms/internal/play_billing/zzcv$zze;Lcom/google/android/gms/internal/play_billing/zzcv$zze;)V

    .line 7
    invoke-virtual {v4, p0, v0, v3}, Lcom/google/android/gms/internal/play_billing/zzcv$zza;->zzg(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcv$zze;Lcom/google/android/gms/internal/play_billing/zzcv$zze;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 8
    :cond_31
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    if-eqz v0, :cond_40

    move v4, v1

    goto :goto_41

    :cond_40
    move v4, v2

    :goto_41
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzh(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_31

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 10
    :cond_4d
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/play_billing/zzcv;->zza(Lcom/google/android/gms/internal/play_billing/zzcv$zze;)V

    new-instance v0, Ljava/lang/InterruptedException;

    .line 11
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 12
    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->waitersField:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->zza:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    if-ne v0, v4, :cond_26

    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_67
    new-instance v0, Ljava/lang/InterruptedException;

    .line 2
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final zzm(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 22
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

    .line 1
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_180

    .line 3
    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_17

    move v9, v8

    goto :goto_18

    :cond_17
    const/4 v9, 0x0

    .line 4
    :goto_18
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzh(Ljava/lang/Object;)Z

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_24

    .line 5
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_24
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_30

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_31

    :cond_30
    move-wide v11, v9

    :goto_31
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_9a

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/zzcv;->waitersField:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    sget-object v15, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->zza:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    if-eq v6, v15, :cond_8f

    new-instance v15, Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    .line 7
    invoke-direct {v15}, Lcom/google/android/gms/internal/play_billing/zzcv$zze;-><init>()V

    :cond_42
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzcv;->zzd:Lcom/google/android/gms/internal/play_billing/zzcv$zza;

    .line 8
    invoke-virtual {v7, v15, v6}, Lcom/google/android/gms/internal/play_billing/zzcv$zza;->zzc(Lcom/google/android/gms/internal/play_billing/zzcv$zze;Lcom/google/android/gms/internal/play_billing/zzcv$zze;)V

    .line 9
    invoke-virtual {v7, v0, v6, v15}, Lcom/google/android/gms/internal/play_billing/zzcv$zza;->zzg(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcv$zze;Lcom/google/android/gms/internal/play_billing/zzcv$zze;)Z

    move-result v6

    if-eqz v6, :cond_89

    :cond_4d
    const-wide v6, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    .line 10
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_80

    .line 14
    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    if-eqz v4, :cond_65

    move v5, v8

    goto :goto_66

    :cond_65
    const/4 v5, 0x0

    :goto_66
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzh(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_72

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 12
    :cond_72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4d

    .line 16
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/play_billing/zzcv;->zza(Lcom/google/android/gms/internal/play_billing/zzcv$zze;)V

    goto :goto_9a

    .line 13
    :cond_80
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/play_billing/zzcv;->zza(Lcom/google/android/gms/internal/play_billing/zzcv$zze;)V

    new-instance v1, Ljava/lang/InterruptedException;

    .line 14
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 18
    :cond_89
    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/zzcv;->waitersField:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->zza:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    if-ne v6, v7, :cond_42

    :cond_8f
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    .line 31
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_9a
    :goto_9a
    cmp-long v6, v4, v9

    if-lez v6, :cond_c4

    .line 16
    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/zzcv;->valueField:Ljava/lang/Object;

    if-eqz v4, :cond_a4

    move v5, v8

    goto :goto_a5

    :cond_a4
    const/4 v5, 0x0

    :goto_a5
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzh(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_b1

    .line 19
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 17
    :cond_b1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_be

    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_9a

    .line 17
    :cond_be
    new-instance v1, Ljava/lang/InterruptedException;

    .line 20
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 21
    :cond_c4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {v3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-virtual {v3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "Waited "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v11, v11, v9

    if-gez v11, :cond_154

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 25
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    sub-long v4, v4, v16

    cmp-long v3, v11, v9

    if-eqz v3, :cond_115

    cmp-long v9, v4, v13

    if-lez v9, :cond_114

    goto :goto_115

    :cond_114
    const/4 v8, 0x0

    :cond_115
    :goto_115
    if-lez v3, :cond_138

    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_134

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_134
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_138
    if-eqz v8, :cond_14e

    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_14e
    const-string v1, "delay)"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    :cond_154
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcv;->isDone()Z

    move-result v1

    if-eqz v1, :cond_166

    const-string v1, " but future completed as timeout expired"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_166
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

    .line 2
    :cond_180
    new-instance v1, Ljava/lang/InterruptedException;

    .line 3
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method final zzo()V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->zza:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzcv;->zzd:Lcom/google/android/gms/internal/play_billing/zzcv$zza;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcv$zza;->zzb(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcv$zze;)Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_14

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->thread:Ljava/lang/Thread;

    .line 2
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_14
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzcv$zze;->next:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    goto :goto_8

    :cond_17
    return-void
.end method

.method final zzp(Lcom/google/android/gms/internal/play_billing/zzcu$zzd;Lcom/google/android/gms/internal/play_billing/zzcu$zzd;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcv;->zzd:Lcom/google/android/gms/internal/play_billing/zzcv$zza;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzcv$zza;->zze(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcu$zzd;Lcom/google/android/gms/internal/play_billing/zzcu$zzd;)Z

    move-result p1

    return p1
.end method
