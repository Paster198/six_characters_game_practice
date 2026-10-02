.class public final Lim/delight/android/commons/Notifications;
.super Ljava/lang/Object;
.source "Notifications.java"


# static fields
.field private static final LIGHTS_COLOR_DEFAULT:I = -0x1

.field private static final NOTIFICATION_ID_DEFAULT:I = 0x1

.field private static mInstance:Lim/delight/android/commons/Notifications;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lim/delight/android/commons/Notifications;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lim/delight/android/commons/Notifications;
    .registers 2

    .line 47
    sget-object v0, Lim/delight/android/commons/Notifications;->mInstance:Lim/delight/android/commons/Notifications;

    if-nez v0, :cond_b

    .line 48
    new-instance v0, Lim/delight/android/commons/Notifications;

    invoke-direct {v0, p0}, Lim/delight/android/commons/Notifications;-><init>(Landroid/content/Context;)V

    sput-object v0, Lim/delight/android/commons/Notifications;->mInstance:Lim/delight/android/commons/Notifications;

    .line 51
    :cond_b
    sget-object p0, Lim/delight/android/commons/Notifications;->mInstance:Lim/delight/android/commons/Notifications;

    return-object p0
.end method


# virtual methods
.method public cancel(I)V
    .registers 4

    .line 143
    iget-object v0, p0, Lim/delight/android/commons/Notifications;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 146
    :try_start_a
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method

.method public show(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 64
    invoke-virtual/range {v0 .. v5}, Lim/delight/android/commons/Notifications;->show(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public show(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)I"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 78
    invoke-virtual/range {v0 .. v6}, Lim/delight/android/commons/Notifications;->show(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)I

    move-result p1

    return p1
.end method

.method public show(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)I"
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/delight/android/commons/Notifications;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    iget-object p1, p0, Lim/delight/android/commons/Notifications;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 101
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lim/delight/android/commons/Notifications;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 103
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    if-eqz p5, :cond_2c

    .line 105
    iget-object p1, p0, Lim/delight/android/commons/Notifications;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 107
    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v0, p4, p5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const/4 p1, 0x1

    .line 108
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 109
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 110
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/16 p1, 0x1f4

    const/16 p2, 0x7d0

    const/4 p3, -0x1

    .line 111
    invoke-virtual {v0, p3, p1, p2}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 114
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 131
    iget-object p2, p0, Lim/delight/android/commons/Notifications;->mContext:Landroid/content/Context;

    const-string p3, "notification"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 132
    invoke-virtual {p2, p6, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return p6
.end method
