.class final Landroidx/credentials/GetRestoreCredentialOption$Companion;
.super Ljava/lang/Object;
.source "GetRestoreCredentialOption.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/GetRestoreCredentialOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/credentials/GetRestoreCredentialOption$Companion;",
        "",
        "()V",
        "BUNDLE_KEY_GET_RESTORE_CREDENTIAL_REQUEST",
        "",
        "toRequestDataBundle",
        "Landroid/os/Bundle;",
        "requestJson",
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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/credentials/GetRestoreCredentialOption$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$toRequestDataBundle(Landroidx/credentials/GetRestoreCredentialOption$Companion;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Landroidx/credentials/GetRestoreCredentialOption$Companion;->toRequestDataBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final toRequestDataBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string v1, "androidx.credentials.BUNDLE_KEY_GET_RESTORE_CREDENTIAL_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
