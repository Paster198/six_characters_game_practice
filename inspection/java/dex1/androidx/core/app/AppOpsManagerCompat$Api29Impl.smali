.class Landroidx/core/app/AppOpsManagerCompat$Api29Impl;
.super Ljava/lang/Object;
.source "AppOpsManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/AppOpsManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkOpNoThrow(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 235
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static getOpPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSystemService(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .registers 2

    .line 223
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method
