.class public final synthetic Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;->lambda$arrangeTimeout$0$com-google-firebase-messaging-WithinAppServiceConnection$BindRequest()V

    return-void
.end method
