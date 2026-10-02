.class public final Landroidx/credentials/CredentialManagerViewHandler;
.super Ljava/lang/Object;
.source "CredentialManagerViewHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"2\u0010\u0004\u001a\u0004\u0018\u00010\u0003*\u00020\u00052\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u0012\u0012\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "TAG",
        "",
        "value",
        "Landroidx/credentials/PendingGetCredentialRequest;",
        "pendingGetCredentialRequest",
        "Landroid/view/View;",
        "getPendingGetCredentialRequest$annotations",
        "(Landroid/view/View;)V",
        "getPendingGetCredentialRequest",
        "(Landroid/view/View;)Landroidx/credentials/PendingGetCredentialRequest;",
        "setPendingGetCredentialRequest",
        "(Landroid/view/View;Landroidx/credentials/PendingGetCredentialRequest;)V",
        "credentials_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewHandler"


# direct methods
.method public static final getPendingGetCredentialRequest(Landroid/view/View;)Landroidx/credentials/PendingGetCredentialRequest;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget v0, Landroidx/credentials/R$id;->androidx_credential_pendingCredentialRequest:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/credentials/PendingGetCredentialRequest;

    if-eqz v0, :cond_12

    check-cast p0, Landroidx/credentials/PendingGetCredentialRequest;

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic getPendingGetCredentialRequest$annotations(Landroid/view/View;)V
    .registers 1

    return-void
.end method

.method public static final setPendingGetCredentialRequest(Landroid/view/View;Landroidx/credentials/PendingGetCredentialRequest;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget v0, Landroidx/credentials/R$id;->androidx_credential_pendingCredentialRequest:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/16 v0, 0x22

    const/16 v1, 0x23

    if-eqz p1, :cond_2a

    .line 68
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v1, :cond_1c

    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v0, :cond_37

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-lez v0, :cond_37

    .line 71
    :cond_1c
    sget-object v0, Landroidx/credentials/Api35Impl;->INSTANCE:Landroidx/credentials/Api35Impl;

    invoke-virtual {p1}, Landroidx/credentials/PendingGetCredentialRequest;->getRequest()Landroidx/credentials/GetCredentialRequest;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/credentials/PendingGetCredentialRequest;->getCallback()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Landroidx/credentials/Api35Impl;->setPendingGetCredentialRequest(Landroid/view/View;Landroidx/credentials/GetCredentialRequest;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 75
    :cond_2a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v1, :cond_38

    .line 76
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v0, :cond_37

    sget p1, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-lez p1, :cond_37

    goto :goto_38

    :cond_37
    return-void

    .line 78
    :cond_38
    :goto_38
    sget-object p1, Landroidx/credentials/Api35Impl;->INSTANCE:Landroidx/credentials/Api35Impl;

    invoke-virtual {p1, p0}, Landroidx/credentials/Api35Impl;->clearPendingGetCredentialRequest(Landroid/view/View;)V

    return-void
.end method
