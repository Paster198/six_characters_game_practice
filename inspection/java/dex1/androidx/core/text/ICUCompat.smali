.class public final Landroidx/core/text/ICUCompat;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/ICUCompat$Api24Impl;,
        Landroidx/core/text/ICUCompat$Api21Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompat"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLikelySubtagsBelowApi21(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 131
    const-string v0, "ICUCompat"

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    .line 133
    :try_start_6
    sget-object v1, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1f

    .line 134
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 135
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_15} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    move-exception v1

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    :catch_1b
    move-exception v1

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_1f
    return-object p0
.end method

.method private static getScriptBelowApi21(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 115
    const-string v0, "ICUCompat"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1b

    .line 116
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 117
    invoke-virtual {v2, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_11} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 124
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :catch_17
    move-exception p0

    .line 121
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    :goto_1b
    return-object v1
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 1

    .line 88
    invoke-static {p0}, Landroidx/core/text/ICUCompat$Api24Impl;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/text/ICUCompat$Api24Impl;->addLikelySubtags(Ljava/lang/Object;)Landroid/icu/util/ULocale;

    move-result-object p0

    .line 89
    invoke-static {p0}, Landroidx/core/text/ICUCompat$Api24Impl;->getScript(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
