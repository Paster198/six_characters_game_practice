.class Landroidx/core/app/NotificationCompat$Api20Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api20Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 9442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAllowFreeFormInput(Landroid/app/RemoteInput;)Z
    .registers 1

    .line 9445
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result p0

    return p0
.end method

.method static getChoices(Landroid/app/RemoteInput;)[Ljava/lang/CharSequence;
    .registers 1

    .line 9449
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getExtras(Landroid/app/Notification$Action;)Landroid/os/Bundle;
    .registers 1

    .line 9473
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static getExtras(Landroid/app/RemoteInput;)Landroid/os/Bundle;
    .registers 1

    .line 9477
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .registers 1

    .line 9469
    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getLabel(Landroid/app/RemoteInput;)Ljava/lang/CharSequence;
    .registers 1

    .line 9453
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getRemoteInputs(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;
    .registers 1

    .line 9461
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object p0

    return-object p0
.end method

.method static getResultKey(Landroid/app/RemoteInput;)Ljava/lang/String;
    .registers 1

    .line 9457
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .registers 1

    .line 9465
    invoke-virtual {p0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
