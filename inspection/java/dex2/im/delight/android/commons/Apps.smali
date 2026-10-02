.class public final Lim/delight/android/commons/Apps;
.super Ljava/lang/Object;
.source "Apps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/delight/android/commons/Apps$Entry;
    }
.end annotation


# static fields
.field private static mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 30
    invoke-static {p0, p1}, Lim/delight/android/commons/Apps;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 81
    :try_start_0
    invoke-static {p0}, Lim/delight/android/commons/Apps;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAppTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 2

    .line 60
    :try_start_0
    invoke-static {p0}, Lim/delight/android/commons/Apps;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getInstalledPackages(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-static {p0}, Lim/delight/android/commons/Apps;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getList(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lim/delight/android/commons/Apps$Entry;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lim/delight/android/commons/Apps;->getInstalledPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 48
    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_22

    goto :goto_11

    .line 52
    :cond_22
    new-instance v3, Lim/delight/android/commons/Apps$Entry;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lim/delight/android/commons/Apps;->getAppTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lim/delight/android/commons/Apps;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v2, v6}, Lim/delight/android/commons/Apps$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;ZLim/delight/android/commons/Apps$1;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_36
    return-object v1
.end method

.method private static getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .registers 2

    .line 105
    sget-object v0, Lim/delight/android/commons/Apps;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_a

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sput-object p0, Lim/delight/android/commons/Apps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 109
    :cond_a
    sget-object p0, Lim/delight/android/commons/Apps;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method private static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    .line 68
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    .line 72
    :cond_7
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_f

    return v1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static launch(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 95
    invoke-static {p0}, Lim/delight/android/commons/Apps;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 98
    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package with specified name `"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "` is not launchable"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
