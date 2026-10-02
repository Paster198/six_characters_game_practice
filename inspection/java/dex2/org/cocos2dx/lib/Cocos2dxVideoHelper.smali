.class public Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
.super Ljava/lang/Object;
.source "Cocos2dxVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;,
        Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;
    }
.end annotation


# static fields
.field static final KeyEventBack:I = 0x3e8

.field private static final VideoTaskCreate:I = 0x0

.field private static final VideoTaskFullScreen:I = 0xc

.field private static final VideoTaskKeepRatio:I = 0xb

.field private static final VideoTaskPause:I = 0x5

.field private static final VideoTaskRemove:I = 0x1

.field private static final VideoTaskRestart:I = 0xa

.field private static final VideoTaskResume:I = 0x6

.field private static final VideoTaskSeek:I = 0x8

.field private static final VideoTaskSetRect:I = 0x3

.field private static final VideoTaskSetSource:I = 0x2

.field private static final VideoTaskSetVisible:I = 0x9

.field private static final VideoTaskStart:I = 0x4

.field private static final VideoTaskStop:I = 0x7

.field static mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

.field private static videoTag:I


# instance fields
.field private mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private mLayout:Landroid/widget/FrameLayout;

.field private sVideoViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/cocos2dx/lib/Cocos2dxVideoView;",
            ">;"
        }
    .end annotation
.end field

.field videoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/FrameLayout;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mLayout:Landroid/widget/FrameLayout;

    .line 41
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 42
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    .line 190
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->videoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    .line 47
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 48
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mLayout:Landroid/widget/FrameLayout;

    .line 50
    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-direct {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V

    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    .line 51
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    return-void
.end method

.method private _createVideoView(I)V
    .registers 4

    .line 209
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v0, v1, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;I)V

    .line 210
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 214
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 215
    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setZOrderOnTop(Z)V

    .line 216
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->videoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setOnCompletionListener(Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;)V

    return-void
.end method

.method private _pauseVideo(I)V
    .registers 3

    .line 329
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_d

    .line 331
    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->pause()V

    :cond_d
    return-void
.end method

.method private _removeVideoView(I)V
    .registers 4

    .line 227
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz v0, :cond_17

    .line 229
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->stopPlayback()V

    .line 230
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 231
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_17
    return-void
.end method

.method private _restartVideo(I)V
    .registers 3

    .line 371
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_d

    .line 373
    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->restart()V

    :cond_d
    return-void
.end method

.method private _resumeVideo(I)V
    .registers 3

    .line 343
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_d

    .line 345
    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->resume()V

    :cond_d
    return-void
.end method

.method private _seekVideoTo(II)V
    .registers 4

    .line 386
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_d

    .line 388
    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->seekTo(I)V

    :cond_d
    return-void
.end method

.method private _setFullScreenEnabled(IZII)V
    .registers 6

    .line 289
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_d

    .line 291
    invoke-virtual {p1, p2, p3, p4}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setFullScreenEnabled(ZII)V

    :cond_d
    return-void
.end method

.method private _setVideoKeepRatio(IZ)V
    .registers 4

    .line 430
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_d

    .line 432
    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setKeepRatio(Z)V

    :cond_d
    return-void
.end method

.method private _setVideoRect(IIIII)V
    .registers 7

    .line 269
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_d

    .line 271
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoRect(IIII)V

    :cond_d
    return-void
.end method

