.class public final Landroidx/core/app/NotificationCompat$WearableExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroidx/core/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$WearableExtender$Api20Impl;,
        Landroidx/core/app/NotificationCompat$WearableExtender$Api23Impl;,
        Landroidx/core/app/NotificationCompat$WearableExtender$Api24Impl;,
        Landroidx/core/app/NotificationCompat$WearableExtender$Api31Impl;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONTENT_ICON_GRAVITY:I = 0x800005

.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final DEFAULT_GRAVITY:I = 0x50

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_BIG_PICTURE_AMBIENT:I = 0x20

.field private static final FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE:I = 0x1

.field private static final FLAG_HINT_AVOID_BACKGROUND_CLIPPING:I = 0x10

.field private static final FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY:I = 0x40

.field private static final FLAG_HINT_HIDE_ICON:I = 0x2

.field private static final FLAG_HINT_SHOW_BACKGROUND_ONLY:I = 0x4

.field private static final FLAG_START_SCROLL_BOTTOM:I = 0x8

.field private static final KEY_ACTIONS:Ljava/lang/String; = "actions"

.field private static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field private static final KEY_BRIDGE_TAG:Ljava/lang/String; = "bridgeTag"

.field private static final KEY_CONTENT_ACTION_INDEX:Ljava/lang/String; = "contentActionIndex"

.field private static final KEY_CONTENT_ICON:Ljava/lang/String; = "contentIcon"

.field private static final KEY_CONTENT_ICON_GRAVITY:Ljava/lang/String; = "contentIconGravity"

.field private static final KEY_CUSTOM_CONTENT_HEIGHT:Ljava/lang/String; = "customContentHeight"

.field private static final KEY_CUSTOM_SIZE_PRESET:Ljava/lang/String; = "customSizePreset"

.field private static final KEY_DISMISSAL_ID:Ljava/lang/String; = "dismissalId"

.field private static final KEY_DISPLAY_INTENT:Ljava/lang/String; = "displayIntent"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_GRAVITY:Ljava/lang/String; = "gravity"

.field private static final KEY_HINT_SCREEN_TIMEOUT:Ljava/lang/String; = "hintScreenTimeout"

.field private static final KEY_PAGES:Ljava/lang/String; = "pages"

.field public static final SCREEN_TIMEOUT_LONG:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCREEN_TIMEOUT_SHORT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_FULL_SCREEN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_LARGE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_MEDIUM:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_SMALL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE_XSMALL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNSET_ACTION_INDEX:I = -0x1


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Landroid/graphics/Bitmap;

.field private mBridgeTag:Ljava/lang/String;

.field private mContentActionIndex:I

.field private mContentIcon:I

.field private mContentIconGravity:I

.field private mCustomContentHeight:I

.field private mCustomSizePreset:I

.field private mDismissalId:Ljava/lang/String;

.field private mDisplayIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mGravity:I

.field private mHintScreenTimeout:I

