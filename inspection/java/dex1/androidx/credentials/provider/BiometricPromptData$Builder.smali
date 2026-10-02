.class public final Landroidx/credentials/provider/BiometricPromptData$Builder;
.super Ljava/lang/Object;
.source "BiometricPromptData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/BiometricPromptData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/credentials/provider/BiometricPromptData$Builder;",
        "",
        "()V",
        "allowedAuthenticators",
        "",
        "Ljava/lang/Integer;",
        "cryptoObject",
        "Landroidx/biometric/BiometricPrompt$CryptoObject;",
        "build",
        "Landroidx/credentials/provider/BiometricPromptData;",
        "setAllowedAuthenticators",
        "setCryptoObject",
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
.field private allowedAuthenticators:Ljava/lang/Integer;

.field private cryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Landroidx/credentials/provider/BiometricPromptData;
    .registers 4

    .line 237
    iget-object v0, p0, Landroidx/credentials/provider/BiometricPromptData$Builder;->allowedAuthenticators:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b

    :cond_9
    const/16 v0, 0xff

    .line 238
    :goto_b
    new-instance v1, Landroidx/credentials/provider/BiometricPromptData;

    .line 239
    iget-object v2, p0, Landroidx/credentials/provider/BiometricPromptData$Builder;->cryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 238
    invoke-direct {v1, v2, v0}, Landroidx/credentials/provider/BiometricPromptData;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;I)V

    return-object v1
.end method

.method public final setAllowedAuthenticators(I)Landroidx/credentials/provider/BiometricPromptData$Builder;
    .registers 2

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/credentials/provider/BiometricPromptData$Builder;->allowedAuthenticators:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroidx/credentials/provider/BiometricPromptData$Builder;
    .registers 2

    .line 208
    iput-object p1, p0, Landroidx/credentials/provider/BiometricPromptData$Builder;->cryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

    return-object p0
.end method
