.class public final Landroidx/credentials/provider/Action$Builder;
.super Ljava/lang/Object;
.source "Action.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/credentials/provider/Action$Builder;",
        "",
        "title",
        "",
        "pendingIntent",
        "Landroid/app/PendingIntent;",
        "(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V",
        "subtitle",
        "build",
        "Landroidx/credentials/provider/Action;",
        "setSubtitle",
        "credentials_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final pendingIntent:Landroid/app/PendingIntent;

.field private subtitle:Ljava/lang/CharSequence;

.field private final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 4

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroidx/credentials/provider/Action$Builder;->title:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroidx/credentials/provider/Action$Builder;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/credentials/provider/Action;
    .registers 5

    .line 106
    new-instance v0, Landroidx/credentials/provider/Action;

    iget-object v1, p0, Landroidx/credentials/provider/Action$Builder;->title:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroidx/credentials/provider/Action$Builder;->pendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroidx/credentials/provider/Action$Builder;->subtitle:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3}, Landroidx/credentials/provider/Action;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)Landroidx/credentials/provider/Action$Builder;
    .registers 2

    .line 96
    iput-object p1, p0, Landroidx/credentials/provider/Action$Builder;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method
