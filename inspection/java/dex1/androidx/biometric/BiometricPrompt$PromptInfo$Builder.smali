.class public Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricPrompt$PromptInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAllowedAuthenticators:I

.field private mDescription:Ljava/lang/CharSequence;

.field private mIsConfirmationRequired:Z

.field private mIsDeviceCredentialAllowed:Z

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 405
    iput-object v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 406
    iput-object v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 407
    iput-object v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 408
    iput-object v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mNegativeButtonText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mIsConfirmationRequired:Z

    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mIsDeviceCredentialAllowed:Z

    .line 411
    iput v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mAllowedAuthenticators:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/biometric/BiometricPrompt$PromptInfo;
    .registers 11

    .line 569
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 572
    iget v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mAllowedAuthenticators:I

    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->isSupportedCombination(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 578
    iget v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mAllowedAuthenticators:I

    if-eqz v0, :cond_19

    .line 579
    invoke-static {v0}, Landroidx/biometric/AuthenticatorUtils;->isDeviceCredentialAllowed(I)Z

    move-result v0

    goto :goto_1b

    .line 580
    :cond_19
    iget-boolean v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mIsDeviceCredentialAllowed:Z

    .line 581
    :goto_1b
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    if-eqz v0, :cond_26

    goto :goto_2e

    .line 582
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative text must be set and non-empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_2e
    :goto_2e
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    if-nez v0, :cond_39

    goto :goto_41

    .line 585
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative text must not be set if device credential authentication is allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_41
    :goto_41
    new-instance v2, Landroidx/biometric/BiometricPrompt$PromptInfo;

    iget-object v3, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-boolean v7, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mIsConfirmationRequired:Z

    iget-boolean v8, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mIsDeviceCredentialAllowed:Z

    iget v9, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mAllowedAuthenticators:I

    invoke-direct/range {v2 .. v9}, Landroidx/biometric/BiometricPrompt$PromptInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)V

    return-object v2

    .line 573
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Authenticator combination is unsupported on API "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mAllowedAuthenticators:I

    .line 575
    invoke-static {v2}, Landroidx/biometric/AuthenticatorUtils;->convertToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Title must be set and non-empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowedAuthenticators(I)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    .registers 2

    .line 555
    iput p1, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mAllowedAuthenticators:I

    return-object p0
.end method

.method public setConfirmationRequired(Z)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    .registers 2

    .line 485
    iput-boolean p1, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mIsConfirmationRequired:Z

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    .registers 2

    .line 445
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDeviceCredentialAllowed(Z)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 518
    iput-boolean p1, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mIsDeviceCredentialAllowed:Z

    return-object p0
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    .registers 2

    .line 462
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    .registers 2

    .line 433
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    .registers 2

    .line 421
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
