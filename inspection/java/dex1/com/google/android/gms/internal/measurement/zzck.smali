.class public final Lcom/google/android/gms/internal/measurement/zzck;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# static fields
.field private static final zza:Ljava/lang/reflect/Method;

.field private static final zzb:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    const-string v0, "JobSchedulerCompat"

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    :try_start_5
    const-class v4, Landroid/app/job/JobScheduler;

    const-string v5, "scheduleAsPackage"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/app/job/JobInfo;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_23} :catch_24

    goto :goto_30

    .line 2
    :catch_24
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v4, "No scheduleAsPackage method available, falling back to schedule"

    .line 3
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    move-object v4, v3

    .line 1
    :goto_30
    sput-object v4, Lcom/google/android/gms/internal/measurement/zzck;->zza:Ljava/lang/reflect/Method;

    :try_start_32
    const-class v4, Landroid/os/UserHandle;

    const-string v5, "myUserId"

    new-array v1, v1, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
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
    sput-object v3, Lcom/google/android/gms/internal/measurement/zzck;->zzb:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 1
    const-string p2, "jobscheduler"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/job/JobScheduler;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/job/JobScheduler;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzck;->zza:Ljava/lang/reflect/Method;

    if-eqz p3, :cond_6d

    const-string p3, "android.permission.UPDATE_DEVICE_STATS"

    .line 3
    invoke-virtual {p0, p3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_6d

    .line 4
    :cond_1b
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzck;->zzb:Ljava/lang/reflect/Method;

    const/4 p3, 0x0

    if-eqz p0, :cond_42

    :try_start_20
    const-class v0, Landroid/os/UserHandle;

    new-array v1, p3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_42

    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_30} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_30} :catch_31

    goto :goto_43

    :catch_31
    move-exception p0

    goto :goto_34

    :catch_33
    move-exception p0

    :goto_34
    const/4 v0, 0x6

    .line 7
    const-string v1, "JobSchedulerCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "myUserId invocation illegal"

    .line 8
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_42
    move p0, p3

    .line 6
    :goto_43
    const-string v0, "UploadAlarm"

    const-string v1, "com.google.android.gms"

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzck;->zza:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_68

    .line 9
    :try_start_4b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, v1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_6c

    .line 10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p3
    :try_end_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_4b .. :try_end_5f} :catch_62
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4b .. :try_end_5f} :catch_60

    goto :goto_6c

    :catch_60
    move-exception p0

    goto :goto_63

    :catch_62
    move-exception p0

    .line 8
    :goto_63
    const-string p3, "error calling scheduleAsPackage"

    .line 11
    invoke-static {v0, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :cond_68
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p3

    :cond_6c
    :goto_6c
    return p3

    .line 4
    :cond_6d
    :goto_6d
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    return p0
.end method
