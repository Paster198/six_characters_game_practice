.class Landroidx/biometric/AuthenticatorUtils;
.super Ljava/lang/Object;
.source "AuthenticatorUtils.java"


# static fields
.field private static final BIOMETRIC_CLASS_MASK:I = 0x7fff


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertToString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xf

    if-eq p0, v0, :cond_28

    const/16 v0, 0xff

    if-eq p0, v0, :cond_25

    const v0, 0x8000

    if-eq p0, v0, :cond_22

    const v0, 0x800f

    if-eq p0, v0, :cond_1f

    const v0, 0x80ff

    if-eq p0, v0, :cond_1c

    .line 58
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 56
    :cond_1c
    const-string p0, "BIOMETRIC_WEAK | DEVICE_CREDENTIAL"

    return-object p0

    .line 54
    :cond_1f
    const-string p0, "BIOMETRIC_STRONG | DEVICE_CREDENTIAL"

    return-object p0

    .line 52
    :cond_22
    const-string p0, "DEVICE_CREDENTIAL"

    return-object p0

    .line 50
    :cond_25
    const-string p0, "BIOMETRIC_WEAK"

    return-object p0

    .line 48
    :cond_28
    const-string p0, "BIOMETRIC_STRONG"

    return-object p0
.end method

.method static getConsolidatedAuthenticators(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)I
    .registers 3

    .line 79
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getAllowedAuthenticators()I

    move-result v0

    if-eqz v0, :cond_b

    .line 81
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getAllowedAuthenticators()I

    move-result p0

    return p0

    :cond_b
    if-eqz p1, :cond_10

    const/16 p1, 0xf

    goto :goto_12

    :cond_10
    const/16 p1, 0xff

    .line 88
    :goto_12
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->isDeviceCredentialAllowed()Z

    move-result p0

    if-eqz p0, :cond_1d

    const p0, 0x8000

    or-int/2addr p0, p1

    return p0

    :cond_1d
    return p1
.end method

.method static isDeviceCredentialAllowed(I)Z
    .registers 2

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method static isSomeBiometricAllowed(I)Z
    .registers 1

    and-int/lit16 p0, p0, 0x7fff

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method static isSupportedCombination(I)Z
    .registers 4

    const/16 v0, 0xf

    const/4 v1, 0x1

    if-eq p0, v0, :cond_34

    const/16 v0, 0xff

    if-eq p0, v0, :cond_34

    const v0, 0x8000

    const/4 v2, 0x0

    if-eq p0, v0, :cond_2c

    const v0, 0x800f

    if-eq p0, v0, :cond_1d

    const v0, 0x80ff

    if-eq p0, v0, :cond_34

    if-nez p0, :cond_1c

    return v1

    :cond_1c
    return v2

    .line 116
    :cond_1d
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_2b

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-le p0, v0, :cond_2a

    goto :goto_2b

    :cond_2a
    return v2

    :cond_2b
    :goto_2b
    return v1

    .line 112
    :cond_2c
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_33

    return v1

    :cond_33
    return v2

    :cond_34
    return v1
.end method

.method static isWeakBiometricAllowed(I)Z
    .registers 2

    const/16 v0, 0xff

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
