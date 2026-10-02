.class public final Landroidx/credentials/exceptions/restorecredential/E2eeUnavailableException;
.super Landroidx/credentials/exceptions/CreateCredentialException;
.source "E2eeUnavailableException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/exceptions/restorecredential/E2eeUnavailableException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0003\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/credentials/exceptions/restorecredential/E2eeUnavailableException;",
        "Landroidx/credentials/exceptions/CreateCredentialException;",
        "errorMessage",
        "",
        "(Ljava/lang/CharSequence;)V",
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
.field public static final Companion:Landroidx/credentials/exceptions/restorecredential/E2eeUnavailableException$Companion;

.field public static final TYPE_E2EE_UNAVAILABLE_EXCEPTION:Ljava/lang/String; = "androidx.credentials.TYPE_E2EE_UNAVAILABLE_EXCEPTION"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/exceptions/restorecredential/E2eeUnavailableException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/restorecredential/E2eeUnavailableException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/exceptions/restorecredential/E2eeUnavailableException;->Companion:Landroidx/credentials/exceptions/restorecredential/E2eeUnavailableException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-string v0, "androidx.credentials.TYPE_E2EE_UNAVAILABLE_EXCEPTION"

    invoke-direct {p0, v0, p1}, Landroidx/credentials/exceptions/CreateCredentialException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
