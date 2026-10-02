.class public final Landroidx/credentials/provider/BeginGetCredentialResponse;
.super Ljava/lang/Object;
.source "BeginGetCredentialResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/BeginGetCredentialResponse$Api23Impl;,
        Landroidx/credentials/provider/BeginGetCredentialResponse$Api34Impl;,
        Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;,
        Landroidx/credentials/provider/BeginGetCredentialResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 \u00152\u00020\u0001:\u0004\u0012\u0013\u0014\u0015BA\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/credentials/provider/BeginGetCredentialResponse;",
        "",
        "credentialEntries",
        "",
        "Landroidx/credentials/provider/CredentialEntry;",
        "actions",
        "Landroidx/credentials/provider/Action;",
        "authenticationActions",
        "Landroidx/credentials/provider/AuthenticationAction;",
        "remoteEntry",
        "Landroidx/credentials/provider/RemoteEntry;",
        "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;)V",
        "getActions",
        "()Ljava/util/List;",
        "getAuthenticationActions",
        "getCredentialEntries",
        "getRemoteEntry",
        "()Landroidx/credentials/provider/RemoteEntry;",
        "Api23Impl",
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
.field public static final Companion:Landroidx/credentials/provider/BeginGetCredentialResponse$Companion;


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/provider/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final authenticationActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/provider/AuthenticationAction;",
            ">;"
        }
    .end annotation
.end field

.field private final credentialEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/provider/CredentialEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteEntry:Landroidx/credentials/provider/RemoteEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/provider/BeginGetCredentialResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/BeginGetCredentialResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/BeginGetCredentialResponse;->Companion:Landroidx/credentials/provider/BeginGetCredentialResponse$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/credentials/provider/BeginGetCredentialResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/provider/CredentialEntry;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/Action;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/AuthenticationAction;",
            ">;",
            "Landroidx/credentials/provider/RemoteEntry;",
            ")V"
        }
    .end annotation

    const-string v0, "credentialEntries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationActions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/credentials/provider/BeginGetCredentialResponse;->credentialEntries:Ljava/util/List;

    .line 52
    iput-object p2, p0, Landroidx/credentials/provider/BeginGetCredentialResponse;->actions:Ljava/util/List;

    .line 53
    iput-object p3, p0, Landroidx/credentials/provider/BeginGetCredentialResponse;->authenticationActions:Ljava/util/List;

    .line 54
    iput-object p4, p0, Landroidx/credentials/provider/BeginGetCredentialResponse;->remoteEntry:Landroidx/credentials/provider/RemoteEntry;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_8

    .line 51
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_8
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_10

    .line 52
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_10
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_18

    .line 53
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_18
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1d

    const/4 p4, 0x0

    .line 50
    :cond_1d
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/credentials/provider/BeginGetCredentialResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;)V

    return-void
.end method

.method public static final asBundle(Landroidx/credentials/provider/BeginGetCredentialResponse;)Landroid/os/Bundle;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/BeginGetCredentialResponse;->Companion:Landroidx/credentials/provider/BeginGetCredentialResponse$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/BeginGetCredentialResponse$Companion;->asBundle(Landroidx/credentials/provider/BeginGetCredentialResponse;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginGetCredentialResponse;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/BeginGetCredentialResponse;->Companion:Landroidx/credentials/provider/BeginGetCredentialResponse$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/BeginGetCredentialResponse$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginGetCredentialResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/Action;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroidx/credentials/provider/BeginGetCredentialResponse;->actions:Ljava/util/List;

    return-object v0
.end method

.method public final getAuthenticationActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/AuthenticationAction;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Landroidx/credentials/provider/BeginGetCredentialResponse;->authenticationActions:Ljava/util/List;

    return-object v0
.end method

.method public final getCredentialEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/CredentialEntry;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Landroidx/credentials/provider/BeginGetCredentialResponse;->credentialEntries:Ljava/util/List;

    return-object v0
.end method

.method public final getRemoteEntry()Landroidx/credentials/provider/RemoteEntry;
    .registers 2

    .line 54
    iget-object v0, p0, Landroidx/credentials/provider/BeginGetCredentialResponse;->remoteEntry:Landroidx/credentials/provider/RemoteEntry;

    return-object v0
.end method
