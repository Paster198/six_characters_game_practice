.class public final Landroidx/core/app/PendingIntentCompat;
.super Ljava/lang/Object;
.source "PendingIntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/PendingIntentCompat$Api26Impl;,
        Landroidx/core/app/PendingIntentCompat$GatedCallback;,
        Landroidx/core/app/PendingIntentCompat$Api23Impl;,
        Landroidx/core/app/PendingIntentCompat$Flags;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addMutabilityFlags(ZI)I
    .registers 3

    if-eqz p0, :cond_d

    .line 279
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_c

    const/high16 p0, 0x2000000

    :goto_a
    or-int/2addr p0, p1

    return p0

    :cond_c
    return p1

    :cond_d
    const/high16 p0, 0x4000000

    goto :goto_a
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Z)Landroid/app/PendingIntent;
    .registers 6

    .line 79
    invoke-static {p5, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 78
    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .registers 5

    .line 95
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 94
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Z)Landroid/app/PendingIntent;
    .registers 6

    .line 134
    invoke-static {p5, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 133
    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .registers 5

    .line 114
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 113
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getBroadcast(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .registers 5

    .line 153
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 152
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getForegroundService(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .registers 5

    .line 170
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 169
    invoke-static {p0, p1, p2, p3}, Landroidx/core/app/PendingIntentCompat$Api26Impl;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .registers 5

    .line 189
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 188
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static send(Landroid/app/PendingIntent;ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 208
    new-instance v0, Landroidx/core/app/PendingIntentCompat$GatedCallback;

    invoke-direct {v0, p2}, Landroidx/core/app/PendingIntentCompat$GatedCallback;-><init>(Landroid/app/PendingIntent$OnFinished;)V

    .line 209
    :try_start_5
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->getCallback()Landroid/app/PendingIntent$OnFinished;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/PendingIntent;->send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 210
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->complete()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    .line 211
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->close()V

    return-void

    :catchall_13
    move-exception p0

    .line 208
    :try_start_14
    invoke-virtual {v0}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw p0
.end method

.method public static send(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 233
    invoke-static/range {v0 .. v7}, Landroidx/core/app/PendingIntentCompat;->send(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static send(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 258
    new-instance v1, Landroidx/core/app/PendingIntentCompat$GatedCallback;

    invoke-direct {v1, p4}, Landroidx/core/app/PendingIntentCompat$GatedCallback;-><init>(Landroid/app/PendingIntent$OnFinished;)V

    .line 260
    :try_start_5
    invoke-static/range {p0 .. p7}, Landroidx/core/app/PendingIntentCompat$Api23Impl;->send(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 273
    invoke-virtual {v1}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->complete()V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 274
    invoke-virtual {v1}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->close()V

    return-void

    :catchall_f
    move-exception v0

    move-object p0, v0

    .line 258
    :try_start_11
    invoke-virtual {v1}, Landroidx/core/app/PendingIntentCompat$GatedCallback;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_1a

    :catchall_15
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw p0
.end method
