.class Landroidx/core/app/GrammaticalInflectionManagerCompat$Api34Impl;
.super Ljava/lang/Object;
.source "GrammaticalInflectionManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/GrammaticalInflectionManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api34Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApplicationGrammaticalGender(Landroid/content/Context;)I
    .registers 1

    .line 120
    invoke-static {p0}, Landroidx/core/app/GrammaticalInflectionManagerCompat$Api34Impl;->getGrammaticalInflectionManager(Landroid/content/Context;)Landroid/app/GrammaticalInflectionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/GrammaticalInflectionManager;->getApplicationGrammaticalGender()I

    move-result p0

    return p0
.end method

.method private static getGrammaticalInflectionManager(Landroid/content/Context;)Landroid/app/GrammaticalInflectionManager;
    .registers 2

    .line 131
    const-class v0, Landroid/app/GrammaticalInflectionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/GrammaticalInflectionManager;

    return-object p0
.end method

.method static setRequestedApplicationGrammaticalGender(Landroid/content/Context;I)V
    .registers 2

    .line 125
    invoke-static {p0}, Landroidx/core/app/GrammaticalInflectionManagerCompat$Api34Impl;->getGrammaticalInflectionManager(Landroid/content/Context;)Landroid/app/GrammaticalInflectionManager;

    move-result-object p0

    .line 126
    invoke-virtual {p0, p1}, Landroid/app/GrammaticalInflectionManager;->setRequestedApplicationGrammaticalGender(I)V

    return-void
.end method
