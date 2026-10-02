.class public final Landroidx/credentials/RestoreCredential;
.super Landroidx/credentials/Credential;
.source "RestoreCredential.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/RestoreCredential$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/credentials/RestoreCredential;",
        "Landroidx/credentials/Credential;",
        "authenticationResponseJson",
        "",
        "data",
        "Landroid/os/Bundle;",
        "(Ljava/lang/String;Landroid/os/Bundle;)V",
        "getAuthenticationResponseJson",
        "()Ljava/lang/String;",
        "Companion",
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


# static fields
.field private static final BUNDLE_KEY_GET_RESTORE_CREDENTIAL_RESPONSE:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_GET_RESTORE_CREDENTIAL_RESPONSE"

.field public static final Companion:Landroidx/credentials/RestoreCredential$Companion;

.field public static final TYPE_RESTORE_CREDENTIAL:Ljava/lang/String; = "androidx.credentials.TYPE_RESTORE_CREDENTIAL"


# instance fields
.field private final authenticationResponseJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/RestoreCredential$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/RestoreCredential$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/RestoreCredential;->Companion:Landroidx/credentials/RestoreCredential$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 45
    const-string v0, "androidx.credentials.TYPE_RESTORE_CREDENTIAL"

    invoke-direct {p0, v0, p2}, Landroidx/credentials/Credential;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 44
    iput-object p1, p0, Landroidx/credentials/RestoreCredential;->authenticationResponseJson:Ljava/lang/String;

    .line 48
    sget-object p2, Landroidx/credentials/internal/RequestValidationHelper;->Companion:Landroidx/credentials/internal/RequestValidationHelper$Companion;

    invoke-virtual {p2, p1}, Landroidx/credentials/internal/RequestValidationHelper$Companion;->isValidJSON(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authenticationResponseJson must not be empty, and must be a valid JSON"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroidx/credentials/RestoreCredential;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/RestoreCredential;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/RestoreCredential;->Companion:Landroidx/credentials/RestoreCredential$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/RestoreCredential$Companion;->createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/RestoreCredential;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAuthenticationResponseJson()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Landroidx/credentials/RestoreCredential;->authenticationResponseJson:Ljava/lang/String;

    return-object v0
.end method
