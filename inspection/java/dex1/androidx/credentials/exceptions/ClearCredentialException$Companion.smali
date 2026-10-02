.class public final Landroidx/credentials/exceptions/ClearCredentialException$Companion;
.super Ljava/lang/Object;
.source "ClearCredentialException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/exceptions/ClearCredentialException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/credentials/exceptions/ClearCredentialException$Companion;",
        "",
        "()V",
        "EXTRA_CLEAR_CREDENTIAL_EXCEPTION_MESSAGE",
        "",
        "EXTRA_CLEAR_CREDENTIAL_EXCEPTION_TYPE",
        "asBundle",
        "Landroid/os/Bundle;",
        "ex",
        "Landroidx/credentials/exceptions/ClearCredentialException;",
        "fromBundle",
        "bundle",
        "credentials_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/credentials/exceptions/ClearCredentialException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final asBundle(Landroidx/credentials/exceptions/ClearCredentialException;)Landroid/os/Bundle;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string v1, "androidx.credentials.provider.extra.CLEAR_CREDENTIAL_EXCEPTION_TYPE"

    invoke-virtual {p1}, Landroidx/credentials/exceptions/ClearCredentialException;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroidx/credentials/exceptions/ClearCredentialException;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 53
    const-string v1, "androidx.credentials.provider.extra.CLEAR_CREDENTIAL_EXCEPTION_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1e
    return-object v0
.end method

.method public final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/exceptions/ClearCredentialException;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-string v0, "androidx.credentials.provider.extra.CLEAR_CREDENTIAL_EXCEPTION_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 72
    const-string v1, "androidx.credentials.provider.extra.CLEAR_CREDENTIAL_EXCEPTION_MESSAGE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_70

    goto :goto_5f

    :sswitch_1b
    const-string v1, "android.credentials.ClearCredentialStateException.TYPE_UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_5f

    .line 75
    :cond_24
    new-instance v0, Landroidx/credentials/exceptions/ClearCredentialUnknownException;

    invoke-direct {v0, p1}, Landroidx/credentials/exceptions/ClearCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    check-cast v0, Landroidx/credentials/exceptions/ClearCredentialException;

    return-object v0

    .line 73
    :sswitch_2c
    const-string v1, "androidx.credentials.TYPE_CLEAR_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    goto :goto_5f

    .line 82
    :cond_35
    new-instance v0, Landroidx/credentials/exceptions/ClearCredentialProviderConfigurationException;

    invoke-direct {v0, p1}, Landroidx/credentials/exceptions/ClearCredentialProviderConfigurationException;-><init>(Ljava/lang/CharSequence;)V

    check-cast v0, Landroidx/credentials/exceptions/ClearCredentialException;

    return-object v0

    .line 73
    :sswitch_3d
    const-string v1, "androidx.credentials.TYPE_CLEAR_CREDENTIAL_UNSUPPORTED_EXCEPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_5f

    .line 79
    :cond_46
    new-instance v0, Landroidx/credentials/exceptions/ClearCredentialUnsupportedException;

    invoke-direct {v0, p1}, Landroidx/credentials/exceptions/ClearCredentialUnsupportedException;-><init>(Ljava/lang/CharSequence;)V

    check-cast v0, Landroidx/credentials/exceptions/ClearCredentialException;

    return-object v0

    .line 73
    :sswitch_4e
    const-string v1, "androidx.credentials.TYPE_CLEAR_CREDENTIAL_INTERRUPTED_EXCEPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    goto :goto_5f

    .line 77
    :cond_57
    new-instance v0, Landroidx/credentials/exceptions/ClearCredentialInterruptedException;

    invoke-direct {v0, p1}, Landroidx/credentials/exceptions/ClearCredentialInterruptedException;-><init>(Ljava/lang/CharSequence;)V

    check-cast v0, Landroidx/credentials/exceptions/ClearCredentialException;

    return-object v0

    .line 83
    :goto_5f
    new-instance v1, Landroidx/credentials/exceptions/ClearCredentialCustomException;

    invoke-direct {v1, v0, p1}, Landroidx/credentials/exceptions/ClearCredentialCustomException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    check-cast v1, Landroidx/credentials/exceptions/ClearCredentialException;

    return-object v1

    .line 71
    :cond_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bundle was missing exception type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_70
    .sparse-switch
        -0x181a9a16 -> :sswitch_4e
        0x3ea4461d -> :sswitch_3d
        0x47ab1120 -> :sswitch_2c
        0x6ed778e2 -> :sswitch_1b
    .end sparse-switch
.end method