.method private _setVideoURL(IILjava/lang/String;)V
    .registers 5

    .line 245
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_17

    if-eqz p2, :cond_14

    const/4 v0, 0x1

    if-eq p2, v0, :cond_10

    goto :goto_17

    .line 252
    :cond_10
    invoke-virtual {p1, p3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoURL(Ljava/lang/String;)V

    return-void

    .line 249
    :cond_14
    invoke-virtual {p1, p3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoFileName(Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void
.end method

.method private _setVideoVisible(IZ)V
    .registers 4

    .line 406
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_18

    if-eqz p2, :cond_14

    .line 409
    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize()V

    const/4 p2, 0x0

    .line 410
    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVisibility(I)V

    return-void

    :cond_14
    const/4 p2, 0x4

    .line 412
    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVisibility(I)V

    :cond_18
    return-void
.end method

.method private _startVideo(I)V
    .registers 3

    .line 315
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_d

    .line 317
    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->start()V

    :cond_d
    return-void
.end method

.method private _stopVideo(I)V
    .registers 3

    .line 357
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_d

    .line 359
    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->stop()V

    :cond_d
    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_createVideoView(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_removeVideoView(I)V

    return-void
.end method

.method static synthetic access$1000(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoVisible(IZ)V

    return-void
.end method

.method static synthetic access$1100(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_restartVideo(I)V

    return-void
.end method

.method static synthetic access$1200(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoKeepRatio(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->onBackKeyEvent()V

    return-void
.end method

.method static synthetic access$1400(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)Lorg/cocos2dx/lib/Cocos2dxActivity;
    .registers 1

    .line 38
    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object p0
.end method

.method static synthetic access$200(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IILjava/lang/String;)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoURL(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_startVideo(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IIIII)V
    .registers 6

    .line 38
    invoke-direct/range {p0 .. p5}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoRect(IIIII)V

    return-void
.end method

.method static synthetic access$500(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZII)V
    .registers 5

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setFullScreenEnabled(IZII)V

    return-void
.end method

.method static synthetic access$600(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_pauseVideo(I)V

    return-void
.end method

.method static synthetic access$700(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_resumeVideo(I)V

    return-void
.end method

.method static synthetic access$800(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_stopVideo(I)V

    return-void
.end method

.method static synthetic access$900(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;II)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_seekVideoTo(II)V

    return-void
.end method

.method public static createVideoWidget()I
    .registers 2

    .line 200
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 201
    iput v1, v0, Landroid/os/Message;->what:I

    .line 202
    sget v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->videoTag:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 203
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    sget v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->videoTag:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->videoTag:I

    return v0
.end method

.method public static native nativeExecuteVideoCallback(II)V
.end method

.method private onBackKeyEvent()V
    .registers 8

    .line 296
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2c

    .line 298
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 299
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->sVideoViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz v4, :cond_29

    .line 301
    invoke-virtual {v4, v1, v1, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setFullScreenEnabled(ZII)V

    .line 302
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v5, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;

    const/16 v6, 0x3e8

    invoke-direct {v5, p0, v3, v6}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;II)V

    invoke-virtual {v4, v5}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2c
    return-void
.end method

.method public static pauseVideo(I)V
    .registers 3

    .line 322
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    .line 323
    iput v1, v0, Landroid/os/Message;->what:I

    .line 324
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 325
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static removeVideoWidget(I)V
    .registers 3

    .line 220
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 221
    iput v1, v0, Landroid/os/Message;->what:I

    .line 222
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 223
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static restartVideo(I)V
    .registers 3

    .line 364
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xa

    .line 365
    iput v1, v0, Landroid/os/Message;->what:I

    .line 366
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 367
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static resumeVideo(I)V
    .registers 3

    .line 336
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x6

    .line 337
    iput v1, v0, Landroid/os/Message;->what:I

    .line 338
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 339
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static seekVideoTo(II)V
    .registers 4

    .line 378
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x8

    .line 379
    iput v1, v0, Landroid/os/Message;->what:I

    .line 380
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 381
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 382
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static setFullScreenEnabled(IZII)V
    .registers 6

    .line 276
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc

    .line 277
    iput v1, v0, Landroid/os/Message;->what:I

    .line 278
    iput p0, v0, Landroid/os/Message;->arg1:I

    const/4 p0, 0x0

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    .line 280
    iput p1, v0, Landroid/os/Message;->arg2:I

    goto :goto_14

    .line 282
    :cond_12
    iput p0, v0, Landroid/os/Message;->arg2:I

    .line 284
    :goto_14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p0, p0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static setVideoKeepRatioEnabled(IZ)V
    .registers 4

    .line 418
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    .line 419
    iput v1, v0, Landroid/os/Message;->what:I

    .line 420
    iput p0, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_11

    const/4 p0, 0x1

    .line 422
    iput p0, v0, Landroid/os/Message;->arg2:I

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    .line 424
    iput p0, v0, Landroid/os/Message;->arg2:I

    .line 426
    :goto_14
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static setVideoRect(IIIII)V
    .registers 7

    .line 261
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 262
    iput v1, v0, Landroid/os/Message;->what:I

    .line 263
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 264
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 265
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static setVideoUrl(IILjava/lang/String;)V
    .registers 5

    .line 236
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 237
    iput v1, v0, Landroid/os/Message;->what:I

    .line 238
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 239
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 240
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static setVideoVisible(IZ)V
    .registers 4

    .line 393
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x9

    .line 394
    iput v1, v0, Landroid/os/Message;->what:I

    .line 395
    iput p0, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_11

    const/4 p0, 0x1

    .line 397
    iput p0, v0, Landroid/os/Message;->arg2:I

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    .line 399
    iput p0, v0, Landroid/os/Message;->arg2:I

    .line 402
    :goto_14
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static startVideo(I)V
    .registers 3

    .line 308
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    .line 309
    iput v1, v0, Landroid/os/Message;->what:I

    .line 310
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 311
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static stopVideo(I)V
    .registers 3

    .line 350
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x7

    .line 351
    iput v1, v0, Landroid/os/Message;->what:I

    .line 352
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 353
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
