.class public final synthetic Lcom/google/firebase/messaging/FirebaseMessaging$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$$ExternalSyntheticLambda12;->f$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$$ExternalSyntheticLambda12;->f$0:Lcom/google/firebase/messaging/FirebaseMessaging;

    check-cast p1, Lcom/google/android/gms/cloudmessaging/CloudMessage;

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->lambda$handleProxiedNotificationData$5$com-google-firebase-messaging-FirebaseMessaging(Lcom/google/android/gms/cloudmessaging/CloudMessage;)V

    return-void
.end method
