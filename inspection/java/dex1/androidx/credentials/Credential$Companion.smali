.class public final Landroidx/credentials/Credential$Companion;
.super Ljava/lang/Object;
.source "Credential.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/credentials/Credential$Companion;",
        "",
        "()V",
        "createFrom",
        "Landroidx/credentials/Credential;",
        "credential",
        "Landroid/credentials/Credential;",
        "type",
        "",
        "data",
        "Landroid/os/Bundle;",
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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/credentials/Credential$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFrom(Landroid/credentials/Credential;)Landroidx/credentials/Credential;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/credentials/Credential;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "credential.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/credentials/Credential;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "credential.data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Landroidx/credentials/Credential$Companion;->createFrom(Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/Credential;

    move-result-object p1

    return-object p1
.end method

.method public final createFrom(Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/Credential;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_64

    goto :goto_56

    :sswitch_12
    const-string v0, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 59
    sget-object v0, Landroidx/credentials/PublicKeyCredential;->Companion:Landroidx/credentials/PublicKeyCredential$Companion;

    invoke-virtual {v0, p2}, Landroidx/credentials/PublicKeyCredential$Companion;->createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/PublicKeyCredential;

    move-result-object v0

    check-cast v0, Landroidx/credentials/Credential;

    return-object v0

    .line 55
    :sswitch_23
    const-string v0, "android.credentials.TYPE_PASSWORD_CREDENTIAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 57
    sget-object v0, Landroidx/credentials/PasswordCredential;->Companion:Landroidx/credentials/PasswordCredential$Companion;

    invoke-virtual {v0, p2}, Landroidx/credentials/PasswordCredential$Companion;->createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/PasswordCredential;

    move-result-object v0

    check-cast v0, Landroidx/credentials/Credential;

    return-object v0

    .line 55
    :sswitch_34
    const-string v0, "androidx.credentials.TYPE_RESTORE_CREDENTIAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 60
    sget-object v0, Landroidx/credentials/RestoreCredential;->Companion:Landroidx/credentials/RestoreCredential$Companion;

    invoke-virtual {v0, p2}, Landroidx/credentials/RestoreCredential$Companion;->createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/RestoreCredential;

    move-result-object v0

    check-cast v0, Landroidx/credentials/Credential;

    return-object v0

    .line 55
    :sswitch_45
    const-string v0, "androidx.credentials.TYPE_DIGITAL_CREDENTIAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 61
    sget-object v0, Landroidx/credentials/DigitalCredential;->Companion:Landroidx/credentials/DigitalCredential$Companion;

    invoke-virtual {v0, p2}, Landroidx/credentials/DigitalCredential$Companion;->createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/DigitalCredential;

    move-result-object v0

    check-cast v0, Landroidx/credentials/Credential;

    return-object v0

    .line 62
    :cond_56
    :goto_56
    new-instance v0, Landroidx/credentials/internal/FrameworkClassParsingException;

    invoke-direct {v0}, Landroidx/credentials/internal/FrameworkClassParsingException;-><init>()V

    throw v0
    :try_end_5c
    .catch Landroidx/credentials/internal/FrameworkClassParsingException; {:try_start_a .. :try_end_5c} :catch_5c

    .line 67
    :catch_5c
    new-instance v0, Landroidx/credentials/CustomCredential;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/CustomCredential;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    check-cast v0, Landroidx/credentials/Credential;

    return-object v0

    :sswitch_data_64
    .sparse-switch
        -0x640a7654 -> :sswitch_45
        -0x3ff0a08a -> :sswitch_34
        -0x20663139 -> :sswitch_23
        -0x5aa2881 -> :sswitch_12
    .end sparse-switch
.end method
