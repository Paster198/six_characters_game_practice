.class public final Landroidx/credentials/exceptions/restorecredential/CreateRestoreCredentialDomException;
.super Landroidx/credentials/exceptions/CreateCredentialException;
.source "CreateRestoreCredentialDomException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/exceptions/restorecredential/CreateRestoreCredentialDomException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0005\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/credentials/exceptions/restorecredential/CreateRestoreCredentialDomException;",
        "Landroidx/credentials/exceptions/CreateCredentialException;",
        "domError",
        "Landroidx/credentials/exceptions/domerrors/DomError;",
        "errorMessage",
        "",
        "(Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/CharSequence;)V",
        "getDomError",
        "()Landroidx/credentials/exceptions/domerrors/DomError;",
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
.field public static final Companion:Landroidx/credentials/exceptions/restorecredential/CreateRestoreCredentialDomException$Companion;

.field public static final TYPE_CREATE_RESTORE_CREDENTIAL_DOM_EXCEPTION:Ljava/lang/String; = "androidx.credentials.TYPE_CREATE_RESTORE_CREDENTIAL_DOM_EXCEPTION"


# instance fields
.field private final domError:Landroidx/credentials/exceptions/domerrors/DomError;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/exceptions/restorecredential/CreateRestoreCredentialDomException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/restorecredential/CreateRestoreCredentialDomException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/exceptions/restorecredential/CreateRestoreCredentialDomException;->Companion:Landroidx/credentials/exceptions/restorecredential/CreateRestoreCredentialDomException$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/CharSequence;)V
    .registers 5

    const-string v0, "domError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "androidx.credentials.TYPE_CREATE_RESTORE_CREDENTIAL_DOM_EXCEPTION/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/credentials/exceptions/domerrors/DomError;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-direct {p0, v0, p2}, Landroidx/credentials/exceptions/CreateCredentialException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 32
    iput-object p1, p0, Landroidx/credentials/exceptions/restorecredential/CreateRestoreCredentialDomException;->domError:Landroidx/credentials/exceptions/domerrors/DomError;

    return-void
.end method


# virtual methods
.method public final getDomError()Landroidx/credentials/exceptions/domerrors/DomError;
    .registers 2

    .line 32
    iget-object v0, p0, Landroidx/credentials/exceptions/restorecredential/CreateRestoreCredentialDomException;->domError:Landroidx/credentials/exceptions/domerrors/DomError;

    return-object v0
.end method
