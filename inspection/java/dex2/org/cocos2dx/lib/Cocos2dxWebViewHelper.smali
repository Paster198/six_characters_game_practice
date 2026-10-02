.class public Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cocos2dxWebViewHelper"

.field private static sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private static sHandler:Landroid/os/Handler;

.field private static sLayout:Landroid/widget/FrameLayout;

.field private static viewTag:I

.field private static webViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/cocos2dx/lib/Cocos2dxWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sLayout:Landroid/widget/FrameLayout;

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sHandler:Landroid/os/Handler;

    .line 27
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 28
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webViews:Landroid/util/SparseArray;

    return-void
.end method

.method public static _didFailLoading(ILjava/lang/String;)V
    .registers 2

    .line 46
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->didFailLoading(ILjava/lang/String;)V

    return-void
.end method

.method public static _didFinishLoading(ILjava/lang/String;)V
    .registers 2

    .line 40
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->didFinishLoading(ILjava/lang/String;)V

    return-void
.end method

.method public static _onJsCallback(ILjava/lang/String;)V
    .registers 2

    .line 52
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->onJsCallback(ILjava/lang/String;)V

    return-void
.end method

.method public static _shouldStartLoading(ILjava/lang/String;)Z
    .registers 2

    .line 34
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->shouldStartLoading(ILjava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;
    .registers 1

    .line 14
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/FrameLayout;
    .registers 1

    .line 14
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200()Landroid/util/SparseArray;
    .registers 1

    .line 14
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->webViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static callInMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 196
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static canGoBack(I)Z
    .registers 2

    .line 201
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$12;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$12;-><init>(I)V

    const/4 p0, 0x0

    .line 209
    :try_start_6
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->callInMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_10
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_10} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_10} :catch_10

    :catch_10
    return p0
.end method

.method public static canGoForward(I)Z
    .registers 2

    .line 218
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$13;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$13;-><init>(I)V

    const/4 p0, 0x0

    .line 226
    :try_start_6
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->callInMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_10
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_10} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_10} :catch_10

    :catch_10
    return p0
.end method

.method public static createWebView()I
    .registers 3

    .line 56
    sget v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->viewTag:I

    .line 57
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$1;

    invoke-direct {v2, v0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$1;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 69
    sget v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->viewTag:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->viewTag:I

    return v0
.end method

.method private static native didFailLoading(ILjava/lang/String;)V
.end method

.method private static native didFinishLoading(ILjava/lang/String;)V
.end method

.method public static evaluateJS(ILjava/lang/String;)V
    .registers 4

    .line 259
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$16;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$16;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static goBack(I)V
    .registers 3

    .line 235
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$14;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$14;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static goForward(I)V
    .registers 3

    .line 247
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$15;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$15;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 122
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;

    move v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v3, p4

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$6;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadFile(ILjava/lang/String;)V
    .registers 4

    .line 158
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadHTMLString(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 134
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$7;

    invoke-direct {v1, p0, p2, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$7;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadUrl(ILjava/lang/String;)V
    .registers 4

    .line 146
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$8;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$8;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static native onJsCallback(ILjava/lang/String;)V
.end method

.method public static reload(I)V
    .registers 3

    .line 183
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$11;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$11;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeWebView(I)V
    .registers 3

    .line 73
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$2;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$2;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setJavascriptInterfaceScheme(ILjava/lang/String;)V
    .registers 4

    .line 110
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$5;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$5;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setScalesPageToFit(IZ)V
    .registers 4

    .line 271
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$17;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$17;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setVisible(IZ)V
    .registers 4

    .line 86
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setWebViewRect(IIIII)V
    .registers 12

    .line 98
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static native shouldStartLoading(ILjava/lang/String;)Z
.end method

.method public static stopLoading(I)V
    .registers 3

    .line 170
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$10;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$10;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
