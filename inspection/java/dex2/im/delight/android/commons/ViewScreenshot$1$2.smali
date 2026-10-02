.class Lim/delight/android/commons/ViewScreenshot$1$2;
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


# direct methods
.method constructor <init>(Lim/delight/android/commons/ViewScreenshot$1;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lim/delight/android/commons/ViewScreenshot$1$2;->this$1:Lim/delight/android/commons/ViewScreenshot$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 174
    iget-object v0, p0, Lim/delight/android/commons/ViewScreenshot$1$2;->this$1:Lim/delight/android/commons/ViewScreenshot$1;

    iget-object v0, v0, Lim/delight/android/commons/ViewScreenshot$1;->this$0:Lim/delight/android/commons/ViewScreenshot;

    # getter for: Lim/delight/android/commons/ViewScreenshot;->mCallback:Lim/delight/android/commons/ViewScreenshot$Callback;
    invoke-static {v0}, Lim/delight/android/commons/ViewScreenshot;->access$500(Lim/delight/android/commons/ViewScreenshot;)Lim/delight/android/commons/ViewScreenshot$Callback;

    move-result-object v0

    invoke-interface {v0}, Lim/delight/android/commons/ViewScreenshot$Callback;->onError()V

    return-void
.end method
