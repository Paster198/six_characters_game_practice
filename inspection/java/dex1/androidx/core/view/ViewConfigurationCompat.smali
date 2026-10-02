.class public final Landroidx/core/view/ViewConfigurationCompat;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewConfigurationCompat$Api26Impl;,
        Landroidx/core/view/ViewConfigurationCompat$Api28Impl;,
        Landroidx/core/view/ViewConfigurationCompat$Api34Impl;
    }
.end annotation


# static fields
.field private static final NO_FLING_MAX_VELOCITY:I = -0x80000000

.field private static final NO_FLING_MIN_VELOCITY:I = 0x7fffffff

.field private static final RESOURCE_ID_NOT_SUPPORTED:I = -0x1

.field private static final RESOURCE_ID_SUPPORTED_BUT_NOT_FOUND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ViewConfigCompat"

.field private static sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$DUnOdzWd_GMixRu8Q8mhfglZyiM(Landroid/view/ViewConfiguration;)I
    .registers 1

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$u_xUdJpIAAO3758SdHprtx7JUP0(Landroid/view/ViewConfiguration;)I
    .registers 1

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1b

    .line 57
    :try_start_6
    const-class v0, Landroid/view/ViewConfiguration;

    const-string v1, "getScaledScrollFactor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewConfigurationCompat;->sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    return-void

    .line 60
    :catch_14
    const-string v0, "ViewConfigCompat"

    const-string v1, "Could not find method getScaledScrollFactor() on ViewConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCompatFlingVelocityThreshold(Landroid/content/res/Resources;ILandroidx/core/util/Supplier;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Landroidx/core/util/Supplier<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_e

    if-eqz p1, :cond_d

    .line 395
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-gez p0, :cond_c

    goto :goto_d

    :cond_c
    return p0

    :cond_d
    :goto_d
    return p3

    .line 389
    :cond_e
    invoke-interface {p2}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getLegacyScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .registers 5

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_20

    sget-object v0, Landroidx/core/view/ViewConfigurationCompat;->sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 127
    :try_start_b
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_19

    int-to-float p0, p0

    return p0

    .line 129
    :catch_19
    const-string p0, "ViewConfigCompat"

    const-string v0, "Could not find method getScaledScrollFactor() on ViewConfiguration"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_20
    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x101004d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    :cond_40
    const/4 p0, 0x0

    return p0
.end method

.method private static getPlatformResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 362
    const-string v0, "android"

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getPreApi34MaximumFlingVelocityResId(Landroid/content/res/Resources;II)I
    .registers 4

    const/high16 v0, 0x400000

    if-ne p1, v0, :cond_11

    const/16 p1, 0x1a

    if-ne p2, p1, :cond_11

    .line 347
    const-string p1, "config_viewMaxRotaryEncoderFlingVelocity"

    const-string p2, "dimen"

    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewConfigurationCompat;->getPlatformResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method private static getPreApi34MinimumFlingVelocityResId(Landroid/content/res/Resources;II)I
    .registers 4

    const/high16 v0, 0x400000

    if-ne p1, v0, :cond_11

    const/16 p1, 0x1a

    if-ne p2, p1, :cond_11

    .line 355
    const-string p1, "config_viewMinRotaryEncoderFlingVelocity"

    const-string p2, "dimen"

    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewConfigurationCompat;->getPlatformResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method public static getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .registers 4

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 100
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api26Impl;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;)F

    move-result p0

    return p0

    .line 102
    :cond_b
    invoke-static {p0, p1}, Landroidx/core/view/ViewConfigurationCompat;->getLegacyScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public static getScaledHoverSlop(Landroid/view/ViewConfiguration;)I
    .registers 3

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 148
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api28Impl;->getScaledHoverSlop(Landroid/view/ViewConfiguration;)I

    move-result p0

    return p0

    .line 150
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static getScaledMaximumFlingVelocity(Landroid/content/Context;Landroid/view/ViewConfiguration;III)I
    .registers 7

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_b

    .line 273
    invoke-static {p1, p2, p3, p4}, Landroidx/core/view/ViewConfigurationCompat$Api34Impl;->getScaledMaximumFlingVelocity(Landroid/view/ViewConfiguration;III)I

    move-result p0

    return p0

    .line 276
    :cond_b
    invoke-static {p2, p3, p4}, Landroidx/core/view/ViewConfigurationCompat;->isInputDeviceInfoValid(III)Z

    move-result p2

    const/high16 v0, -0x80000000

    if-nez p2, :cond_14

    return v0

    .line 280
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 283
    invoke-static {p0, p4, p3}, Landroidx/core/view/ViewConfigurationCompat;->getPreApi34MaximumFlingVelocityResId(Landroid/content/res/Resources;II)I

    move-result p2

    .line 284
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Landroidx/core/view/ViewConfigurationCompat$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Landroidx/core/view/ViewConfigurationCompat$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewConfiguration;)V

    .line 281
    invoke-static {p0, p2, p3, v0}, Landroidx/core/view/ViewConfigurationCompat;->getCompatFlingVelocityThreshold(Landroid/content/res/Resources;ILandroidx/core/util/Supplier;I)I

    move-result p0

    return p0
.end method

.method public static getScaledMinimumFlingVelocity(Landroid/content/Context;Landroid/view/ViewConfiguration;III)I
    .registers 7

    .line 239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_b

    .line 240
    invoke-static {p1, p2, p3, p4}, Landroidx/core/view/ViewConfigurationCompat$Api34Impl;->getScaledMinimumFlingVelocity(Landroid/view/ViewConfiguration;III)I

    move-result p0

    return p0

    .line 243
    :cond_b
    invoke-static {p2, p3, p4}, Landroidx/core/view/ViewConfigurationCompat;->isInputDeviceInfoValid(III)Z

    move-result p2

    const v0, 0x7fffffff

    if-nez p2, :cond_15

    return v0

    .line 247
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 250
    invoke-static {p0, p4, p3}, Landroidx/core/view/ViewConfigurationCompat;->getPreApi34MinimumFlingVelocityResId(Landroid/content/res/Resources;II)I

    move-result p2

    .line 251
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Landroidx/core/view/ViewConfigurationCompat$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1}, Landroidx/core/view/ViewConfigurationCompat$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewConfiguration;)V

    .line 248
    invoke-static {p0, p2, p3, v0}, Landroidx/core/view/ViewConfigurationCompat;->getCompatFlingVelocityThreshold(Landroid/content/res/Resources;ILandroidx/core/util/Supplier;I)I

    move-result p0

    return p0
.end method

.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "config.getScaledPagingTouchSlop()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p0

    return p0
.end method

.method public static getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .registers 4

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 117
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api26Impl;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;)F

    move-result p0

    return p0

    .line 119
    :cond_b
    invoke-static {p0, p1}, Landroidx/core/view/ViewConfigurationCompat;->getLegacyScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public static hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "config.hasPermanentMenuKey()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p0

    return p0
.end method

.method private static isInputDeviceInfoValid(III)Z
    .registers 3

    .line 366
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 367
    invoke-virtual {p0, p1, p2}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z
    .registers 4

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 162
    invoke-static {p0}, Landroidx/core/view/ViewConfigurationCompat$Api28Impl;->shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;)Z

    move-result p0

    return p0

    .line 164
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 165
    const-string p1, "config_showMenuShortcutsWhenKeyboardPresent"

    const-string v0, "bool"

    .line 166
    invoke-static {p0, p1, v0}, Landroidx/core/view/ViewConfigurationCompat;->getPlatformResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_21

    .line 167
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method
