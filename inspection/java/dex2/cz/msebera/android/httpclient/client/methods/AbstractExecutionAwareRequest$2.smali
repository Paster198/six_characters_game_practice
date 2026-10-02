.class Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$2;
.super Ljava/lang/Object;
.source "AbstractExecutionAwareRequest.java"

# interfaces
.implements Lcz/msebera/android/httpclient/concurrent/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;->setReleaseTrigger(Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;

.field final synthetic val$releaseTrigger:Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;)V
    .registers 3

    .line 70
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$2;->this$0:Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest;

    iput-object p2, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$2;->val$releaseTrigger:Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .registers 2

    .line 75
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/AbstractExecutionAwareRequest$2;->val$releaseTrigger:Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;->abortConnection()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method
