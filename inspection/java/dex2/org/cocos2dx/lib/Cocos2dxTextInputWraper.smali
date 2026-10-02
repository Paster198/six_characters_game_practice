.class public Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;
.super Ljava/lang/Object;
.source "Cocos2dxTextInputWraper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Cocos2dxTextInputWraper"


# instance fields
.field private final mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private mOriginText:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    return-void
.end method

.method private isFullScreenEdit()Z
    .registers 3

    .line 64
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getCocos2dxEditText()Lorg/cocos2dx/lib/Cocos2dxEditBox;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 66
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    .line 79
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->isFullScreenEdit()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    .line 84
    :goto_9
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_29

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 85
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mText:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_24

    goto :goto_29

    :cond_24
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 92
    :cond_29
    :goto_29
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_39

    .line 93
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->deleteBackward()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 96
    :cond_39
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_51

    .line 98
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->insertText(Ljava/lang/String;)V

    .line 102
    :cond_51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mText:Ljava/lang/String;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mText:Ljava/lang/String;

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 117
    iget-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {p3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getCocos2dxEditText()Lorg/cocos2dx/lib/Cocos2dxEditBox;

    move-result-object p3

    if-ne p3, p1, :cond_58

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->isFullScreenEdit()Z

    move-result p3

    if-eqz p3, :cond_58

    .line 119
    iget-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mOriginText:Ljava/lang/String;

    if-eqz p3, :cond_20

    .line 120
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    :goto_16
    if-lez p3, :cond_20

    .line 121
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->deleteBackward()V

    add-int/lit8 p3, p3, -0x1

    goto :goto_16

    .line 125
    :cond_20
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 129
    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_34

    .line 130
    const-string p1, "\n"

    .line 133
    :cond_34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0xa

    if-eq v0, p3, :cond_53

    .line 134
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    :cond_53
    iget-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {p3, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->insertText(Ljava/lang/String;)V

    :cond_58
    const/4 p1, 0x6

    if-ne p2, p1, :cond_60

    .line 144
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    :cond_60
    const/4 p1, 0x0

    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public setOriginText(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;->mOriginText:Ljava/lang/String;

    return-void
.end method
