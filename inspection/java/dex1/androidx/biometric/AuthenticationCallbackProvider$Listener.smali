.class Landroidx/biometric/AuthenticationCallbackProvider$Listener;
.super Ljava/lang/Object;
.source "AuthenticationCallbackProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/AuthenticationCallbackProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Listener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onError(ILjava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method onFailure()V
    .registers 1

    return-void
.end method

.method onHelp(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method onSuccess(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .registers 2

    return-void
.end method
