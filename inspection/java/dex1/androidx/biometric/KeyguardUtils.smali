.class Landroidx/biometric/KeyguardUtils;
.super Ljava/lang/Object;
.source "KeyguardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/KeyguardUtils$Api16Impl;,
        Landroidx/biometric/KeyguardUtils$Api23Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getKeyguardManager(Landroid/content/Context;)Landroid/app/KeyguardManager;
    .registers 1

    .line 43
    invoke-static {p0}, Landroidx/biometric/KeyguardUtils$Api23Impl;->getKeyguardManager(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object p0

    return-object p0
.end method

.method static isDeviceSecuredWithCredential(Landroid/content/Context;)Z
    .registers 1

    .line 56
    invoke-static {p0}, Landroidx/biometric/KeyguardUtils;->getKeyguardManager(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 61
    :cond_8
    invoke-static {p0}, Landroidx/biometric/KeyguardUtils$Api23Impl;->isDeviceSecure(Landroid/app/KeyguardManager;)Z

    move-result p0

    return p0
.end method
