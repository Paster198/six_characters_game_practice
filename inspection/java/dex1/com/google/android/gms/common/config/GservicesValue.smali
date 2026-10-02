.class public abstract Lcom/google/android/gms/common/config/GservicesValue;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzc:Ljava/lang/Object;


# instance fields
.field protected final zza:Ljava/lang/String;

.field protected final zzb:Ljava/lang/Object;

.field private zzd:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/config/GservicesValue;->zzc:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/config/GservicesValue;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public static isInitialized()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/common/config/GservicesValue;->zzc:Ljava/lang/Object;

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

.method public static value(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/zzd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zzd;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/zzc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zzc;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/zzb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zzb;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/zze;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Z)Lcom/google/android/gms/common/config/GservicesValue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/config/zza;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/zza;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzd:Ljava/lang/Object;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/config/GservicesValue;->zzc:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_36

    monitor-enter v1

    .line 3
    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_33

    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/common/config/GservicesValue;->zza:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/config/GservicesValue;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_15} :catch_18
    .catchall {:try_start_f .. :try_end_15} :catchall_16

    goto :goto_26

    :catchall_16
    move-exception v1

    goto :goto_2f

    .line 5
    :catch_18
    :try_start_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_16

    :try_start_1c
    iget-object v3, p0, Lcom/google/android/gms/common/config/GservicesValue;->zza:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/config/GservicesValue;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_2a

    .line 7
    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_16

    move-object v1, v3

    .line 9
    :goto_26
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    :catchall_2a
    move-exception v3

    .line 7
    :try_start_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8
    throw v3
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_16

    .line 9
    :goto_2f
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 10
    throw v1

    :catchall_33
    move-exception v0

    .line 3
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0

    :catchall_36
    move-exception v0

    .line 2
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public final getBinderSafe()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public override(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "GservicesValue"

    const-string v1, "GservicesValue.override(): test should probably call initForTests() first"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzd:Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/common/config/GservicesValue;->zzc:Ljava/lang/Object;

    monitor-enter p1

    :try_start_c
    monitor-enter p1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_13

    .line 2
    :try_start_d
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_10

    .line 4
    :try_start_e
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_13

    return-void

    :catchall_10
    move-exception v0

    .line 3
    :try_start_11
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    :try_start_12
    throw v0

    :catchall_13
    move-exception v0

    .line 4
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public resetOverride()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzd:Ljava/lang/Object;

    return-void
.end method

.method protected abstract zza(Ljava/lang/String;)Ljava/lang/Object;
.end method
