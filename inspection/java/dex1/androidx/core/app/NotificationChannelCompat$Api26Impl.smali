.class Landroidx/core/app/NotificationChannelCompat$Api26Impl;
.super Ljava/lang/Object;
.source "NotificationChannelCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationChannelCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canBypassDnd(Landroid/app/NotificationChannel;)Z
    .registers 1

    .line 623
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p0

    return p0
.end method

.method static canShowBadge(Landroid/app/NotificationChannel;)Z
    .registers 1

    .line 569
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result p0

    return p0
.end method

.method static createNotificationChannel(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;
    .registers 4

    .line 537
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method static enableLights(Landroid/app/NotificationChannel;Z)V
    .registers 2

    .line 594
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    return-void
.end method

.method static enableVibration(Landroid/app/NotificationChannel;Z)V
    .registers 2

    .line 610
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    return-void
.end method

.method static getAudioAttributes(Landroid/app/NotificationChannel;)Landroid/media/AudioAttributes;
    .registers 1

    .line 586
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method static getDescription(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .registers 1

    .line 553
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getGroup(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .registers 1

    .line 561
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getId(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .registers 1

    .line 541
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getImportance(Landroid/app/NotificationChannel;)I
    .registers 1

    .line 545
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    return p0
.end method

.method static getLightColor(Landroid/app/NotificationChannel;)I
    .registers 1

    .line 598
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result p0

    return p0
.end method

.method static getLockscreenVisibility(Landroid/app/NotificationChannel;)I
    .registers 1

    .line 627
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p0

    return p0
.end method

.method static getName(Landroid/app/NotificationChannel;)Ljava/lang/CharSequence;
    .registers 1

    .line 549
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getSound(Landroid/app/NotificationChannel;)Landroid/net/Uri;
    .registers 1

    .line 577
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static getVibrationPattern(Landroid/app/NotificationChannel;)[J
    .registers 1

    .line 614
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object p0

    return-object p0
.end method

.method static setDescription(Landroid/app/NotificationChannel;Ljava/lang/String;)V
    .registers 2

    .line 557
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static setGroup(Landroid/app/NotificationChannel;Ljava/lang/String;)V
    .registers 2

    .line 565
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    return-void
.end method

.method static setLightColor(Landroid/app/NotificationChannel;I)V
    .registers 2

    .line 602
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    return-void
.end method

.method static setShowBadge(Landroid/app/NotificationChannel;Z)V
    .registers 2

    .line 573
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    return-void
.end method

.method static setSound(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    .registers 3

    .line 582
    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method static setVibrationPattern(Landroid/app/NotificationChannel;[J)V
    .registers 2

    .line 619
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    return-void
.end method

.method static shouldShowLights(Landroid/app/NotificationChannel;)Z
    .registers 1

    .line 590
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result p0

    return p0
.end method

.method static shouldVibrate(Landroid/app/NotificationChannel;)Z
    .registers 1

    .line 606
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result p0

    return p0
.end method
