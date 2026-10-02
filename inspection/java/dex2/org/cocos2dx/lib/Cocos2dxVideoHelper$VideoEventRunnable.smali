.class Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;
.super Ljava/lang/Object;
.source "Cocos2dxVideoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoEventRunnable"
.end annotation


# instance fields
.field private mVideoEvent:I

.field private mVideoTag:I

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;II)V
    .registers 4

    .line 177
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;->mVideoTag:I

    .line 179
    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;->mVideoEvent:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 183
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;->mVideoTag:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;->mVideoEvent:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->nativeExecuteVideoCallback(II)V

    return-void
.end method
