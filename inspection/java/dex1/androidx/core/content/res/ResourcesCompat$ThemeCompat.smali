.class public final Landroidx/core/content/res/ResourcesCompat$ThemeCompat;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/ResourcesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThemeCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api29Impl;,
        Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rebase(Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 733
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_a

    .line 734
    invoke-static {p0}, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api29Impl;->rebase(Landroid/content/res/Resources$Theme;)V

    return-void

    .line 736
    :cond_a
    invoke-static {p0}, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$Api23Impl;->rebase(Landroid/content/res/Resources$Theme;)V

    return-void
.end method
