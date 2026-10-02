.class public Lorg/cocos2dx/lib/Cocos2dxWebView;
.super Landroid/webkit/WebView;
.source "Cocos2dxWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mJSScheme:Ljava/lang/String;

.field private mViewTag:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    const-string v0, "Cocos2dxWebViewHelper"

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxWebView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, -0x1

    .line 43
    invoke-direct {p0, p1, v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    .line 48
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 49
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mViewTag:I

    .line 50
    const-string p1, ""

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mJSScheme:Ljava/lang/String;

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setFocusable(Z)V

    .line 53
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setFocusableInTouchMode(Z)V

    .line 55
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 57
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    :try_start_26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v1, "removeJavascriptInterface"

    new-array p1, p1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, p1, v0

    invoke-virtual {p2, v1, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 63
    const-string p2, "searchBoxJavaBridge_"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3f} :catch_40

    goto :goto_47

    .line 65
    :catch_40
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxWebView;->TAG:Ljava/lang/String;

    const-string p2, "This API level do not support `removeJavascriptInterface`"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_47
    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;

    invoke-direct {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;-><init>(Lorg/cocos2dx/lib/Cocos2dxWebView;)V

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 69
    new-instance p1, Landroid/webkit/WebChromeClient;

    invoke-direct {p1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxWebView;)Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mJSScheme:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/Cocos2dxWebView;)I
    .registers 1

    .line 36
    iget p0, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mViewTag:I

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 36
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setJavascriptInterfaceScheme(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    .line 73
    :cond_3
    const-string p1, ""

    :goto_5
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mJSScheme:Ljava/lang/String;

    return-void
.end method

.method public setScalesPageToFit(Z)V
    .registers 3

    .line 77
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method

.method public setWebViewRect(IIII)V
    .registers 7

    .line 142
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 144
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 145
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 146
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 147
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x33

    .line 148
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
