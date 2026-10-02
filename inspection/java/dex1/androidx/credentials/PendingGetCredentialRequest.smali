.class public final Landroidx/credentials/PendingGetCredentialRequest;
.super Ljava/lang/Object;
.source "PendingGetCredentialRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\u0008R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/credentials/PendingGetCredentialRequest;",
        "",
        "request",
        "Landroidx/credentials/GetCredentialRequest;",
        "callback",
        "Lkotlin/Function1;",
        "Landroidx/credentials/GetCredentialResponse;",
        "",
        "(Landroidx/credentials/GetCredentialRequest;Lkotlin/jvm/functions/Function1;)V",
        "getCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "getRequest",
        "()Landroidx/credentials/GetCredentialRequest;",
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
.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/credentials/GetCredentialResponse;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Landroidx/credentials/GetCredentialRequest;


# direct methods
.method public constructor <init>(Landroidx/credentials/GetCredentialRequest;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/credentials/GetCredentialRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/credentials/GetCredentialResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/credentials/PendingGetCredentialRequest;->request:Landroidx/credentials/GetCredentialRequest;

    .line 37
    iput-object p2, p0, Landroidx/credentials/PendingGetCredentialRequest;->callback:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getCallback()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/credentials/GetCredentialResponse;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Landroidx/credentials/PendingGetCredentialRequest;->callback:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getRequest()Landroidx/credentials/GetCredentialRequest;
    .registers 2

    .line 36
    iget-object v0, p0, Landroidx/credentials/PendingGetCredentialRequest;->request:Landroidx/credentials/GetCredentialRequest;

    return-object v0
.end method
