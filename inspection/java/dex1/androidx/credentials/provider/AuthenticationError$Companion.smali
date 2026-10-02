.class public final Landroidx/credentials/provider/AuthenticationError$Companion;
.super Ljava/lang/Object;
.source "AuthenticationError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/AuthenticationError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\u0013J\'\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aH\u0001\u00a2\u0006\u0002\u0008\u001bR\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\u0004X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR2\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u000cj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r`\u000e8\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/credentials/provider/AuthenticationError$Companion;",
        "",
        "()V",
        "EXTRA_BIOMETRIC_AUTH_ERROR",
        "",
        "EXTRA_BIOMETRIC_AUTH_ERROR_FALLBACK",
        "EXTRA_BIOMETRIC_AUTH_ERROR_MESSAGE",
        "EXTRA_BIOMETRIC_AUTH_ERROR_MESSAGE_FALLBACK",
        "TAG",
        "getTAG$credentials_release",
        "()Ljava/lang/String;",
        "biometricFrameworkToJetpackErrorMap",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lkotlin/collections/LinkedHashMap;",
        "getBiometricFrameworkToJetpackErrorMap$credentials_release",
        "()Ljava/util/LinkedHashMap;",
        "convertFrameworkBiometricErrorToJetpack",
        "frameworkCode",
        "convertFrameworkBiometricErrorToJetpack$credentials_release",
        "createFrom",
        "Landroidx/credentials/provider/AuthenticationError;",
        "uiErrorCode",
        "uiErrorMessage",
        "",
        "isFrameworkBiometricPrompt",
        "",
        "createFrom$credentials_release",
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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/credentials/provider/AuthenticationError$Companion;-><init>()V

    return-void
.end method

.method public static synthetic createFrom$credentials_release$default(Landroidx/credentials/provider/AuthenticationError$Companion;ILjava/lang/CharSequence;ZILjava/lang/Object;)Landroidx/credentials/provider/AuthenticationError;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x1

    .line 124
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/credentials/provider/AuthenticationError$Companion;->createFrom$credentials_release(ILjava/lang/CharSequence;Z)Landroidx/credentials/provider/AuthenticationError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final convertFrameworkBiometricErrorToJetpack$credentials_release(I)I
    .registers 5

    .line 98
    invoke-virtual {p0}, Landroidx/credentials/provider/AuthenticationError$Companion;->getBiometricFrameworkToJetpackErrorMap$credentials_release()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 99
    invoke-virtual {p0}, Landroidx/credentials/provider/AuthenticationError$Companion;->getBiometricFrameworkToJetpackErrorMap$credentials_release()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    const-string v0, "{\n                biomet\u2026workCode]!!\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 101
    :cond_29
    invoke-virtual {p0}, Landroidx/credentials/provider/AuthenticationError$Companion;->getTAG$credentials_release()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected error code, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final createFrom$credentials_release(ILjava/lang/CharSequence;)Landroidx/credentials/provider/AuthenticationError;
    .registers 10

    const-string v0, "uiErrorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Landroidx/credentials/provider/AuthenticationError$Companion;->createFrom$credentials_release$default(Landroidx/credentials/provider/AuthenticationError$Companion;ILjava/lang/CharSequence;ZILjava/lang/Object;)Landroidx/credentials/provider/AuthenticationError;

    move-result-object p1

    return-object p1
.end method

.method public final createFrom$credentials_release(ILjava/lang/CharSequence;Z)Landroidx/credentials/provider/AuthenticationError;
    .registers 5

    const-string v0, "uiErrorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Landroidx/credentials/provider/AuthenticationError;

    if-eqz p3, :cond_d

    .line 132
    invoke-virtual {p0, p1}, Landroidx/credentials/provider/AuthenticationError$Companion;->convertFrameworkBiometricErrorToJetpack$credentials_release(I)I

    move-result p1

    .line 129
    :cond_d
    invoke-direct {v0, p1, p2}, Landroidx/credentials/provider/AuthenticationError;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public final getBiometricFrameworkToJetpackErrorMap$credentials_release()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 64
    # getter for: Landroidx/credentials/provider/AuthenticationError;->biometricFrameworkToJetpackErrorMap:Ljava/util/LinkedHashMap;
    invoke-static {}, Landroidx/credentials/provider/AuthenticationError;->access$getBiometricFrameworkToJetpackErrorMap$cp()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public final getTAG$credentials_release()Ljava/lang/String;
    .registers 2

    .line 45
    # getter for: Landroidx/credentials/provider/AuthenticationError;->TAG:Ljava/lang/String;
    invoke-static {}, Landroidx/credentials/provider/AuthenticationError;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
