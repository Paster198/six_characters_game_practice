.class public Llow/moe/PushNotificationHandler;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "PushNotificationHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PushNotificationHandler"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private sendTokenToActivity(Ljava/lang/String;)V
    .registers 2

    .line 23
    invoke-static {p1}, Llow/moe/AppActivity;->notifyFcmTokenUpdate(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .registers 2

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Llow/moe/PushNotificationHandler;->sendTokenToActivity(Ljava/lang/String;)V

    return-void
.end method
