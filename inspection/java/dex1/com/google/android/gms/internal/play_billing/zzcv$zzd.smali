.class final Lcom/google/android/gms/internal/play_billing/zzcv$zzd;
.super Lcom/google/android/gms/internal/play_billing/zzcv$zza;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field static final zza:Lsun/misc/Unsafe;

.field static final zzb:J

.field static final zzc:J

.field static final zzd:J

.field static final zze:J

.field static final zzf:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_31

    .line 2
    :catch_5
    :try_start_5
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzcy;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_7d

    :try_start_a
    const-string v1, "java.security.AccessController"

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "doPrivileged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/security/PrivilegedExceptionAction;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_2a

    goto :goto_31

    .line 6
    :catch_2a
    :try_start_2a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zzh()Lsun/misc/Unsafe;

    move-result-object v0

    .line 7
    move-object v1, v0

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_7d

    .line 1
    :goto_31
    :try_start_31
    const-class v1, Lcom/google/android/gms/internal/play_billing/zzcv;

    const-string v2, "waitersField"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zzc:J

    const-string v2, "listenersField"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zzb:J

    const-string v2, "valueField"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zzd:J

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    const-string v2, "thread"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zze:J

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    const-string v2, "next"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zzf:J

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zza:Lsun/misc/Unsafe;
    :try_end_75
    .catch Ljava/lang/NoSuchFieldException; {:try_start_31 .. :try_end_75} :catch_76

    return-void

    :catch_76
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    .line 14
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_7d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    .line 8
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcz;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzcv$zza;-><init>(Lcom/google/android/gms/internal/play_billing/zzcz;)V

    return-void
.end method

.method static synthetic zzh()Lsun/misc/Unsafe;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-class v0, Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    const/4 v5, 0x1

    .line 2
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    return-object v0

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_25
    new-instance v0, Ljava/lang/NoSuchFieldError;

    const-string v1, "the Unsafe"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcu$zzd;)Lcom/google/android/gms/internal/play_billing/zzcu$zzd;
    .registers 5

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzcv;->listenersField:Lcom/google/android/gms/internal/play_billing/zzcu$zzd;

    if-ne p2, v0, :cond_5

    goto :goto_b

    :cond_5
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zze(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcu$zzd;Lcom/google/android/gms/internal/play_billing/zzcu$zzd;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_b
    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcv$zze;)Lcom/google/android/gms/internal/play_billing/zzcv$zze;
    .registers 5

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzcv;->waitersField:Lcom/google/android/gms/internal/play_billing/zzcv$zze;

    if-ne p2, v0, :cond_5

    goto :goto_b

    :cond_5
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zzg(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcv$zze;Lcom/google/android/gms/internal/play_billing/zzcv$zze;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_b
    return-object v0
.end method

.method final zzc(Lcom/google/android/gms/internal/play_billing/zzcv$zze;Lcom/google/android/gms/internal/play_billing/zzcv$zze;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zza:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zzf:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/play_billing/zzcv$zze;Ljava/lang/Thread;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zza:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zze:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcu$zzd;Lcom/google/android/gms/internal/play_billing/zzcu$zzd;)Z
    .registers 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zza:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zzb:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzcx;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzf(Lcom/google/android/gms/internal/play_billing/zzcv;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zza:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zzd:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzcx;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzg(Lcom/google/android/gms/internal/play_billing/zzcv;Lcom/google/android/gms/internal/play_billing/zzcv$zze;Lcom/google/android/gms/internal/play_billing/zzcv$zze;)Z
    .registers 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zza:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/play_billing/zzcv$zzd;->zzc:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzcx;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
