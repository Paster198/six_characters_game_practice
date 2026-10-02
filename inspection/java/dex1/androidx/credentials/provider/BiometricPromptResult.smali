.class public final Landroidx/credentials/provider/BiometricPromptResult;
.super Ljava/lang/Object;
.source "BiometricPromptResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001f\u0008\u0000\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0008J\u0013\u0010\u0010\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/credentials/provider/BiometricPromptResult;",
        "",
        "authenticationError",
        "Landroidx/credentials/provider/AuthenticationError;",
        "(Landroidx/credentials/provider/AuthenticationError;)V",
        "authenticationResult",
        "Landroidx/credentials/provider/AuthenticationResult;",
        "(Landroidx/credentials/provider/AuthenticationResult;)V",
        "(Landroidx/credentials/provider/AuthenticationResult;Landroidx/credentials/provider/AuthenticationError;)V",
        "getAuthenticationError",
        "()Landroidx/credentials/provider/AuthenticationError;",
        "getAuthenticationResult",
        "()Landroidx/credentials/provider/AuthenticationResult;",
        "isSuccessful",
        "",
        "()Z",
        "equals",
        "other",
        "hashCode",
        "",
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
.field private final authenticationError:Landroidx/credentials/provider/AuthenticationError;

.field private final authenticationResult:Landroidx/credentials/provider/AuthenticationResult;

.field private final isSuccessful:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Landroidx/credentials/provider/BiometricPromptResult;-><init>(Landroidx/credentials/provider/AuthenticationResult;Landroidx/credentials/provider/AuthenticationError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/credentials/provider/AuthenticationError;)V
    .registers 3

    const-string v0, "authenticationError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, p1}, Landroidx/credentials/provider/BiometricPromptResult;-><init>(Landroidx/credentials/provider/AuthenticationResult;Landroidx/credentials/provider/AuthenticationError;)V

    return-void
.end method

.method public constructor <init>(Landroidx/credentials/provider/AuthenticationResult;)V
    .registers 3

    const-string v0, "authenticationResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Landroidx/credentials/provider/BiometricPromptResult;-><init>(Landroidx/credentials/provider/AuthenticationResult;Landroidx/credentials/provider/AuthenticationError;)V

    return-void
.end method

.method public constructor <init>(Landroidx/credentials/provider/AuthenticationResult;Landroidx/credentials/provider/AuthenticationError;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/credentials/provider/BiometricPromptResult;->authenticationResult:Landroidx/credentials/provider/AuthenticationResult;

    .line 39
    iput-object p2, p0, Landroidx/credentials/provider/BiometricPromptResult;->authenticationError:Landroidx/credentials/provider/AuthenticationError;

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 41
    :goto_c
    iput-boolean p1, p0, Landroidx/credentials/provider/BiometricPromptResult;->isSuccessful:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/credentials/provider/AuthenticationResult;Landroidx/credentials/provider/AuthenticationError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 37
    :cond_b
    invoke-direct {p0, p1, p2}, Landroidx/credentials/provider/BiometricPromptResult;-><init>(Landroidx/credentials/provider/AuthenticationResult;Landroidx/credentials/provider/AuthenticationError;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 67
    :cond_4
    instance-of v1, p1, Landroidx/credentials/provider/BiometricPromptResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 68
    iget-boolean v1, p0, Landroidx/credentials/provider/BiometricPromptResult;->isSuccessful:Z

    check-cast p1, Landroidx/credentials/provider/BiometricPromptResult;

    iget-boolean v3, p1, Landroidx/credentials/provider/BiometricPromptResult;->isSuccessful:Z

    if-ne v1, v3, :cond_26

    .line 69
    iget-object v1, p0, Landroidx/credentials/provider/BiometricPromptResult;->authenticationResult:Landroidx/credentials/provider/AuthenticationResult;

    iget-object v3, p1, Landroidx/credentials/provider/BiometricPromptResult;->authenticationResult:Landroidx/credentials/provider/AuthenticationResult;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 70
    iget-object v1, p0, Landroidx/credentials/provider/BiometricPromptResult;->authenticationError:Landroidx/credentials/provider/AuthenticationError;

    iget-object p1, p1, Landroidx/credentials/provider/BiometricPromptResult;->authenticationError:Landroidx/credentials/provider/AuthenticationError;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    return v0

    :cond_26
    return v2
.end method

.method public final getAuthenticationError()Landroidx/credentials/provider/AuthenticationError;
    .registers 2

    .line 39
    iget-object v0, p0, Landroidx/credentials/provider/BiometricPromptResult;->authenticationError:Landroidx/credentials/provider/AuthenticationError;

    return-object v0
.end method

.method public final getAuthenticationResult()Landroidx/credentials/provider/AuthenticationResult;
    .registers 2

    .line 38
    iget-object v0, p0, Landroidx/credentials/provider/BiometricPromptResult;->authenticationResult:Landroidx/credentials/provider/AuthenticationResult;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 76
    iget-boolean v0, p0, Landroidx/credentials/provider/BiometricPromptResult;->isSuccessful:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroidx/credentials/provider/BiometricPromptResult;->authenticationResult:Landroidx/credentials/provider/AuthenticationResult;

    iget-object v2, p0, Landroidx/credentials/provider/BiometricPromptResult;->authenticationError:Landroidx/credentials/provider/AuthenticationError;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isSuccessful()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Landroidx/credentials/provider/BiometricPromptResult;->isSuccessful:Z

    return v0
.end method
