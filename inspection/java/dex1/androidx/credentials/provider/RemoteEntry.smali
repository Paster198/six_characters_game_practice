.class public final Landroidx/credentials/provider/RemoteEntry;
.super Ljava/lang/Object;
.source "RemoteEntry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/RemoteEntry$Api34Impl;,
        Landroidx/credentials/provider/RemoteEntry$Builder;,
        Landroidx/credentials/provider/RemoteEntry$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 \u000e2\u00020\u0001:\u0003\u000c\r\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/credentials/provider/RemoteEntry;",
        "",
        "pendingIntent",
        "Landroid/app/PendingIntent;",
        "(Landroid/app/PendingIntent;)V",
        "getPendingIntent",
        "()Landroid/app/PendingIntent;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "Api34Impl",
        "Builder",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/credentials/provider/RemoteEntry$Companion;

.field private static final EXTRA_REMOTE_ENTRY_PENDING_INTENT:Ljava/lang/String; = "androidx.credentials.provider.extra.REMOTE_ENTRY_PENDING_INTENT"

.field private static final REVISION_ID:I = 0x1

.field private static final SLICE_HINT_PENDING_INTENT:Ljava/lang/String; = "androidx.credentials.provider.remoteEntry.SLICE_HINT_PENDING_INTENT"

.field private static final SLICE_SPEC_TYPE:Ljava/lang/String; = "RemoteEntry"

.field private static final TAG:Ljava/lang/String; = "RemoteEntry"


# instance fields
.field private final pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/provider/RemoteEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/RemoteEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/RemoteEntry;->Companion:Landroidx/credentials/provider/RemoteEntry$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .registers 3

    const-string v0, "pendingIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/provider/RemoteEntry;->pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static final fromRemoteEntry(Landroid/service/credentials/RemoteEntry;)Landroidx/credentials/provider/RemoteEntry;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/RemoteEntry;->Companion:Landroidx/credentials/provider/RemoteEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/RemoteEntry$Companion;->fromRemoteEntry(Landroid/service/credentials/RemoteEntry;)Landroidx/credentials/provider/RemoteEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/RemoteEntry;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/RemoteEntry;->Companion:Landroidx/credentials/provider/RemoteEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/RemoteEntry$Companion;->fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/RemoteEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final toSlice(Landroidx/credentials/provider/RemoteEntry;)Landroid/app/slice/Slice;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/RemoteEntry;->Companion:Landroidx/credentials/provider/RemoteEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/RemoteEntry$Companion;->toSlice(Landroidx/credentials/provider/RemoteEntry;)Landroid/app/slice/Slice;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 171
    :cond_4
    instance-of v0, p1, Landroidx/credentials/provider/RemoteEntry;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 172
    :cond_a
    iget-object v0, p0, Landroidx/credentials/provider/RemoteEntry;->pendingIntent:Landroid/app/PendingIntent;

    check-cast p1, Landroidx/credentials/provider/RemoteEntry;

    iget-object p1, p1, Landroidx/credentials/provider/RemoteEntry;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 53
    iget-object v0, p0, Landroidx/credentials/provider/RemoteEntry;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 176
    iget-object v0, p0, Landroidx/credentials/provider/RemoteEntry;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    return v0
.end method
