.class public final synthetic Lcom/google/firebase/messaging/ProxyNotificationPreferences$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/ProxyNotificationPreferences$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/firebase/messaging/ProxyNotificationPreferences$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/google/firebase/messaging/ProxyNotificationPreferences$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/firebase/messaging/ProxyNotificationPreferences$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/messaging/ProxyNotificationPreferences;->lambda$setProxyRetention$0(Landroid/content/Context;ZLjava/lang/Void;)V

    return-void
.end method
