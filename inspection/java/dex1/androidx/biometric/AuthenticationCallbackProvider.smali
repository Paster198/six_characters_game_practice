.class Landroidx/biometric/AuthenticationCallbackProvider;
.super Ljava/lang/Object;
.source "AuthenticationCallbackProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl;,
        Landroidx/biometric/AuthenticationCallbackProvider$Api30Impl;,
        Landroidx/biometric/AuthenticationCallbackProvider$Listener;
    }
.end annotation


# instance fields
.field private mBiometricCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mFingerprintCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

.field final mListener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;


# direct methods
.method constructor <init>(Landroidx/biometric/AuthenticationCallbackProvider$Listener;)V
    .registers 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mListener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;

    return-void
.end method


# virtual methods
.method getBiometricCallback()Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .registers 2

    .line 112
    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mBiometricCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-nez v0, :cond_c

    .line 113
    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mListener:Landroidx/biometric/AuthenticationCallbackProvider$Listener;

    invoke-static {v0}, Landroidx/biometric/AuthenticationCallbackProvider$Api28Impl;->createCallback(Landroidx/biometric/AuthenticationCallbackProvider$Listener;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    iput-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mBiometricCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 115
    :cond_c
    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mBiometricCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object v0
.end method

.method getFingerprintCallback()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
    .registers 2

    .line 131
    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mFingerprintCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    if-nez v0, :cond_b

    .line 132
    new-instance v0, Landroidx/biometric/AuthenticationCallbackProvider$1;

    invoke-direct {v0, p0}, Landroidx/biometric/AuthenticationCallbackProvider$1;-><init>(Landroidx/biometric/AuthenticationCallbackProvider;)V

    iput-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mFingerprintCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    .line 166
    :cond_b
    iget-object v0, p0, Landroidx/biometric/AuthenticationCallbackProvider;->mFingerprintCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    return-object v0
.end method
