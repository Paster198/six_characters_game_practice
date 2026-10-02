.class Landroidx/core/app/NotificationCompat$Api29Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 9565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAllowSystemGeneratedContextualActions(Landroid/app/Notification;)Z
    .registers 1

    .line 9568
    invoke-virtual {p0}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result p0

    return p0
.end method

.method static getBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;
    .registers 1

    .line 9584
    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    return-object p0
.end method

.method static getEditChoicesBeforeSending(Landroid/app/RemoteInput;)I
    .registers 1

    .line 9580
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result p0

    return p0
.end method

.method static getLocusId(Landroid/app/Notification;)Landroid/content/LocusId;
    .registers 1

    .line 9572
    invoke-virtual {p0}, Landroid/app/Notification;->getLocusId()Landroid/content/LocusId;

    move-result-object p0

    return-object p0
.end method

.method static isContextual(Landroid/app/Notification$Action;)Z
    .registers 1

    .line 9576
    invoke-virtual {p0}, Landroid/app/Notification$Action;->isContextual()Z

    move-result p0

    return p0
.end method
