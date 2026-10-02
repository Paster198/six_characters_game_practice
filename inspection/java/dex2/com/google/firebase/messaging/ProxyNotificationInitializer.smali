.class final Lcom/google/firebase/messaging/ProxyNotificationInitializer;
.super Ljava/lang/Object;
.source "ProxyNotificationInitializer.java"


# static fields
.field private static final MANIFEST_METADATA_NOTIFICATION_DELEGATION_ENABLED:Ljava/lang/String; = "firebase_messaging_notification_delegation_enabled"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allowedToUse(Landroid/content/Context;)Z
    .registers 2

    .line 190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method static initialize(Landroid/content/Context;)V
    .registers 3

    .line 180
    invoke-static {p0}, Lcom/google/firebase/messaging/ProxyNotificationPreferences;->isProxyNotificationInitialized(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 186
    :cond_7
    new-instance v0, Landroidx/credentials/CredentialManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/credentials/CredentialManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Lcom/google/firebase/messaging/ProxyNotificationInitializer;->shouldEnableProxyNotification(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/google/firebase/messaging/ProxyNotificationInitializer;->setEnableProxyNotification(Ljava/util/concurrent/Executor;Landroid/content/Context;Z)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method static isProxyNotificationEnabled(Landroid/content/Context;)Z
    .registers 5

    .line 118
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastQ()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "FirebaseMessaging"

    if-nez v0, :cond_16

    .line 120
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 121
    const-string p0, "Platform doesn\'t support proxying."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return v2

    .line 126
    :cond_16
    invoke-static {p0}, Lcom/google/firebase/messaging/ProxyNotificationInitializer;->allowedToUse(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error retrieving notification delegate for package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 131
    :cond_33
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 132
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationDelegate()Ljava/lang/String;

    move-result-object p0

    .line 133
    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    .line 135
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_52

    .line 136
    const-string p0, "GMS core is set for proxying"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    const/4 p0, 0x1

    return p0

    :cond_54
    return v2
.end method

.method static synthetic lambda$setEnableProxyNotification$0(Landroid/content/Context;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 6

    const-string v0, "error configuring notification delegate for package "

    const/4 v1, 0x0

    .line 74
    :try_start_3
    invoke-static {p0}, Lcom/google/firebase/messaging/ProxyNotificationInitializer;->allowedToUse(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 77
    const-string p1, "FirebaseMessaging"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_48

    .line 100
    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void

    :cond_23
    const/4 v0, 0x1

    .line 86
    :try_start_24
    invoke-static {p0, v0}, Lcom/google/firebase/messaging/ProxyNotificationPreferences;->setProxyNotificationsInitialized(Landroid/content/Context;Z)V

    .line 88
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_48

    .line 89
    const-string v0, "com.google.android.gms"

    if-eqz p1, :cond_37

    .line 92
    :try_start_33
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->setNotificationDelegate(Ljava/lang/String;)V

    goto :goto_44

    .line 93
    :cond_37
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationDelegate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 97
    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->setNotificationDelegate(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_48

    .line 100
    :cond_44
    :goto_44
    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void

    :catchall_48
    move-exception p0

    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 101
    throw p0
.end method

.method static setEnableProxyNotification(Ljava/util/concurrent/Executor;Landroid/content/Context;Z)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastQ()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    .line 67
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 70
    :cond_c
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 71
    new-instance v1, Lcom/google/firebase/messaging/ProxyNotificationInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/firebase/messaging/ProxyNotificationInitializer$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ZLcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private static shouldEnableProxyNotification(Landroid/content/Context;)Z
    .registers 4

    .line 151
    const-string v0, "firebase_messaging_notification_delegation_enabled"

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    .line 155
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 157
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 159
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 161
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2a} :catch_2b

    return p0

    :catch_2b
    :cond_2b
    const/4 p0, 0x1

    return p0
.end method
