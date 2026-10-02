.class Landroidx/biometric/ErrorUtils;
.super Ljava/lang/Object;
.source "ErrorUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    .line 79
    const-string p0, ""

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-eq p1, v0, :cond_45

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3e

    packed-switch p1, :pswitch_data_4c

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown error code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget p1, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
    :pswitch_29
    sget p1, Landroidx/biometric/R$string;->fingerprint_error_hw_not_present:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :pswitch_30
    sget p1, Landroidx/biometric/R$string;->fingerprint_error_no_fingerprints:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 92
    :pswitch_37
    sget p1, Landroidx/biometric/R$string;->fingerprint_error_user_canceled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_3e
    :pswitch_3e
    sget p1, Landroidx/biometric/R$string;->fingerprint_error_lockout:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 88
    :cond_45
    sget p1, Landroidx/biometric/R$string;->fingerprint_error_hw_not_available:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_4c
    .packed-switch 0x9
        :pswitch_3e
        :pswitch_37
        :pswitch_30
        :pswitch_29
    .end packed-switch
.end method

.method static isKnownError(I)Z
    .registers 1

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static isLockoutError(I)Z
    .registers 2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_a

    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_a
    const/4 p0, 0x1

    return p0
.end method
