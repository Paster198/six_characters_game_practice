.class Lim/delight/android/commons/ViewScreenshot$1$1;
.super Ljava/lang/Object;
.source "ViewScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/delight/android/commons/ViewScreenshot$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/delight/android/commons/ViewScreenshot$1;

.field final synthetic val$screenshotFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lim/delight/android/commons/ViewScreenshot$1;Ljava/io/File;)V
    .registers 3

    .line 152
    iput-object p1, p0, Lim/delight/android/commons/ViewScreenshot$1$1;->this$1:Lim/delight/android/commons/ViewScreenshot$1;

    iput-object p2, p0, Lim/delight/android/commons/ViewScreenshot$1$1;->val$screenshotFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 157
    iget-object v0, p0, Lim/delight/android/commons/ViewScreenshot$1$1;->val$screenshotFile:Ljava/io/File;

    if-nez v0, :cond_10

    .line 158
    iget-object v0, p0, Lim/delight/android/commons/ViewScreenshot$1$1;->this$1:Lim/delight/android/commons/ViewScreenshot$1;

    iget-object v0, v0, Lim/delight/android/commons/ViewScreenshot$1;->this$0:Lim/delight/android/commons/ViewScreenshot;

    # getter for: Lim/delight/android/commons/ViewScreenshot;->mCallback:Lim/delight/android/commons/ViewScreenshot$Callback;
    invoke-static {v0}, Lim/delight/android/commons/ViewScreenshot;->access$500(Lim/delight/android/commons/ViewScreenshot;)Lim/delight/android/commons/ViewScreenshot$Callback;

    move-result-object v0

    invoke-interface {v0}, Lim/delight/android/commons/ViewScreenshot$Callback;->onError()V

    return-void

    .line 162
    :cond_10
    iget-object v0, p0, Lim/delight/android/commons/ViewScreenshot$1$1;->this$1:Lim/delight/android/commons/ViewScreenshot$1;

    iget-object v0, v0, Lim/delight/android/commons/ViewScreenshot$1;->this$0:Lim/delight/android/commons/ViewScreenshot;

    # getter for: Lim/delight/android/commons/ViewScreenshot;->mCallback:Lim/delight/android/commons/ViewScreenshot$Callback;
    invoke-static {v0}, Lim/delight/android/commons/ViewScreenshot;->access$500(Lim/delight/android/commons/ViewScreenshot;)Lim/delight/android/commons/ViewScreenshot$Callback;

    move-result-object v0

    iget-object v1, p0, Lim/delight/android/commons/ViewScreenshot$1$1;->val$screenshotFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lim/delight/android/commons/ViewScreenshot$Callback;->onSuccess(Ljava/io/File;)V

    return-void
.end method
