.class Lim/delight/android/commons/ViewScreenshot$1;
.super Ljava/lang/Thread;
.source "ViewScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/delight/android/commons/ViewScreenshot;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/delight/android/commons/ViewScreenshot;

.field final synthetic val$viewScreenshot:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lim/delight/android/commons/ViewScreenshot;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 135
    iput-object p1, p0, Lim/delight/android/commons/ViewScreenshot$1;->this$0:Lim/delight/android/commons/ViewScreenshot;

    iput-object p2, p0, Lim/delight/android/commons/ViewScreenshot$1;->val$viewScreenshot:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 139
    iget-object v0, p0, Lim/delight/android/commons/ViewScreenshot$1;->this$0:Lim/delight/android/commons/ViewScreenshot;

    # getter for: Lim/delight/android/commons/ViewScreenshot;->mView:Landroid/view/View;
    invoke-static {v0}, Lim/delight/android/commons/ViewScreenshot;->access$000(Lim/delight/android/commons/ViewScreenshot;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 142
    iget-object v0, p0, Lim/delight/android/commons/ViewScreenshot$1;->this$0:Lim/delight/android/commons/ViewScreenshot;

    # getter for: Lim/delight/android/commons/ViewScreenshot;->mFilename:Ljava/lang/String;
    invoke-static {v0}, Lim/delight/android/commons/ViewScreenshot;->access$100(Lim/delight/android/commons/ViewScreenshot;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 149
    :try_start_10
    iget-object v0, p0, Lim/delight/android/commons/ViewScreenshot$1;->this$0:Lim/delight/android/commons/ViewScreenshot;

    # getter for: Lim/delight/android/commons/ViewScreenshot;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lim/delight/android/commons/ViewScreenshot;->access$200(Lim/delight/android/commons/ViewScreenshot;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lim/delight/android/commons/ViewScreenshot$1;->this$0:Lim/delight/android/commons/ViewScreenshot;

    # getter for: Lim/delight/android/commons/ViewScreenshot;->mFilename:Ljava/lang/String;
    invoke-static {v1}, Lim/delight/android/commons/ViewScreenshot;->access$100(Lim/delight/android/commons/ViewScreenshot;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lim/delight/android/commons/ViewScreenshot$1;->val$viewScreenshot:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lim/delight/android/commons/ViewScreenshot$1;->this$0:Lim/delight/android/commons/ViewScreenshot;

    # getter for: Lim/delight/android/commons/ViewScreenshot;->mFormat:I
    invoke-static {v3}, Lim/delight/android/commons/ViewScreenshot;->access$300(Lim/delight/android/commons/ViewScreenshot;)I

    move-result v3

    # invokes: Lim/delight/android/commons/ViewScreenshot;->saveBitmapToPublicStorage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;I)Ljava/io/File;
    invoke-static {v0, v1, v2, v3}, Lim/delight/android/commons/ViewScreenshot;->access$400(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;I)Ljava/io/File;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lim/delight/android/commons/ViewScreenshot$1;->this$0:Lim/delight/android/commons/ViewScreenshot;

    # getter for: Lim/delight/android/commons/ViewScreenshot;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lim/delight/android/commons/ViewScreenshot;->access$200(Lim/delight/android/commons/ViewScreenshot;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lim/delight/android/commons/ViewScreenshot$1$1;

    invoke-direct {v2, p0, v0}, Lim/delight/android/commons/ViewScreenshot$1$1;-><init>(Lim/delight/android/commons/ViewScreenshot$1;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_36} :catch_37

    return-void

    .line 170
    :catch_37
    iget-object v0, p0, Lim/delight/android/commons/ViewScreenshot$1;->this$0:Lim/delight/android/commons/ViewScreenshot;

    # getter for: Lim/delight/android/commons/ViewScreenshot;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lim/delight/android/commons/ViewScreenshot;->access$200(Lim/delight/android/commons/ViewScreenshot;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lim/delight/android/commons/ViewScreenshot$1$2;

    invoke-direct {v1, p0}, Lim/delight/android/commons/ViewScreenshot$1$2;-><init>(Lim/delight/android/commons/ViewScreenshot$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 143
    :cond_46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call asFile(...) before calling build(...)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_4e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call from(...) before calling build(...)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
