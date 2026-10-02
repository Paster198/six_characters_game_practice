.class public Landroidx/core/app/NotificationCompat$BigPictureStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;,
        Landroidx/core/app/NotificationCompat$BigPictureStyle$Api23Impl;
    }
.end annotation


# static fields
.field private static final TEMPLATE_CLASS_NAME:Ljava/lang/String; = "androidx.core.app.NotificationCompat$BigPictureStyle"


# instance fields
.field private mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mBigLargeIconSet:Z

.field private mPictureContentDescription:Ljava/lang/CharSequence;

.field private mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mShowBigPictureWhenCollapsed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3211
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .registers 2

    .line 3214
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 3215
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    return-void
.end method

.method private static asIconCompat(Landroid/os/Parcelable;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 2

    if-eqz p0, :cond_18

    .line 3394
    instance-of v0, p0, Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_d

    .line 3395
    check-cast p0, Landroid/graphics/drawable/Icon;

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    .line 3398
    :cond_d
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    .line 3399
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPictureIcon(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 3382
    :cond_4
    const-string v0, "android.picture"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3384
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->asIconCompat(Landroid/os/Parcelable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    .line 3386
    :cond_11
    const-string v0, "android.pictureIcon"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->asIconCompat(Landroid/os/Parcelable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 7

    .line 3310
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3311
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v1, v0}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 3313
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 3314
    invoke-virtual {v1, v0}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    .line 3315
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-eqz v1, :cond_44

    .line 3318
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_31

    .line 3320
    instance-of v1, p1, Landroidx/core/app/NotificationCompatBuilder;

    if-eqz v1, :cond_26

    .line 3321
    move-object v1, p1

    check-cast v1, Landroidx/core/app/NotificationCompatBuilder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompatBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_27

    :cond_26
    move-object v1, v3

    .line 3323
    :goto_27
    iget-object v4, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v4, v1}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;->setBigPicture(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    goto :goto_44

    .line 3324
    :cond_31
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_44

    .line 3325
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3326
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    .line 3330
    :cond_44
    :goto_44
    iget-boolean v1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v1, :cond_66

    .line 3331
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v1, :cond_53

    .line 3332
    move-object p1, v3

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_66

    .line 3335
    :cond_53
    instance-of v1, p1, Landroidx/core/app/NotificationCompatBuilder;

    if-eqz v1, :cond_5d

    .line 3336
    check-cast p1, Landroidx/core/app/NotificationCompatBuilder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompatBuilder;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3338
    :cond_5d
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {p1, v3}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api23Impl;->setBigLargeIcon(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    .line 3348
    :cond_66
    :goto_66
    iget-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    if-eqz p1, :cond_6f

    .line 3349
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 3351
    :cond_6f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_7d

    .line 3352
    iget-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    invoke-static {v0, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;->showBigPictureWhenCollapsed(Landroid/app/Notification$BigPictureStyle;Z)V

    .line 3353
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;->setContentDescription(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V

    :cond_7d
    return-void
.end method

.method public bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    .line 3281
    :cond_4
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    :goto_8
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 p1, 0x1

    .line 3282
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    return-object p0
.end method

.method public bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    .line 3291
    :cond_4
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    :goto_8
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 p1, 0x1

    .line 3292
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    .line 3251
    :cond_4
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    :goto_8
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public bigPicture(Landroid/graphics/drawable/Icon;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    .line 3261
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method protected clearCompatExtraKeys(Landroid/os/Bundle;)V
    .registers 3

    .line 3410
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    .line 3411
    const-string v0, "android.largeIcon.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3412
    const-string v0, "android.picture"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3413
    const-string v0, "android.pictureIcon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3414
    const-string v0, "android.showBigPictureWhenCollapsed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method protected getClassName()Ljava/lang/String;
    .registers 2

    .line 3302
    const-string v0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .registers 4

    .line 3363
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V

    .line 3365
    const-string v0, "android.largeIcon.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3366
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->asIconCompat(Landroid/os/Parcelable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v0, 0x1

    .line 3367
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    .line 3369
    :cond_18
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->getPictureIcon(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 3370
    const-string v0, "android.showBigPictureWhenCollapsed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    .line 3223
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    .line 3243
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    .line 3231
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 3232
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    return-object p0
.end method

.method public showBigPictureWhenCollapsed(Z)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .registers 2

    .line 3273
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    return-object p0
.end method
