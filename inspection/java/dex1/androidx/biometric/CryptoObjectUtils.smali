.class Landroidx/biometric/CryptoObjectUtils;
.super Ljava/lang/Object;
.source "CryptoObjectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/CryptoObjectUtils$Api23Impl;,
        Landroidx/biometric/CryptoObjectUtils$Api28Impl;,
        Landroidx/biometric/CryptoObjectUtils$Api30Impl;
    }
.end annotation


# static fields
.field private static final FAKE_KEY_NAME:Ljava/lang/String; = "androidxBiometric"

.field private static final KEYSTORE_INSTANCE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final TAG:Ljava/lang/String; = "CryptoObjectUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFakeCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;
    .registers 6

    .line 242
    const-string v0, "androidxBiometric"

    const-string v1, "AndroidKeyStore"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 243
    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const/4 v4, 0x3

    .line 246
    invoke-static {v0, v4}, Landroidx/biometric/CryptoObjectUtils$Api23Impl;->createKeyGenParameterSpecBuilder(Ljava/lang/String;I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    .line 249
    invoke-static {v4}, Landroidx/biometric/CryptoObjectUtils$Api23Impl;->setBlockModeCBC(Landroid/security/keystore/KeyGenParameterSpec$Builder;)V

    .line 250
    invoke-static {v4}, Landroidx/biometric/CryptoObjectUtils$Api23Impl;->setEncryptionPaddingPKCS7(Landroid/security/keystore/KeyGenParameterSpec$Builder;)V

    .line 252
    const-string v5, "AES"

    .line 253
    invoke-static {v5, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 254
    invoke-static {v4}, Landroidx/biometric/CryptoObjectUtils$Api23Impl;->buildKeyGenParameterSpec(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    .line 255
    invoke-static {v1, v4}, Landroidx/biometric/CryptoObjectUtils$Api23Impl;->initKeyGenerator(Ljavax/crypto/KeyGenerator;Landroid/security/keystore/KeyGenParameterSpec;)V

    .line 256
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 259
    invoke-virtual {v3, v0, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 260
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x1

    .line 263
    invoke-virtual {v1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 265
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-direct {v0, v1}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V
    :try_end_3c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_3c} :catch_4d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_3c} :catch_4b
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_3c} :catch_49
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_3c} :catch_47
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_3c} :catch_45
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_3c} :catch_43
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_3c} :catch_41
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3c} :catch_3f
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_3c} :catch_3d

    return-object v0

    :catch_3d
    move-exception v0

    goto :goto_4e

    :catch_3f
    move-exception v0

    goto :goto_4e

    :catch_41
    move-exception v0

    goto :goto_4e

    :catch_43
    move-exception v0

    goto :goto_4e

    :catch_45
    move-exception v0

    goto :goto_4e

    :catch_47
    move-exception v0

    goto :goto_4e

    :catch_49
    move-exception v0

    goto :goto_4e

    :catch_4b
    move-exception v0

    goto :goto_4e

    :catch_4d
    move-exception v0

    .line 269
    :goto_4e
    const-string v1, "CryptoObjectUtils"

    const-string v3, "Failed to create fake crypto object."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method static unwrapFromBiometricPrompt(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Landroidx/biometric/BiometricPrompt$CryptoObject;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 81
    :cond_4
    invoke-static {p0}, Landroidx/biometric/CryptoObjectUtils$Api28Impl;->getCipher(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 83
    new-instance p0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-direct {p0, v1}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object p0

    .line 86
    :cond_10
    invoke-static {p0}, Landroidx/biometric/CryptoObjectUtils$Api28Impl;->getSignature(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 88
    new-instance p0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-direct {p0, v1}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object p0

    .line 91
    :cond_1c
    invoke-static {p0}, Landroidx/biometric/CryptoObjectUtils$Api28Impl;->getMac(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 93
    new-instance p0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-direct {p0, v1}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    return-object p0

    .line 97
    :cond_28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_39

    .line 99
    invoke-static {p0}, Landroidx/biometric/CryptoObjectUtils$Api30Impl;->getIdentityCredential(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Landroid/security/identity/IdentityCredential;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 101
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Landroid/security/identity/IdentityCredential;)V

    :cond_39
    return-object v0
.end method

.method static unwrapFromFingerprintManager(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroidx/biometric/BiometricPrompt$CryptoObject;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 169
    :cond_4
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 171
    new-instance p0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-direct {p0, v1}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object p0

    .line 174
    :cond_10
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 176
    new-instance p0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-direct {p0, v1}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object p0

    .line 179
    :cond_1c
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 181
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_27
    return-object v0
.end method

.method static wrapForBiometricPrompt(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 124
    :cond_4
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 126
    invoke-static {v1}, Landroidx/biometric/CryptoObjectUtils$Api28Impl;->create(Ljavax/crypto/Cipher;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p0

    return-object p0

    .line 129
    :cond_f
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 131
    invoke-static {v1}, Landroidx/biometric/CryptoObjectUtils$Api28Impl;->create(Ljava/security/Signature;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p0

    return-object p0

    .line 134
    :cond_1a
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 136
    invoke-static {v1}, Landroidx/biometric/CryptoObjectUtils$Api28Impl;->create(Ljavax/crypto/Mac;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p0

    return-object p0

    .line 140
    :cond_25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_36

    .line 142
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getIdentityCredential()Landroid/security/identity/IdentityCredential;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 144
    invoke-static {p0}, Landroidx/biometric/CryptoObjectUtils$Api30Impl;->create(Landroid/security/identity/IdentityCredential;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p0

    return-object p0

    :cond_36
    return-object v0
.end method

.method static wrapForFingerprintManager(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 204
    :cond_4
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 206
    new-instance p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-direct {p0, v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object p0

    .line 210
    :cond_10
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 212
    new-instance p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-direct {p0, v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object p0

    .line 216
    :cond_1c
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 218
    new-instance p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-direct {p0, v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    return-object p0

    .line 222
    :cond_28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_3b

    .line 223
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getIdentityCredential()Landroid/security/identity/IdentityCredential;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 224
    const-string p0, "CryptoObjectUtils"

    const-string v1, "Identity credential is not supported by FingerprintManager."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-object v0
.end method
