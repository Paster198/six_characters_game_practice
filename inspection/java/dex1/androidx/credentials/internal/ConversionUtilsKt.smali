.class public final Landroidx/credentials/internal/ConversionUtilsKt;
.super Ljava/lang/Object;
.source "ConversionUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0000\u001a\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "getFinalCreateCredentialData",
        "Landroid/os/Bundle;",
        "request",
        "Landroidx/credentials/CreateCredentialRequest;",
        "context",
        "Landroid/content/Context;",
        "toJetpackCreateException",
        "Landroidx/credentials/exceptions/CreateCredentialException;",
        "errorType",
        "",
        "errorMsg",
        "",
        "toJetpackGetException",
        "Landroidx/credentials/exceptions/GetCredentialException;",
        "credentials_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getFinalCreateCredentialData(Landroidx/credentials/CreateCredentialRequest;Landroid/content/Context;)Landroid/os/Bundle;
    .registers 5

    const-string v0, "request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroidx/credentials/CreateCredentialRequest;->getCredentialData()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Landroidx/credentials/CreateCredentialRequest;->getDisplayInfo()Landroidx/credentials/CreateCredentialRequest$DisplayInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/credentials/CreateCredentialRequest$DisplayInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 64
    instance-of v2, p0, Landroidx/credentials/CreatePasswordRequest;

    if-eqz v2, :cond_1d

    sget p0, Landroidx/credentials/R$drawable;->ic_password:I

    goto :goto_26

    .line 65
    :cond_1d
    instance-of p0, p0, Landroidx/credentials/CreatePublicKeyCredentialRequest;

    if-eqz p0, :cond_24

    sget p0, Landroidx/credentials/R$drawable;->ic_passkey:I

    goto :goto_26

    .line 66
    :cond_24
    sget p0, Landroidx/credentials/R$drawable;->ic_other_sign_in:I

    .line 61
    :goto_26
    invoke-static {p1, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    .line 59
    const-string p1, "androidx.credentials.BUNDLE_KEY_CREDENTIAL_TYPE_ICON"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 71
    const-string p0, "androidx.credentials.BUNDLE_KEY_REQUEST_DISPLAY_INFO"

    .line 70
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static final toJetpackCreateException(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/credentials/exceptions/CreateCredentialException;
    .registers 6

    const-string v0, "errorType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_94

    goto :goto_73

    :sswitch_d
    const-string v0, "android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_73

    .line 114
    :cond_16
    new-instance p0, Landroidx/credentials/exceptions/CreateCredentialNoCreateOptionException;

    invoke-direct {p0, p1}, Landroidx/credentials/exceptions/CreateCredentialNoCreateOptionException;-><init>(Ljava/lang/CharSequence;)V

    check-cast p0, Landroidx/credentials/exceptions/CreateCredentialException;

    return-object p0

    .line 112
    :sswitch_1e
    const-string v0, "android.credentials.CreateCredentialException.TYPE_INTERRUPTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_73

    .line 118
    :cond_27
    new-instance p0, Landroidx/credentials/exceptions/CreateCredentialInterruptedException;

    invoke-direct {p0, p1}, Landroidx/credentials/exceptions/CreateCredentialInterruptedException;-><init>(Ljava/lang/CharSequence;)V

    check-cast p0, Landroidx/credentials/exceptions/CreateCredentialException;

    return-object p0

    .line 112
    :sswitch_2f
    const-string v0, "android.credentials.CreateCredentialException.TYPE_UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_73

    .line 120
    :cond_38
    new-instance p0, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    invoke-direct {p0, p1}, Landroidx/credentials/exceptions/CreateCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    check-cast p0, Landroidx/credentials/exceptions/CreateCredentialException;

    return-object p0

    .line 112
    :sswitch_40
    const-string v0, "androidx.credentials.TYPE_CREATE_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_73

    .line 123
    :cond_49
    new-instance p0, Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException;

    invoke-direct {p0, p1}, Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException;-><init>(Ljava/lang/CharSequence;)V

    check-cast p0, Landroidx/credentials/exceptions/CreateCredentialException;

    return-object p0

    .line 112
    :sswitch_51
    const-string v0, "androidx.credentials.TYPE_CREATE_CREDENTIAL_UNSUPPORTED_EXCEPTION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_73

    .line 125
    :cond_5a
    new-instance p0, Landroidx/credentials/exceptions/CreateCredentialUnsupportedException;

    invoke-direct {p0, p1}, Landroidx/credentials/exceptions/CreateCredentialUnsupportedException;-><init>(Ljava/lang/CharSequence;)V

    check-cast p0, Landroidx/credentials/exceptions/CreateCredentialException;

    return-object p0

    .line 112
    :sswitch_62
    const-string v0, "android.credentials.CreateCredentialException.TYPE_USER_CANCELED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_73

    .line 116
    :cond_6b
    new-instance p0, Landroidx/credentials/exceptions/CreateCredentialCancellationException;

    invoke-direct {p0, p1}, Landroidx/credentials/exceptions/CreateCredentialCancellationException;-><init>(Ljava/lang/CharSequence;)V

    check-cast p0, Landroidx/credentials/exceptions/CreateCredentialException;

    return-object p0

    :goto_73
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 128
    const-string v2, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION"

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v1, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 133
    sget-object v0, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialException;->Companion:Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialException$Companion;

    if-eqz p1, :cond_86

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_86
    invoke-virtual {v0, p0, v3}, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialException$Companion;->createFrom(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/CreateCredentialException;

    move-result-object p0

    return-object p0

    .line 135
    :cond_8b
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialCustomException;

    invoke-direct {v0, p0, p1}, Landroidx/credentials/exceptions/CreateCredentialCustomException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    check-cast v0, Landroidx/credentials/exceptions/CreateCredentialException;

    return-object v0

    nop

    :sswitch_data_94
    .sparse-switch
        -0x7a828535 -> :sswitch_62
        -0x458a486e -> :sswitch_51
        -0x22966b75 -> :sswitch_40
        0x4e7e62e8 -> :sswitch_2f
        0x7cba5de0 -> :sswitch_1e
        0x7f1271b7 -> :sswitch_d
    .end sparse-switch
.end method

.method public static final toJetpackGetException(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/credentials/exceptions/GetCredentialException;
    .registers 6

    const-string v0, "errorType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_94

    goto :goto_73

    :sswitch_d
    const-string v0, "androidx.credentials.TYPE_GET_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_73

    .line 91
    :cond_16
    new-instance p0, Landroidx/credentials/exceptions/GetCredentialProviderConfigurationException;

    invoke-direct {p0, p1}, Landroidx/credentials/exceptions/GetCredentialProviderConfigurationException;-><init>(Ljava/lang/CharSequence;)V

    check-cast p0, Landroidx/credentials/exceptions/GetCredentialException;

    return-object p0

    .line 80
    :sswitch_1e
    const-string v0, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_73

    .line 82
    :cond_27
    new-instance p0, Landroidx/credentials/exceptions/NoCredentialException;

    invoke-direct {p0, p1}, Landroidx/credentials/exceptions/NoCredentialException;-><init>(Ljava/lang/CharSequence;)V

    check-cast p0, Landroidx/credentials/exceptions/GetCredentialException;

    return-object p0

    .line 80
    :sswitch_2f
    const-string v0, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_73

    .line 84
    :cond_38
    new-instance p0, Landroidx/credentials/exceptions/GetCredentialCancellationException;

    invoke-direct {p0, p1}, Landroidx/credentials/exceptions/GetCredentialCancellationException;-><init>(Ljava/lang/CharSequence;)V

    check-cast p0, Landroidx/credentials/exceptions/GetCredentialException;

    return-object p0

    .line 80
    :sswitch_40
    const-string v0, "android.credentials.GetCredentialException.TYPE_INTERRUPTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_73

    .line 86
    :cond_49
    new-instance p0, Landroidx/credentials/exceptions/GetCredentialInterruptedException;

    invoke-direct {p0, p1}, Landroidx/credentials/exceptions/GetCredentialInterruptedException;-><init>(Ljava/lang/CharSequence;)V

    check-cast p0, Landroidx/credentials/exceptions/GetCredentialException;

    return-object p0

    .line 80
    :sswitch_51
    const-string v0, "androidx.credentials.TYPE_GET_CREDENTIAL_UNSUPPORTED_EXCEPTION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_73

    .line 93
    :cond_5a
    new-instance p0, Landroidx/credentials/exceptions/GetCredentialUnsupportedException;

    invoke-direct {p0, p1}, Landroidx/credentials/exceptions/GetCredentialUnsupportedException;-><init>(Ljava/lang/CharSequence;)V

    check-cast p0, Landroidx/credentials/exceptions/GetCredentialException;

    return-object p0

    .line 80
    :sswitch_62
    const-string v0, "android.credentials.GetCredentialException.TYPE_UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_73

    .line 88
    :cond_6b
    new-instance p0, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    invoke-direct {p0, p1}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    check-cast p0, Landroidx/credentials/exceptions/GetCredentialException;

    return-object p0

    :goto_73
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 96
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION"

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v1, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 100
    sget-object v0, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialException;->Companion:Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialException$Companion;

    if-eqz p1, :cond_86

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_86
    invoke-virtual {v0, p0, v3}, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialException$Companion;->createFrom(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;

    move-result-object p0

    return-object p0

    .line 102
    :cond_8b
    new-instance v0, Landroidx/credentials/exceptions/GetCredentialCustomException;

    invoke-direct {v0, p0, p1}, Landroidx/credentials/exceptions/GetCredentialCustomException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    check-cast v0, Landroidx/credentials/exceptions/GetCredentialException;

    return-object v0

    nop

    :sswitch_data_94
    .sparse-switch
        -0x2e8eeb80 -> :sswitch_62
        -0x1853f64c -> :sswitch_51
        -0x2b57c88 -> :sswitch_40
        0x229a9a63 -> :sswitch_2f
        0x256cf16b -> :sswitch_1e
        0x5f03f929 -> :sswitch_d
    .end sparse-switch
.end method
