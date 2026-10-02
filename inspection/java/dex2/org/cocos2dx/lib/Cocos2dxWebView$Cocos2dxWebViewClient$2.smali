.class Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;
.super Ljava/lang/Object;
.source "Cocos2dxWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;->this$1:Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 123
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;->this$1:Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->this$0:Lorg/cocos2dx/lib/Cocos2dxWebView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxWebView;->mViewTag:I
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$100(Lorg/cocos2dx/lib/Cocos2dxWebView;)I

    move-result v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->_didFinishLoading(ILjava/lang/String;)V

    return-void
.end method
