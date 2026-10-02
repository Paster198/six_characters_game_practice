.class Lim/delight/android/commons/Screen$Orientation;
.super Ljava/lang/Object;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/delight/android/commons/Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Orientation"
.end annotation


# static fields
.field private static final LANDSCAPE:I = 0x0

.field private static final PORTRAIT:I = 0x1

.field private static final REVERSE_LANDSCAPE:I = 0x8

.field private static final REVERSE_PORTRAIT:I = 0x9

.field private static final UNSPECIFIED:I = -0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
