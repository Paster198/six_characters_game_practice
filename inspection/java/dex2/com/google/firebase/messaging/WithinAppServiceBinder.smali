.class Lcom/google/firebase/messaging/WithinAppServiceBinder;
.super Landroid/os/Binder;
.source "WithinAppServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/WithinAppServiceBinder$IntentHandler;
    }
.end annotation


# instance fields
.field private final intentHandler:Lcom/google/firebase/messaging/WithinAppServiceBinder$IntentHandler;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/WithinAppServiceBinder$IntentHandler;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/firebase/messaging/WithinAppServiceBinder;->intentHandler:Lcom/google/firebase/messaging/WithinAppServiceBinder$IntentHandler;

    return-void
.end method

.method static synthetic lambda$send$0(Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;->finish()V

    return-void
.end method


# virtual methods
.method send(Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;)V
    .registers 5

    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x3

    .line 49
    const-string v1, "FirebaseMessaging"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 50
    const-string v0, "service received new intent via bind strategy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_18
    iget-object v0, p0, Lcom/google/firebase/messaging/WithinAppServiceBinder;->intentHandler:Lcom/google/firebase/messaging/WithinAppServiceBinder$IntentHandler;

    iget-object v1, p1, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;->intent:Landroid/content/Intent;

    .line 54
    invoke-interface {v0, v1}, Lcom/google/firebase/messaging/WithinAppServiceBinder$IntentHandler;->handle(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Landroidx/credentials/CredentialManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/credentials/CredentialManager$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/google/firebase/messaging/WithinAppServiceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/google/firebase/messaging/WithinAppServiceBinder$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;)V

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 47
    :cond_2e
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
