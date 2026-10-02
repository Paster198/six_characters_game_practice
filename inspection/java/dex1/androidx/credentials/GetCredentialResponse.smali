.class public final Landroidx/credentials/GetCredentialResponse;
.super Ljava/lang/Object;
.source "GetCredentialResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/GetCredentialResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/credentials/GetCredentialResponse;",
        "",
        "credential",
        "Landroidx/credentials/Credential;",
        "(Landroidx/credentials/Credential;)V",
        "getCredential",
        "()Landroidx/credentials/Credential;",
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
.field public static final Companion:Landroidx/credentials/GetCredentialResponse$Companion;

.field private static final EXTRA_CREDENTIAL_DATA:Ljava/lang/String; = "androidx.credentials.provider.extra.EXTRA_CREDENTIAL_DATA"

.field private static final EXTRA_CREDENTIAL_TYPE:Ljava/lang/String; = "androidx.credentials.provider.extra.EXTRA_CREDENTIAL_TYPE"


# instance fields
.field private final credential:Landroidx/credentials/Credential;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/GetCredentialResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/GetCredentialResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/GetCredentialResponse;->Companion:Landroidx/credentials/GetCredentialResponse$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/credentials/Credential;)V
    .registers 3

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/GetCredentialResponse;->credential:Landroidx/credentials/Credential;

    return-void
.end method

.method public static final asBundle(Landroidx/credentials/GetCredentialResponse;)Landroid/os/Bundle;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/GetCredentialResponse;->Companion:Landroidx/credentials/GetCredentialResponse$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/GetCredentialResponse$Companion;->asBundle(Landroidx/credentials/GetCredentialResponse;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/GetCredentialResponse;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/GetCredentialResponse;->Companion:Landroidx/credentials/GetCredentialResponse$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/GetCredentialResponse$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/GetCredentialResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCredential()Landroidx/credentials/Credential;
    .registers 2

    .line 28
    iget-object v0, p0, Landroidx/credentials/GetCredentialResponse;->credential:Landroidx/credentials/Credential;

    return-object v0
.end method
