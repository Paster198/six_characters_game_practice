.class public final Landroidx/credentials/provider/ProviderClearCredentialStateRequest;
.super Ljava/lang/Object;
.source "ProviderClearCredentialStateRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/ProviderClearCredentialStateRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/credentials/provider/ProviderClearCredentialStateRequest;",
        "",
        "callingAppInfo",
        "Landroidx/credentials/provider/CallingAppInfo;",
        "(Landroidx/credentials/provider/CallingAppInfo;)V",
        "getCallingAppInfo",
        "()Landroidx/credentials/provider/CallingAppInfo;",
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
.field public static final Companion:Landroidx/credentials/provider/ProviderClearCredentialStateRequest$Companion;


# instance fields
.field private final callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/provider/ProviderClearCredentialStateRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/ProviderClearCredentialStateRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/ProviderClearCredentialStateRequest;->Companion:Landroidx/credentials/provider/ProviderClearCredentialStateRequest$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/credentials/provider/CallingAppInfo;)V
    .registers 3

    const-string v0, "callingAppInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/provider/ProviderClearCredentialStateRequest;->callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

    return-void
.end method

.method public static final asBundle(Landroidx/credentials/provider/ProviderClearCredentialStateRequest;)Landroid/os/Bundle;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/ProviderClearCredentialStateRequest;->Companion:Landroidx/credentials/provider/ProviderClearCredentialStateRequest$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/ProviderClearCredentialStateRequest$Companion;->asBundle(Landroidx/credentials/provider/ProviderClearCredentialStateRequest;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/ProviderClearCredentialStateRequest;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/ProviderClearCredentialStateRequest;->Companion:Landroidx/credentials/provider/ProviderClearCredentialStateRequest$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/ProviderClearCredentialStateRequest$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/ProviderClearCredentialStateRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCallingAppInfo()Landroidx/credentials/provider/CallingAppInfo;
    .registers 2

    .line 33
    iget-object v0, p0, Landroidx/credentials/provider/ProviderClearCredentialStateRequest;->callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

    return-object v0
.end method
