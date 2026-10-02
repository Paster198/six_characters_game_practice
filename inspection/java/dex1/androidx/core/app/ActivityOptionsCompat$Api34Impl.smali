.class Landroidx/core/app/ActivityOptionsCompat$Api34Impl;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api34Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setPendingIntentBackgroundActivityStartMode(Landroid/app/ActivityOptions;I)Landroid/app/ActivityOptions;
    .registers 2

    .line 541
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method static setShareIdentityEnabled(Landroid/app/ActivityOptions;Z)Landroid/app/ActivityOptions;
    .registers 2

    .line 536
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setShareIdentityEnabled(Z)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method