.field private mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 6730
    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 6732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    const v0, 0x800005

    .line 6735
    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    const/4 v0, -0x1

    .line 6736
    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    const/4 v0, 0x0

    .line 6737
    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    const/16 v0, 0x50

    .line 6740
    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .registers 12

    .line 6753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 6730
    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 6732
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    const v1, 0x800005

    .line 6735
    iput v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    const/4 v2, -0x1

    .line 6736
    iput v2, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    const/4 v3, 0x0

    .line 6737
    iput v3, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    const/16 v4, 0x50

    .line 6740
    iput v4, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 6754
    invoke-static {p1}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 6755
    const-string v5, "android.wearable.EXTENSIONS"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    if-eqz p1, :cond_c3

    .line 6758
    const-string v5, "actions"

    .line 6759
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_52

    .line 6761
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [Landroidx/core/app/NotificationCompat$Action;

    move v8, v3

    :goto_42
    if-ge v8, v6, :cond_4d

    .line 6764
    invoke-static {v5, v8}, Landroidx/core/app/NotificationCompat$WearableExtender$Api20Impl;->getActionCompatFromAction(Ljava/util/ArrayList;I)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 6770
    :cond_4d
    iget-object v5, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-static {v5, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6773
    :cond_52
    const-string v5, "flags"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 6774
    const-string v0, "displayIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 6776
    const-string v0, "pages"

    invoke-static {p1, v0}, Landroidx/core/app/NotificationCompat;->getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 6779
    iget-object v5, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-static {v5, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6782
    :cond_71
    const-string v0, "background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 6783
    const-string v0, "contentIcon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 6784
    const-string v0, "contentIconGravity"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 6786
    const-string v0, "contentActionIndex"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 6788
    const-string v0, "customSizePreset"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 6790
    const-string v0, "customContentHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 6791
    const-string v0, "gravity"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 6792
    const-string v0, "hintScreenTimeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 6793
    const-string v0, "dismissalId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 6794
    const-string v0, "bridgeTag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    :cond_c3
    return-void
.end method

.method private static getActionFromActionCompat(Landroidx/core/app/NotificationCompat$Action;)Landroid/app/Notification$Action;
    .registers 5

    .line 6871
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    .line 6873
    :cond_8
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_c
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 6874
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 6872
    invoke-static {v0, v1, v2}, Landroidx/core/app/NotificationCompat$WearableExtender$Api23Impl;->createBuilder(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    move-result-object v0

    .line 6885
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 6886
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_2d

    .line 6888
    :cond_28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6890
    :goto_2d
    const-string v2, "android.support.allowGeneratedReplies"

    .line 6891
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v3

    .line 6890
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6894
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v2

    .line 6893
    invoke-static {v0, v2}, Landroidx/core/app/NotificationCompat$WearableExtender$Api24Impl;->setAllowGeneratedReplies(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 6896
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_4a

    .line 6898
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->isAuthenticationRequired()Z

    move-result v2

    .line 6897
    invoke-static {v0, v2}, Landroidx/core/app/NotificationCompat$WearableExtender$Api31Impl;->setAuthenticationRequired(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 6900
    :cond_4a
    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompat$WearableExtender$Api20Impl;->addExtras(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 6901
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->getRemoteInputs()[Landroidx/core/app/RemoteInput;

    move-result-object p0

    if-eqz p0, :cond_63

    .line 6903
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object p0

    .line 6904
    array-length v1, p0

    const/4 v2, 0x0

    :goto_59
    if-ge v2, v1, :cond_63

    aget-object v3, p0, v2

    .line 6905
    invoke-static {v0, v3}, Landroidx/core/app/NotificationCompat$WearableExtender$Api20Impl;->addRemoteInput(Landroid/app/Notification$Action$Builder;Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 6908
    :cond_63
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$WearableExtender$Api20Impl;->build(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method private setFlag(IZ)V
    .registers 3

    if-eqz p2, :cond_8

    .line 7528
    iget p2, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    return-void

    .line 7530
    :cond_8
    iget p2, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    return-void
.end method


# virtual methods
.method public addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 3

    .line 6945
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addActions(Ljava/util/List;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;)",
            "Landroidx/core/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .line 6962
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addPage(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7044
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPages(Ljava/util/List;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroidx/core/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7061
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public clearActions()Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 2

    .line 6972
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public clearPages()Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7073
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public clone()Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 4

    .line 6914
    new-instance v0, Landroidx/core/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$WearableExtender;-><init>()V

    .line 6915
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 6916
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 6917
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 6918
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 6919
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 6920
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 6921
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 6922
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 6923
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 6924
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 6925
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 6926
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    iput v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 6927
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 6928
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6604
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$WearableExtender;->clone()Landroidx/core/app/NotificationCompat$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 6

    .line 6807
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6809
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 6810
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6811
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/NotificationCompat$Action;

    .line 6814
    invoke-static {v3}, Landroidx/core/app/NotificationCompat$WearableExtender;->getActionFromActionCompat(Landroidx/core/app/NotificationCompat$Action;)Landroid/app/Notification$Action;

    move-result-object v3

    .line 6813
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 6819
    :cond_32
    const-string v2, "actions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6821
    :cond_37
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_41

    .line 6822
    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6824
    :cond_41
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_4a

    .line 6825
    const-string v2, "displayIntent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6827
    :cond_4a
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    .line 6828
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 6829
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/app/Notification;

    .line 6828
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    const-string v2, "pages"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 6831
    :cond_65
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6e

    .line 6832
    const-string v2, "background"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6834
    :cond_6e
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    if-eqz v1, :cond_77

    .line 6835
    const-string v2, "contentIcon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6837
    :cond_77
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    const v2, 0x800005

    if-eq v1, v2, :cond_83

    .line 6838
    const-string v2, "contentIconGravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6840
    :cond_83
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8d

    .line 6841
    const-string v2, "contentActionIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6844
    :cond_8d
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    if-eqz v1, :cond_96

    .line 6845
    const-string v2, "customSizePreset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6847
    :cond_96
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    if-eqz v1, :cond_9f

    .line 6848
    const-string v2, "customContentHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6850
    :cond_9f
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_aa

    .line 6851
    const-string v2, "gravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6853
    :cond_aa
    iget v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    if-eqz v1, :cond_b3

    .line 6854
    const-string v2, "hintScreenTimeout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6856
    :cond_b3
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    if-eqz v1, :cond_bc

    .line 6857
    const-string v2, "dismissalId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6859
    :cond_bc
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    if-eqz v1, :cond_c5

    .line 6860
    const-string v2, "bridgeTag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6863
    :cond_c5
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .line 6980
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBackground()Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7117
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBridgeTag()Ljava/lang/String;
    .registers 2

    .line 7523
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    return-object v0
.end method

.method public getContentAction()I
    .registers 2

    .line 7193
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    return v0
.end method

.method public getContentIcon()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7138
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    return v0
.end method

.method public getContentIconGravity()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7165
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    return v0
.end method

.method public getContentIntentAvailableOffline()Z
    .registers 3

    .line 7321
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomContentHeight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7280
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    return v0
.end method

.method public getCustomSizePreset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7252
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    return v0
.end method

.method public getDismissalId()Ljava/lang/String;
    .registers 2

    .line 7502
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayIntent()Landroid/app/PendingIntent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7028
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getGravity()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7220
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    return v0
.end method

.method public getHintAmbientBigPicture()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7457
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public getHintAvoidBackgroundClipping()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7402
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public getHintContentIntentLaunchesActivity()Z
    .registers 2

    .line 7480
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public getHintHideIcon()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7346
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public getHintScreenTimeout()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7430
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    return v0
.end method

.method public getHintShowBackgroundOnly()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7371
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public getPages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7087
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartScrollBottom()Z
    .registers 2

    .line 7299
    iget v0, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7102
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setBridgeTag(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 2

    .line 7514
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mBridgeTag:Ljava/lang/String;

    return-object p0
.end method

.method public setContentAction(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 2

    .line 7179
    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    return-object p0
.end method

.method public setContentIcon(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7127
    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIcon:I

    return-object p0
.end method

.method public setContentIconGravity(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7151
    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    return-object p0
.end method

.method public setContentIntentAvailableOffline(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 3

    const/4 v0, 0x1

    .line 7310
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setCustomContentHeight(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7266
    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    return-object p0
.end method

.method public setCustomSizePreset(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7236
    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    return-object p0
.end method

.method public setDismissalId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 2

    .line 7493
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mDismissalId:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7016
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setGravity(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7206
    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mGravity:I

    return-object p0
.end method

.method public setHintAmbientBigPicture(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x20

    .line 7443
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setHintAvoidBackgroundClipping(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    .line 7387
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setHintContentIntentLaunchesActivity(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 3

    const/16 v0, 0x40

    .line 7469
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setHintHideIcon(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 7333
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setHintScreenTimeout(I)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7416
    iput p1, p0, Landroidx/core/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    return-object p0
.end method

.method public setHintShowBackgroundOnly(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    .line 7358
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method

.method public setStartScrollBottom(Z)Landroidx/core/app/NotificationCompat$WearableExtender;
    .registers 3

    const/16 v0, 0x8

    .line 7289
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    return-object p0
.end method
