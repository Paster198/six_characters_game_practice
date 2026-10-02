.class Landroidx/core/app/RemoteActionCompat$Api26Impl;
.super Ljava/lang/Object;
.source "RemoteActionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteActionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createRemoteAction(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/RemoteAction;
    .registers 5

    .line 249
    new-instance v0, Landroid/app/RemoteAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method static getActionIntent(Landroid/app/RemoteAction;)Landroid/app/PendingIntent;
    .registers 1

    .line 232
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static getContentDescription(Landroid/app/RemoteAction;)Ljava/lang/CharSequence;
    .registers 1

    .line 228
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getIcon(Landroid/app/RemoteAction;)Landroid/graphics/drawable/Icon;
    .registers 1

    .line 240
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method static getTitle(Landroid/app/RemoteAction;)Ljava/lang/CharSequence;
    .registers 1

    .line 236
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static isEnabled(Landroid/app/RemoteAction;)Z
    .registers 1

    .line 244
    invoke-virtual {p0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result p0

    return p0
.end method

.method static setEnabled(Landroid/app/RemoteAction;Z)V
    .registers 2

    .line 253
    invoke-virtual {p0, p1}, Landroid/app/RemoteAction;->setEnabled(Z)V

    return-void
.end method
