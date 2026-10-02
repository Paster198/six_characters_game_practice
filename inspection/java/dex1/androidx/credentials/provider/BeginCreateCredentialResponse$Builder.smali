.class public final Landroidx/credentials/provider/BeginCreateCredentialResponse$Builder;
.super Ljava/lang/Object;
.source "BeginCreateCredentialResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/BeginCreateCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u0006\u0010\n\u001a\u00020\u000bJ\u0014\u0010\u000c\u001a\u00020\u00002\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/credentials/provider/BeginCreateCredentialResponse$Builder;",
        "",
        "()V",
        "createEntries",
        "",
        "Landroidx/credentials/provider/CreateEntry;",
        "remoteEntry",
        "Landroidx/credentials/provider/RemoteEntry;",
        "addCreateEntry",
        "createEntry",
        "build",
        "Landroidx/credentials/provider/BeginCreateCredentialResponse;",
        "setCreateEntries",
        "",
        "setRemoteEntry",
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
.field private createEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/provider/CreateEntry;",
            ">;"
        }
    .end annotation
.end field

.field private remoteEntry:Landroidx/credentials/provider/RemoteEntry;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/credentials/provider/BeginCreateCredentialResponse$Builder;->createEntries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addCreateEntry(Landroidx/credentials/provider/CreateEntry;)Landroidx/credentials/provider/BeginCreateCredentialResponse$Builder;
    .registers 3

    const-string v0, "createEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Landroidx/credentials/provider/BeginCreateCredentialResponse$Builder;->createEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Landroidx/credentials/provider/BeginCreateCredentialResponse;
    .registers 4

    .line 101
    new-instance v0, Landroidx/credentials/provider/BeginCreateCredentialResponse;

    iget-object v1, p0, Landroidx/credentials/provider/BeginCreateCredentialResponse$Builder;->createEntries:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroidx/credentials/provider/BeginCreateCredentialResponse$Builder;->remoteEntry:Landroidx/credentials/provider/RemoteEntry;

    invoke-direct {v0, v1, v2}, Landroidx/credentials/provider/BeginCreateCredentialResponse;-><init>(Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;)V

    return-object v0
.end method

.method public final setCreateEntries(Ljava/util/List;)Landroidx/credentials/provider/BeginCreateCredentialResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/CreateEntry;",
            ">;)",
            "Landroidx/credentials/provider/BeginCreateCredentialResponse$Builder;"
        }
    .end annotation

    const-string v0, "createEntries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/credentials/provider/BeginCreateCredentialResponse$Builder;->createEntries:Ljava/util/List;

    return-object p0
.end method

.method public final setRemoteEntry(Landroidx/credentials/provider/RemoteEntry;)Landroidx/credentials/provider/BeginCreateCredentialResponse$Builder;
    .registers 2

    .line 91
    iput-object p1, p0, Landroidx/credentials/provider/BeginCreateCredentialResponse$Builder;->remoteEntry:Landroidx/credentials/provider/RemoteEntry;

    return-object p0
.end method
