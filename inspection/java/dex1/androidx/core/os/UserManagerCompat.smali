.class public Landroidx/core/os/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/UserManagerCompat$Api24Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .registers 1

    .line 43
    invoke-static {p0}, Landroidx/core/os/UserManagerCompat$Api24Impl;->isUserUnlocked(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
