.class Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "AuthenticationCallbackProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl;->createCallback(Landroidx/biometric/AuthenticationCallbackProvider$Listener;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;


# direct methods
.method constructor <init>(Landroidx/biometric/AuthenticationCallbackProvider$Listener;)V
    .registers 2

    .line 212
    iput-object p1, p0, Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl$1;->val$listener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 4

    .line 215
    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl$1;->val$listener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;

    invoke-virtual {v0, p1, p2}, Landroidx/biometric/AuthenticationCallbackProvider$Listener;->onError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 2

    .line 251
    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl$1;->val$listener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;

    invoke-virtual {v0}, Landroidx/biometric/AuthenticationCallbackProvider$Listener;->onFailure()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .registers 6

    if-eqz p1, :cond_b

    .line 229
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->getCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v0

    invoke-static {v0}, Landroidx/biometric/CryptoObjectUtils;->unwrapFromBiometricPrompt(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 233
    :goto_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, -0x1

    if-lt v1, v2, :cond_1b

    if-eqz p1, :cond_23

    .line 235
    invoke-static {p1}, Landroidx/biometric/AuthenticationCallbackProvider$Api30Impl;->getAuthenticationType(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)I

    move-result p1

    move v3, p1

    goto :goto_23

    .line 237
    :cond_1b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne p1, v1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v3, 0x2

    .line 243
    :cond_23
    :goto_23
    new-instance p1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    invoke-direct {p1, v0, v3}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;I)V

    .line 246
    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl$1;->val$listener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;

    invoke-virtual {v0, p1}, Landroidx/biometric/AuthenticationCallbackProvider$Listener;->onSuccess(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method
