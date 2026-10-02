.class Landroidx/biometric/CryptoObjectUtils$Api23Impl;
.super Ljava/lang/Object;
.source "CryptoObjectUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/CryptoObjectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildKeyGenParameterSpec(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec;
    .registers 1

    .line 446
    invoke-virtual {p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method static createKeyGenParameterSpecBuilder(Ljava/lang/String;I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .registers 3

    .line 416
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-direct {v0, p0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static initKeyGenerator(Ljavax/crypto/KeyGenerator;Landroid/security/keystore/KeyGenParameterSpec;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 461
    invoke-virtual {p0, p1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method static setBlockModeCBC(Landroid/security/keystore/KeyGenParameterSpec$Builder;)V
    .registers 4

    const/4 v0, 0x1

    .line 425
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CBC"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    return-void
.end method

.method static setEncryptionPaddingPKCS7(Landroid/security/keystore/KeyGenParameterSpec$Builder;)V
    .registers 4

    const/4 v0, 0x1

    .line 434
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PKCS7Padding"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    return-void
.end method
