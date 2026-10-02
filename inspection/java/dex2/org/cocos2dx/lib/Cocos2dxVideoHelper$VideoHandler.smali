.class Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;
.super Landroid/os/Handler;
.source "Cocos2dxVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoHandler"
.end annotation


# instance fields
.field mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/cocos2dx/lib/Cocos2dxVideoHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10c

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_11c

    goto/16 :goto_117

    .line 107
    :pswitch_d
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 108
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    .line 109
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v2, :cond_28

    .line 110
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setFullScreenEnabled(IZII)V
    invoke-static {v0, v1, v2, v4, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$500(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZII)V

    goto/16 :goto_117

    .line 112
    :cond_28
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setFullScreenEnabled(IZII)V
    invoke-static {v0, v2, v1, v4, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$500(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZII)V

    goto/16 :goto_117

    .line 151
    :pswitch_33
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 152
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_46

    .line 153
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoKeepRatio(IZ)V
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$1200(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_117

    .line 155
    :cond_46
    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoKeepRatio(IZ)V
    invoke-static {v0, v2, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$1200(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_117

    .line 146
    :pswitch_4d
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 147
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_restartVideo(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$1100(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto/16 :goto_117

    .line 137
    :pswitch_5c
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 138
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_6f

    .line 139
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoVisible(IZ)V
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$1000(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_117

    .line 141
    :cond_6f
    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoVisible(IZ)V
    invoke-static {v0, v2, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$1000(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_117

    .line 132
    :pswitch_76
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 133
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_seekVideoTo(II)V
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$900(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;II)V

    goto/16 :goto_117

    .line 127
    :pswitch_87
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 128
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_stopVideo(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$800(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto/16 :goto_117

    .line 122
    :pswitch_96
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 123
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_resumeVideo(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$700(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto/16 :goto_117

    .line 117
    :pswitch_a5
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 118
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_pauseVideo(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$600(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto :goto_117

    .line 96
    :pswitch_b3
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 97
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_startVideo(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$300(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto :goto_117

    .line 101
    :pswitch_c1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 102
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    .line 103
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoRect(IIIII)V
    invoke-static/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$400(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IIIII)V

    goto :goto_117

    .line 91
    :pswitch_dc
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 92
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoURL(IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$200(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IILjava/lang/String;)V

    goto :goto_117

    .line 86
    :pswitch_f0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 87
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_removeVideoView(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$100(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto :goto_117

    .line 81
    :pswitch_fe
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 82
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_createVideoView(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$000(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto :goto_117

    .line 160
    :cond_10c
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 161
    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->onBackKeyEvent()V
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$1300(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V

    .line 168
    :goto_117
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_fe
        :pswitch_f0
        :pswitch_dc
        :pswitch_c1
        :pswitch_b3
        :pswitch_a5
        :pswitch_96
        :pswitch_87
        :pswitch_76
        :pswitch_5c
        :pswitch_4d
        :pswitch_33
        :pswitch_d
    .end packed-switch
.end method
