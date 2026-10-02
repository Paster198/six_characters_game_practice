.class final Landroidx/core/view/ContentInfoCompat$Compat31Impl;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"

# interfaces
.implements Landroidx/core/view/ContentInfoCompat$Compat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Compat31Impl"
.end annotation


# instance fields
.field private final mWrapped:Landroid/view/ContentInfo;


# direct methods
.method constructor <init>(Landroid/view/ContentInfo;)V
    .registers 2

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ContentInfo;

    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$Compat31Impl;->mWrapped:Landroid/view/ContentInfo;

    return-void
.end method


# virtual methods
.method public getClip()Landroid/content/ClipData;
    .registers 2

    .line 454
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Compat31Impl;->mWrapped:Landroid/view/ContentInfo;

    invoke-virtual {v0}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 478
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Compat31Impl;->mWrapped:Landroid/view/ContentInfo;

    invoke-virtual {v0}, Landroid/view/ContentInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .line 466
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Compat31Impl;->mWrapped:Landroid/view/ContentInfo;

    invoke-virtual {v0}, Landroid/view/ContentInfo;->getFlags()I

    move-result v0

    return v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .registers 2

    .line 472
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Compat31Impl;->mWrapped:Landroid/view/ContentInfo;

    invoke-virtual {v0}, Landroid/view/ContentInfo;->getLinkUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSource()I
    .registers 2

    .line 460
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Compat31Impl;->mWrapped:Landroid/view/ContentInfo;

    invoke-virtual {v0}, Landroid/view/ContentInfo;->getSource()I

    move-result v0

    return v0
.end method

.method public getWrapped()Landroid/view/ContentInfo;
    .registers 2

    .line 448
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Compat31Impl;->mWrapped:Landroid/view/ContentInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentInfoCompat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/core/view/ContentInfoCompat$Compat31Impl;->mWrapped:Landroid/view/ContentInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
