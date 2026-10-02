.class final Landroidx/credentials/Api35Impl;
.super Ljava/lang/Object;
.source "CredentialManagerViewHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J*\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00040\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/credentials/Api35Impl;",
        "",
        "()V",
        "clearPendingGetCredentialRequest",
        "",
        "view",
        "Landroid/view/View;",
        "setPendingGetCredentialRequest",
        "request",
        "Landroidx/credentials/GetCredentialRequest;",
        "callback",
        "Lkotlin/Function1;",
        "Landroidx/credentials/GetCredentialResponse;",
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
.field public static final INSTANCE:Landroidx/credentials/Api35Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/credentials/Api35Impl;

    invoke-direct {v0}, Landroidx/credentials/Api35Impl;-><init>()V

    sput-object v0, Landroidx/credentials/Api35Impl;->INSTANCE:Landroidx/credentials/Api35Impl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearPendingGetCredentialRequest(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->clearPendingCredentialRequest()V

    return-void
.end method

.method public final setPendingGetCredentialRequest(Landroid/view/View;Landroidx/credentials/GetCredentialRequest;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/credentials/GetCredentialRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/credentials/GetCredentialResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Landroidx/credentials/internal/FrameworkImplHelper;->Companion:Landroidx/credentials/internal/FrameworkImplHelper$Companion;

    invoke-virtual {v0, p2}, Landroidx/credentials/internal/FrameworkImplHelper$Companion;->convertGetRequestToFrameworkClass(Landroidx/credentials/GetCredentialRequest;)Landroid/credentials/GetCredentialRequest;

    move-result-object p2

    .line 92
    new-instance v0, Landroidx/credentials/Api35Impl$setPendingGetCredentialRequest$frameworkCallback$1;

    invoke-direct {v0, p3}, Landroidx/credentials/Api35Impl$setPendingGetCredentialRequest$frameworkCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 105
    check-cast v0, Landroid/os/OutcomeReceiver;

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setPendingCredentialRequest(Landroid/credentials/GetCredentialRequest;Landroid/os/OutcomeReceiver;)V

    return-void
.end method
