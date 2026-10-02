.class public Lorg/cocos2dx/lib/Cocos2dxEditBox;
.super Landroid/widget/EditText;
.source "Cocos2dxEditBox.java"


# instance fields
.field private final kEditBoxInputFlagInitialCapsAllCharacters:I

.field private final kEditBoxInputFlagInitialCapsSentence:I

.field private final kEditBoxInputFlagInitialCapsWord:I

.field private final kEditBoxInputFlagLowercaseAllCharacters:I

.field private final kEditBoxInputFlagPassword:I

.field private final kEditBoxInputFlagSensitive:I

.field private final kEditBoxInputModeAny:I

.field private final kEditBoxInputModeDecimal:I

.field private final kEditBoxInputModeEmailAddr:I

.field private final kEditBoxInputModeNumeric:I

.field private final kEditBoxInputModePhoneNumber:I

.field private final kEditBoxInputModeSingleLine:I

.field private final kEditBoxInputModeUrl:I

.field private final kKeyboardReturnTypeDefault:I

.field private final kKeyboardReturnTypeDone:I

.field private final kKeyboardReturnTypeGo:I

.field private final kKeyboardReturnTypeSearch:I

.field private final kKeyboardReturnTypeSend:I

.field private mInputFlagConstraints:I

.field private mInputModeConstraints:I

.field private mMaxLength:I

.field private mScaleX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 124
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeAny:I

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeEmailAddr:I

    const/4 v1, 0x2

    .line 55
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeNumeric:I

    const/4 v2, 0x3

    .line 60
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModePhoneNumber:I

    const/4 v3, 0x4

    .line 65
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeUrl:I

    const/4 v4, 0x5

    .line 70
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeDecimal:I

    const/4 v5, 0x6

    .line 75
    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeSingleLine:I

    .line 80
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagPassword:I

    .line 85
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagSensitive:I

    .line 90
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsWord:I

    .line 95
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsSentence:I

    .line 100
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsAllCharacters:I

    .line 105
    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagLowercaseAllCharacters:I

    .line 107
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeDefault:I

    .line 108
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeDone:I

    .line 109
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeSend:I

    .line 110
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeSearch:I

    .line 111
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeGo:I

    return-void
.end method


# virtual methods
.method public getOpenGLViewScaleX()F
    .registers 2

    .line 139
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mScaleX:F

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    .line 222
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 217
    :cond_8
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 219
    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 228
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setEditBoxViewRect(IIII)V
    .registers 7

    .line 128
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 130
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 131
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 132
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 133
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x33

    .line 134
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 135
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setInputFlag(I)V
    .registers 4

    if-eqz p1, :cond_29

    const/4 v0, 0x1

    if-eq p1, v0, :cond_24

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_15

    const/4 v1, 0x5

    if-eq p1, v1, :cond_12

    goto :goto_3a

    .line 252
    :cond_12
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_3a

    :cond_15
    const/16 p1, 0x1000

    .line 249
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_3a

    :cond_1a
    const/16 p1, 0x4000

    .line 246
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_3a

    :cond_1f
    const/16 p1, 0x2000

    .line 243
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_3a

    :cond_24
    const/high16 p1, 0x80000

    .line 240
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_3a

    :cond_29
    const/16 p1, 0x81

    .line 235
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    .line 236
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 237
    new-instance p1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {p1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 258
    :goto_3a
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputType(I)V

    return-void
.end method

.method public setInputMode(I)V
    .registers 3

    packed-switch p1, :pswitch_data_2e

    goto :goto_25

    :pswitch_4
    const/4 p1, 0x1

    .line 202
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_25

    :pswitch_8
    const/16 p1, 0x3002

    .line 199
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_25

    :pswitch_d
    const/16 p1, 0x11

    .line 196
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_25

    :pswitch_12
    const/4 p1, 0x3

    .line 193
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_25

    :pswitch_16
    const/16 p1, 0x1002

    .line 190
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_25

    :pswitch_1b
    const/16 p1, 0x21

    .line 187
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_25

    :pswitch_20
    const p1, 0x20001

    .line 184
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    .line 209
    :goto_25
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputType(I)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_12
        :pswitch_d
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method public setMaxLength(I)V
    .registers 4

    .line 148
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mMaxLength:I

    const/4 p1, 0x1

    .line 150
    new-array p1, p1, [Landroid/text/InputFilter;

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mMaxLength:I

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setMultilineEnabled(Z)V
    .registers 3

    .line 154
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    return-void
.end method

.method public setOpenGLViewScaleX(F)V
    .registers 2

    .line 143
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mScaleX:F

    return-void
.end method

.method public setReturnType(I)V
    .registers 4

    const v0, 0x10000001

    if-eqz p1, :cond_31

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_23

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1c

    const/4 v1, 0x4

    if-eq p1, v1, :cond_15

    .line 175
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void

    :cond_15
    const p1, 0x10000002

    .line 172
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void

    :cond_1c
    const p1, 0x10000003

    .line 169
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void

    :cond_23
    const p1, 0x10000004

    .line 166
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void

    :cond_2a
    const p1, 0x10000006

    .line 163
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void

    .line 160
    :cond_31
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void
.end method
