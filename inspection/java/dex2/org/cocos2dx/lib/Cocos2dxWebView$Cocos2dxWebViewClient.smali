.class Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "Cocos2dxWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Cocos2dxWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxWebView;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 118
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 120
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;

    invoke-direct {v0, p0, p2}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 132
    new-instance p2, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$3;

    invoke-direct {p2, p0, p4}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    .line 83
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    const/4 v0, 0x1

    .line 86
    :try_start_9
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 87
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxWebView;->mJSScheme:Ljava/lang/String;
    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$000(Lorg/cocos2dx/lib/Cocos2dxWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 88
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$1;

    invoke-direct {v1, p0, p2}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_27} :catch_28

    return v0

    .line 97
    :catch_28
    # getter for: Lorg/cocos2dx/lib/Cocos2dxWebView;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to create URI from url"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_31
    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    .line 101
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 104
    new-instance v0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxWebView;->mViewTag:I
    invoke-static {v4}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$100(Lorg/cocos2dx/lib/Cocos2dxWebView;)I

    move-result v4

    invoke-direct {v0, v3, v1, v4, p2}, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;-><init>(Ljava/util/concurrent/CountDownLatch;[ZILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 108
    :try_start_49
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_56

    .line 110
    :catch_4d
    # getter for: Lorg/cocos2dx/lib/Cocos2dxWebView;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\'shouldOverrideUrlLoading\' failed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_56
    aget-boolean p1, v1, v2

    return p1
.end method
