.class public Landroidx/core/view/DragStartHelper;
.super Ljava/lang/Object;
.source "DragStartHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DragStartHelper$OnDragStartListener;
    }
.end annotation


# instance fields
.field private mDragging:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

.field private final mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/DragStartHelper$OnDragStartListener;)V
    .registers 4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/core/view/DragStartHelper;)V

    iput-object v0, p0, Landroidx/core/view/DragStartHelper;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 192
    new-instance v0, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda1;-><init>(Landroidx/core/view/DragStartHelper;)V

    iput-object v0, p0, Landroidx/core/view/DragStartHelper;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 100
    iput-object p1, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    .line 101
    iput-object p2, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    return-void
.end method


# virtual methods
.method public attach()V
    .registers 3

    .line 110
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/core/view/DragStartHelper;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 111
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Landroidx/core/view/DragStartHelper;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public detach()V
    .registers 3

    .line 120
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 121
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getTouchPosition(Landroid/graphics/Point;)V
    .registers 4

    .line 186
    iget v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    iget v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 173
    iget-boolean v0, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 177
    :cond_6
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v0, p1, p0}, Landroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_49

    const/4 v4, 0x1

    if-eq v2, v4, :cond_46

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1b

    const/4 p1, 0x3

    if-eq v2, p1, :cond_46

    goto :goto_4d

    :cond_1b
    const/16 v2, 0x2002

    .line 141
    invoke-static {p2, v2}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p2

    and-int/2addr p2, v4

    if-nez p2, :cond_2b

    goto :goto_4d

    .line 146
    :cond_2b
    iget-boolean p2, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    if-eqz p2, :cond_30

    goto :goto_4d

    .line 150
    :cond_30
    iget p2, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    if-ne p2, v0, :cond_39

    iget p2, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    if-ne p2, v1, :cond_39

    goto :goto_4d

    .line 154
    :cond_39
    iput v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    .line 155
    iput v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    .line 156
    iget-object p2, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    invoke-interface {p2, p1, p0}, Landroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    return p1

    .line 161
    :cond_46
    iput-boolean v3, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    goto :goto_4d

    .line 136
    :cond_49
    iput v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    .line 137
    iput v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    :cond_4d
    :goto_4d
    return v3
.end method
