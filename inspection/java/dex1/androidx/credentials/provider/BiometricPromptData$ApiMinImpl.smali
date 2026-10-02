.class final Landroidx/credentials/provider/BiometricPromptData$ApiMinImpl;
.super Ljava/lang/Object;
.source "BiometricPromptData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/BiometricPromptData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApiMinImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/credentials/provider/BiometricPromptData$ApiMinImpl;",
        "",
        "()V",
        "fromBundle",
        "Landroidx/credentials/provider/BiometricPromptData;",
        "bundle",
        "Landroid/os/Bundle;",
        "toBundle",
        "biometricPromptData",
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
.field public static final INSTANCE:Landroidx/credentials/provider/BiometricPromptData$ApiMinImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/credentials/provider/BiometricPromptData$ApiMinImpl;

    invoke-direct {v0}, Landroidx/credentials/provider/BiometricPromptData$ApiMinImpl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/BiometricPromptData$ApiMinImpl;->INSTANCE:Landroidx/credentials/provider/BiometricPromptData$ApiMinImpl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BiometricPromptData;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    new-instance v1, Landroidx/credentials/provider/BiometricPromptData;

    .line 276
    const-string v0, "androidx.credentials.provider.BUNDLE_HINT_ALLOWED_AUTHENTICATORS"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 275
    invoke-direct/range {v1 .. v6}, Landroidx/credentials/provider/BiometricPromptData;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public static final toBundle(Landroidx/credentials/provider/BiometricPromptData;)Landroid/os/Bundle;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "biometricPromptData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    const-string v1, "androidx.credentials.provider.BUNDLE_HINT_ALLOWED_AUTHENTICATORS"

    .line 260
    invoke-virtual {p0}, Landroidx/credentials/provider/BiometricPromptData;->getAllowedAuthenticators()I

    move-result p0

    .line 258
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
