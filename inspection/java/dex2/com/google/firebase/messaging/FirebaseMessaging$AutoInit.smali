.class Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;
.super Ljava/lang/Object;
.source "FirebaseMessaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/FirebaseMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoInit"
.end annotation


# static fields
.field private static final AUTO_INIT_PREF:Ljava/lang/String; = "auto_init"

.field private static final FCM_PREFERENCES:Ljava/lang/String; = "com.google.firebase.messaging"

.field private static final MANIFEST_METADATA_AUTO_INIT_ENABLED:Ljava/lang/String; = "firebase_messaging_auto_init_enabled"


# instance fields
.field private autoInitEnabled:Ljava/lang/Boolean;

.field private dataCollectionDefaultChangeEventHandler:Lcom/google/firebase/events/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/events/EventHandler<",
            "Lcom/google/firebase/DataCollectionDefaultChange;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private final subscriber:Lcom/google/firebase/events/Subscriber;

.field final synthetic this$0:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/events/Subscriber;)V
    .registers 3

    .line 719
    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->this$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    iput-object p2, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->subscriber:Lcom/google/firebase/events/Subscriber;

    return-void
.end method

.method private readEnabled()Ljava/lang/Boolean;
    .registers 7

    .line 773
    const-string v0, "firebase_messaging_auto_init_enabled"

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->this$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    # getter for: Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/FirebaseApp;
    invoke-static {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->access$000(Lcom/google/firebase/messaging/FirebaseMessaging;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 775
    const-string v2, "com.google.firebase.messaging"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 778
    const-string v4, "auto_init"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 779
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 784
    :cond_24
    :try_start_24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 788
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    .line 787
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 789
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_4d

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 791
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 792
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_4c} :catch_4d

    return-object v0

    :catch_4d
    :cond_4d
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method declared-synchronized initialize()V
    .registers 4

    monitor-enter p0

    .line 724
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    if-eqz v0, :cond_7

    .line 725
    monitor-exit p0

    return-void

    .line 727
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->readEnabled()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->autoInitEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1d

    .line 732
    new-instance v0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;)V

    iput-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->dataCollectionDefaultChangeEventHandler:Lcom/google/firebase/events/EventHandler;

    .line 738
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->subscriber:Lcom/google/firebase/events/Subscriber;

    const-class v2, Lcom/google/firebase/DataCollectionDefaultChange;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/events/Subscriber;->subscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V

    :cond_1d
    const/4 v0, 0x1

    .line 741
    iput-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->initialized:Z
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_22

    .line 742
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method declared-synchronized isEnabled()Z
    .registers 2

    monitor-enter p0

    .line 745
    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->initialize()V

    .line 746
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->autoInitEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 747
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_17

    .line 748
    :cond_d
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->this$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    # getter for: Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/FirebaseApp;
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->access$000(Lcom/google/firebase/messaging/FirebaseMessaging;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 746
    :goto_17
    monitor-exit p0

    return v0

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method synthetic lambda$initialize$0$com-google-firebase-messaging-FirebaseMessaging$AutoInit(Lcom/google/firebase/events/Event;)V
    .registers 2

    .line 734
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 735
    iget-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->this$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    # invokes: Lcom/google/firebase/messaging/FirebaseMessaging;->startSyncIfNecessary()V
    invoke-static {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->access$100(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    :cond_b
    return-void
.end method

.method declared-synchronized setEnabled(Z)V
    .registers 5

    monitor-enter p0

    .line 752
    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->initialize()V

    .line 753
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->dataCollectionDefaultChangeEventHandler:Lcom/google/firebase/events/EventHandler;

    if-eqz v0, :cond_12

    .line 754
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->subscriber:Lcom/google/firebase/events/Subscriber;

    const-class v2, Lcom/google/firebase/DataCollectionDefaultChange;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/events/Subscriber;->unsubscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V

    const/4 v0, 0x0

    .line 756
    iput-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->dataCollectionDefaultChangeEventHandler:Lcom/google/firebase/events/EventHandler;

    .line 758
    :cond_12
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->this$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 759
    # getter for: Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/FirebaseApp;
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->access$000(Lcom/google/firebase/messaging/FirebaseMessaging;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.messaging"

    const/4 v2, 0x0

    .line 761
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 762
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 763
    const-string v1, "auto_init"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 764
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_36

    .line 766
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->this$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    # invokes: Lcom/google/firebase/messaging/FirebaseMessaging;->startSyncIfNecessary()V
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->access$100(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    .line 768
    :cond_36
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$AutoInit;->autoInitEnabled:Ljava/lang/Boolean;
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    .line 769
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method
