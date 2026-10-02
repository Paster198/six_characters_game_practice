.class public final Landroidx/credentials/provider/utils/CryptoObjectUtils;
.super Ljava/lang/Object;
.source "CryptoObjectUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/utils/CryptoObjectUtils$Api28Impl;,
        Landroidx/credentials/provider/utils/CryptoObjectUtils$Api30Impl;,
        Landroidx/credentials/provider/utils/CryptoObjectUtils$Api35Impl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0003\t\n\u000bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/credentials/provider/utils/CryptoObjectUtils;",
        "",
        "()V",
        "getOperationHandle",
        "",
        "cryptoObject",
        "Landroidx/biometric/BiometricPrompt$CryptoObject;",
        "wrapForBiometricPrompt",
        "Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;",
        "Api28Impl",
        "Api30Impl",
        "Api35Impl",
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
.field public static final INSTANCE:Landroidx/credentials/provider/utils/CryptoObjectUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/credentials/provider/utils/CryptoObjectUtils;

    invoke-direct {v0}, Landroidx/credentials/provider/utils/CryptoObjectUtils;-><init>()V

    sput-object v0, Landroidx/credentials/provider/utils/CryptoObjectUtils;->INSTANCE:Landroidx/credentials/provider/utils/CryptoObjectUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOperationHandle(Landroidx/biometric/BiometricPrompt$CryptoObject;)J
    .registers 4

    .line 96
    invoke-virtual {p0, p1}, Landroidx/credentials/provider/utils/CryptoObjectUtils;->wrapForBiometricPrompt(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 98
    sget-object v0, Landroidx/credentials/provider/utils/CryptoObjectUtils$Api35Impl;->INSTANCE:Landroidx/credentials/provider/utils/CryptoObjectUtils$Api35Impl;

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/utils/CryptoObjectUtils$Api35Impl;->getOperationHandle(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)J

    move-result-wide v0

    return-wide v0

    :cond_d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final wrapForBiometricPrompt(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 55
    :cond_4
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 57
    sget-object p1, Landroidx/credentials/provider/utils/CryptoObjectUtils$Api28Impl;->INSTANCE:Landroidx/credentials/provider/utils/CryptoObjectUtils$Api28Impl;

    invoke-virtual {p1, v1}, Landroidx/credentials/provider/utils/CryptoObjectUtils$Api28Impl;->create(Ljavax/crypto/Cipher;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p1

    return-object p1

    .line 60
    :cond_11
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 62
    sget-object p1, Landroidx/credentials/provider/utils/CryptoObjectUtils$Api28Impl;->INSTANCE:Landroidx/credentials/provider/utils/CryptoObjectUtils$Api28Impl;

    invoke-virtual {p1, v1}, Landroidx/credentials/provider/utils/CryptoObjectUtils$Api28Impl;->create(Ljava/security/Signature;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p1

    return-object p1

    .line 65
    :cond_1e
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 67
    sget-object p1, Landroidx/credentials/provider/utils/CryptoObjectUtils$Api28Impl;->INSTANCE:Landroidx/credentials/provider/utils/CryptoObjectUtils$Api28Impl;

    invoke-virtual {p1, v1}, Landroidx/credentials/provider/utils/CryptoObjectUtils$Api28Impl;->create(Ljavax/crypto/Mac;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p1

    return-object p1

    .line 71
    :cond_2b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_3e

    .line 72
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getIdentityCredential()Landroid/security/identity/IdentityCredential;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 74
    sget-object v0, Landroidx/credentials/provider/utils/CryptoObjectUtils$Api30Impl;->INSTANCE:Landroidx/credentials/provider/utils/CryptoObjectUtils$Api30Impl;

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/utils/CryptoObjectUtils$Api30Impl;->create(Landroid/security/identity/IdentityCredential;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p1

    return-object p1

    :cond_3e
    return-object v0
.end method
