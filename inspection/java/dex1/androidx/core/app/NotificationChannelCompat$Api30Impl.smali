.class Landroidx/core/app/NotificationChannelCompat$Api30Impl;
.super Ljava/lang/Object;
.source "NotificationChannelCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationChannelCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getConversationId(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .registers 1

    .line 660
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getParentChannelId(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .registers 1

    .line 656
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static isImportantConversation(Landroid/app/NotificationChannel;)Z
    .registers 1

    .line 669
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    return p0
.end method

.method static setConversationId(Landroid/app/NotificationChannel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 665
    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
