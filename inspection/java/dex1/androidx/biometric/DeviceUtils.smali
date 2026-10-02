.class Landroidx/biometric/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static canAssumeStrongBiometrics(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 99
    :cond_8
    sget v0, Landroidx/biometric/R$array;->assume_strong_biometrics_models:I

    invoke-static {p0, p1, v0}, Landroidx/biometric/DeviceUtils;->isModelInList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static isModelInList(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 160
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 161
    array-length p2, p0

    move v1, v0

    :goto_e
    if-ge v1, p2, :cond_1d

    aget-object v2, p0, v1

    .line 162
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1d
    return v0
.end method

.method private static isModelInPrefixList(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 138
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 139
    array-length p2, p0

    move v1, v0

    :goto_e
    if-ge v1, p2, :cond_1d

    aget-object v2, p0, v1

    .line 140
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1d
    return v0
.end method

.method private static isVendorInList(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 116
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 117
    array-length p2, p0

    move v1, v0

    :goto_e
    if-ge v1, p2, :cond_1d

    aget-object v2, p0, v1

    .line 118
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1d
    return v0
.end method

.method static shouldDelayShowingPrompt(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 83
    :cond_8
    sget v0, Landroidx/biometric/R$array;->delay_showing_prompt_models:I

    invoke-static {p0, p1, v0}, Landroidx/biometric/DeviceUtils;->isModelInList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static shouldHideFingerprintDialog(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 67
    :cond_8
    sget v0, Landroidx/biometric/R$array;->hide_fingerprint_instantly_prefixes:I

    invoke-static {p0, p1, v0}, Landroidx/biometric/DeviceUtils;->isModelInPrefixList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static shouldUseFingerprintForCrypto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    .line 49
    :cond_8
    sget v0, Landroidx/biometric/R$array;->crypto_fingerprint_fallback_vendors:I

    invoke-static {p0, p1, v0}, Landroidx/biometric/DeviceUtils;->isVendorInList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1a

    sget p1, Landroidx/biometric/R$array;->crypto_fingerprint_fallback_prefixes:I

    .line 50
    invoke-static {p0, p2, p1}, Landroidx/biometric/DeviceUtils;->isModelInPrefixList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1a

    :cond_19
    return v2

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0
.end method
