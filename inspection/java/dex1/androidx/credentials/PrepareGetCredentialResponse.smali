.class public final Landroidx/credentials/PrepareGetCredentialResponse;
.super Ljava/lang/Object;
.source "PrepareGetCredentialResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/PrepareGetCredentialResponse$Builder;,
        Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;,
        Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0007\u0018\u00002\u00020\u0001:\u0003\u001c\u001d\u001eBa\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007\u0012\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\t\u0012\u001a\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000bj\u0004\u0018\u0001`\r\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0018\u001a\u00020\u0006H\u0007J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u000cH\u0007J\u0008\u0010\u001b\u001a\u00020\u0006H\u0007R%\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000bj\u0004\u0018\u0001`\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001f\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001f\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0011\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0015R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/credentials/PrepareGetCredentialResponse;",
        "",
        "pendingGetCredentialHandle",
        "Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;",
        "hasRemoteResultsDelegate",
        "Lkotlin/Function0;",
        "",
        "Landroidx/credentials/HasRemoteResultsDelegate;",
        "hasAuthResultsDelegate",
        "Landroidx/credentials/HasAuthenticationResultsDelegate;",
        "credentialTypeDelegate",
        "Lkotlin/Function1;",
        "",
        "Landroidx/credentials/HasCredentialResultsDelegate;",
        "isNullHandlesForTest",
        "(Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)V",
        "getCredentialTypeDelegate",
        "()Lkotlin/jvm/functions/Function1;",
        "getHasAuthResultsDelegate",
        "()Lkotlin/jvm/functions/Function0;",
        "getHasRemoteResultsDelegate",
        "()Z",
        "getPendingGetCredentialHandle",
        "()Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;",
        "hasAuthenticationResults",
        "hasCredentialResults",
        "credentialType",
        "hasRemoteResults",
        "Builder",
        "PendingGetCredentialHandle",
        "TestBuilder",
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
.field private final credentialTypeDelegate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hasAuthResultsDelegate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hasRemoteResultsDelegate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isNullHandlesForTest:Z

.field private final pendingGetCredentialHandle:Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;


# direct methods
.method private constructor <init>(Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroidx/credentials/PrepareGetCredentialResponse;->pendingGetCredentialHandle:Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    .line 56
    iput-object p2, p0, Landroidx/credentials/PrepareGetCredentialResponse;->hasRemoteResultsDelegate:Lkotlin/jvm/functions/Function0;

    .line 57
    iput-object p3, p0, Landroidx/credentials/PrepareGetCredentialResponse;->hasAuthResultsDelegate:Lkotlin/jvm/functions/Function0;

    .line 58
    iput-object p4, p0, Landroidx/credentials/PrepareGetCredentialResponse;->credentialTypeDelegate:Lkotlin/jvm/functions/Function1;

    .line 59
    iput-boolean p5, p0, Landroidx/credentials/PrepareGetCredentialResponse;->isNullHandlesForTest:Z

    .line 66
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x22

    if-lt p2, p3, :cond_18

    if-nez p5, :cond_18

    .line 67
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroidx/credentials/PrepareGetCredentialResponse;-><init>(Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method


# virtual methods
.method public final getCredentialTypeDelegate()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->credentialTypeDelegate:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getHasAuthResultsDelegate()Lkotlin/jvm/functions/Function0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->hasAuthResultsDelegate:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getHasRemoteResultsDelegate()Lkotlin/jvm/functions/Function0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->hasRemoteResultsDelegate:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getPendingGetCredentialHandle()Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;
    .registers 2

    .line 55
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->pendingGetCredentialHandle:Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    return-object v0
.end method

.method public final hasAuthenticationResults()Z
    .registers 2

    .line 93
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->hasAuthResultsDelegate:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_f

    .line 94
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final hasCredentialResults(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "credentialType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->credentialTypeDelegate:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_14

    .line 80
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public final hasRemoteResults()Z
    .registers 2

    .line 106
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->hasRemoteResultsDelegate:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_f

    .line 107
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final isNullHandlesForTest()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->isNullHandlesForTest:Z

    return v0
.end method
