.class Landroidx/core/app/LocaleManagerCompat$Api33Impl;
.super Ljava/lang/Object;
.source "LocaleManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/LocaleManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static localeManagerGetApplicationLocales(Ljava/lang/Object;)Landroid/os/LocaleList;
    .registers 1

    .line 142
    check-cast p0, Landroid/app/LocaleManager;

    .line 143
    invoke-virtual {p0}, Landroid/app/LocaleManager;->getApplicationLocales()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method static localeManagerGetSystemLocales(Ljava/lang/Object;)Landroid/os/LocaleList;
    .registers 1

    .line 137
    check-cast p0, Landroid/app/LocaleManager;

    .line 138
    invoke-virtual {p0}, Landroid/app/LocaleManager;->getSystemLocales()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method
