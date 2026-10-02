.class public final Lcom/google/android/gms/internal/gtm/zzfv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field private static final zza:Ljava/lang/reflect/Method;

.field private static final zzb:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "JobSchedulerCompat"

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_6
    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Landroid/app/job/JobInfo;

    aput-object v5, v1, v3

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v1, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v5, v1, v6

    const-class v5, Landroid/app/job/JobScheduler;

    const-string v6, "scheduleAsPackage"

    .line 1
    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_23} :catch_24

    goto :goto_30

    .line 2
    :catch_24
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "No scheduleAsPackage method available, falling back to schedule"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    move-object v1, v4

    .line 1
    :goto_30
    sput-object v1, Lcom/google/android/gms/internal/gtm/zzfv;->zza:Ljava/lang/reflect/Method;

    :try_start_32
    const-class v1, Landroid/os/UserHandle;

    const-string v5, "myUserId"

    new-array v3, v3, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v1, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_3c} :catch_3d

    goto :goto_48

    .line 5
    :catch_3d
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "No myUserId method available"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_48
    :goto_48
    sput-object v4, Lcom/google/android/gms/internal/gtm/zzfv;->zzb:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const-string p2, "jobscheduler"

    .line 1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/job/JobScheduler;

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object p3, Lcom/google/android/gms/internal/gtm/zzfv;->zza:Ljava/lang/reflect/Method;

    if-eqz p3, :cond_6a

    const-string p3, "android.permission.UPDATE_DEVICE_STATS"

    .line 2
    invoke-virtual {p0, p3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_6a

    .line 3
    :cond_18
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzfv;->zzb:Ljava/lang/reflect/Method;

    const/4 p3, 0x0

    if-eqz p0, :cond_3f

    :try_start_1d
    const-class v0, Landroid/os/UserHandle;

    new-array v1, p3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_3f

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_2d} :catch_2e

    goto :goto_40

    :catch_2e
    move-exception p0

    goto :goto_31

    :catch_30
    move-exception p0

    :goto_31
    const/4 v0, 0x6

    .line 6
    const-string v1, "JobSchedulerCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "myUserId invocation illegal"

    .line 7
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3f
    move p0, p3

    .line 5
    :goto_40
    const-string v0, "com.google.android.gms"

    const-string v1, "DispatchAlarm"

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzfv;->zza:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_65

    .line 8
    :try_start_48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_69

    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p3
    :try_end_5c
    .catch Ljava/lang/IllegalAccessException; {:try_start_48 .. :try_end_5c} :catch_5f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_48 .. :try_end_5c} :catch_5d

    goto :goto_69

    :catch_5d
    move-exception p0

    goto :goto_60

    :catch_5f
    move-exception p0

    .line 7
    :goto_60
    const-string p3, "error calling scheduleAsPackage"

    .line 10
    invoke-static {v1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :cond_65
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p3

    :cond_69
    :goto_69
    return p3

    .line 3
    :cond_6a
    :goto_6a
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    return p0
.end method
