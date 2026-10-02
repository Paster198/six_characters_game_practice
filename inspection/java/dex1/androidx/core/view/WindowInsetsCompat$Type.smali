.class public final Landroidx/core/view/WindowInsetsCompat$Type;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsCompat$Type$InsetsType;
    }
.end annotation


# static fields
.field static final CAPTION_BAR:I = 0x4

.field static final DISPLAY_CUTOUT:I = 0x80

.field static final FIRST:I = 0x1

.field static final IME:I = 0x8

.field static final LAST:I = 0x100

.field static final MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final NAVIGATION_BARS:I = 0x2

.field static final SIZE:I = 0x9

.field static final STATUS_BARS:I = 0x1

.field static final SYSTEM_GESTURES:I = 0x10

.field static final TAPPABLE_ELEMENT:I = 0x40

.field static final WINDOW_DECOR:I = 0x100


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static all()I
    .registers 1

    const/4 v0, -0x1

    return v0
.end method

.method public static captionBar()I
    .registers 1

    const/4 v0, 0x4

    return v0
.end method

.method public static displayCutout()I
    .registers 1

    const/16 v0, 0x80

    return v0
.end method

.method public static ime()I
    .registers 1

    const/16 v0, 0x8

    return v0
.end method

.method static indexOf(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_42

    const/4 v1, 0x2

    if-eq p0, v1, :cond_41

    const/4 v0, 0x4

    if-eq p0, v0, :cond_40

    const/16 v1, 0x8

    if-eq p0, v1, :cond_3e

    const/16 v2, 0x10

    if-eq p0, v2, :cond_3d

    const/16 v0, 0x20

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x40

    if-eq p0, v0, :cond_39

    const/16 v0, 0x80

    if-eq p0, v0, :cond_37

    const/16 v0, 0x100

    if-ne p0, v0, :cond_22

    return v1

    .line 2045
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type needs to be >= FIRST and <= LAST, type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    const/4 p0, 0x7

    return p0

    :cond_39
    const/4 p0, 0x6

    return p0

    :cond_3b
    const/4 p0, 0x5

    return p0

    :cond_3d
    return v0

    :cond_3e
    const/4 p0, 0x3

    return p0

    :cond_40
    return v1

    :cond_41
    return v0

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method public static mandatorySystemGestures()I
    .registers 1

    const/16 v0, 0x20

    return v0
.end method

.method public static navigationBars()I
    .registers 1

    const/4 v0, 0x2

    return v0
.end method

.method public static statusBars()I
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static systemBars()I
    .registers 1

    const/4 v0, 0x7

    return v0
.end method

.method public static systemGestures()I
    .registers 1

    const/16 v0, 0x10

    return v0
.end method

.method public static tappableElement()I
    .registers 1

    const/16 v0, 0x40

    return v0
.end method
