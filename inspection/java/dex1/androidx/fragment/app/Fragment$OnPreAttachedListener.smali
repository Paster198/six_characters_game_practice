.class abstract Landroidx/fragment/app/Fragment$OnPreAttachedListener;
.super Ljava/lang/Object;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OnPreAttachedListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/fragment/app/Fragment$1;)V
    .registers 2

    .line 317
    invoke-direct {p0}, Landroidx/fragment/app/Fragment$OnPreAttachedListener;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onPreAttached()V
.end method
