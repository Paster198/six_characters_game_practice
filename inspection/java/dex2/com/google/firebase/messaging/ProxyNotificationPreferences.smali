.class final Lcom/google/firebase/messaging/ProxyNotificationPreferences;
.super Ljava/lang/Object;
.source "ProxyNotificationPreferences.java"


# static fields
.field private static final FCM_PREFERENCES:Ljava/lang/String; = "com.google.firebase.messaging"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    move-object p0, v0

    .line 44
    :goto_8
    const-string v0, "com.google.firebase.messaging"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static isProxyNotificationInitialized(Landroid/content/Context;)Z
    .registers 3

    .line 71
    invoke-static {p0}, Lcom/google/firebase/messaging/ProxyNotificationPreferences;->getPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "proxy_notification_initialized"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static isProxyNotificationRetentionSet(Landroid/content/SharedPreferences;Z)Z
    .registers 5

    .line 76
    const-string v0, "proxy_retention"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 77
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-ne p0, p1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return v2
.end method

.method static synthetic lambda$setProxyRetention$0(Landroid/content/Context;ZLjava/lang/Void;)V
    .registers 3

    .line 65
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/ProxyNotificationPreferences;->setProxyRetentionPreferences(Landroid/content/Context;Z)V

    return-void
.end method

.method static setProxyNotificationsInitialized(Landroid/content/Context;Z)V
    .registers 3

    .line 49
    invoke-static {p0}, Lcom/google/firebase/messaging/ProxyNotificationPreferences;->getPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 50
    const-string v0, "proxy_notification_initialized"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setProxyRetention(Landroid/content/Context;Lcom/google/firebase/messaging/GmsRpc;Z)V
    .registers 5

    .line 56
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastQ()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_22

    .line 60
    :cond_7
    invoke-static {p0}, Lcom/google/firebase/messaging/ProxyNotificationPreferences;->getPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    invoke-static {v0, p2}, Lcom/google/firebase/messaging/ProxyNotificationPreferences;->isProxyNotificationRetentionSet(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    if-nez v0, :cond_22

    .line 63
    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/GmsRpc;->setRetainProxiedNotifications(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Landroidx/credentials/CredentialManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/credentials/CredentialManager$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/google/firebase/messaging/ProxyNotificationPreferences$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/messaging/ProxyNotificationPreferences$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Z)V

    .line 64
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :cond_22
    :goto_22
    return-void
.end method

.method static setProxyRetentionPreferences(Landroid/content/Context;Z)V
    .registers 3

    .line 82
    invoke-static {p0}, Lcom/google/firebase/messaging/ProxyNotificationPreferences;->getPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 83
    const-string v0, "proxy_retention"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
