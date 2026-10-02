.class public final Landroidx/credentials/provider/AuthenticationResult$Companion;
.super Ljava/lang/Object;
.source "AuthenticationResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/AuthenticationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\u000eJ\u001f\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013H\u0001\u00a2\u0006\u0002\u0008\u0014R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087T\u00a2\u0006\u0002\n\u0000R2\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u0007j\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008`\t8\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/credentials/provider/AuthenticationResult$Companion;",
        "",
        "()V",
        "EXTRA_BIOMETRIC_AUTH_RESULT_TYPE",
        "",
        "EXTRA_BIOMETRIC_AUTH_RESULT_TYPE_FALLBACK",
        "biometricFrameworkToJetpackResultMap",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lkotlin/collections/LinkedHashMap;",
        "getBiometricFrameworkToJetpackResultMap$credentials_release",
        "()Ljava/util/LinkedHashMap;",
        "convertFrameworkBiometricResultToJetpack",
        "frameworkCode",
        "convertFrameworkBiometricResultToJetpack$credentials_release",
        "createFrom",
        "Landroidx/credentials/provider/AuthenticationResult;",
        "uiAuthenticationType",
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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/credentials/provider/AuthenticationResult$Companion;-><init>()V

    return-void
.end method

.method public static synthetic createFrom$credentials_release$default(Landroidx/credentials/provider/AuthenticationResult$Companion;IZILjava/lang/Object;)Landroidx/credentials/provider/AuthenticationResult;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 85
    :cond_5
    invoke-virtual {p0, p1, p2}, Landroidx/credentials/provider/AuthenticationResult$Companion;->createFrom$credentials_release(IZ)Landroidx/credentials/provider/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final convertFrameworkBiometricResultToJetpack$credentials_release(I)I
    .registers 5

    .line 60
    invoke-virtual {p0}, Landroidx/credentials/provider/AuthenticationResult$Companion;->getBiometricFrameworkToJetpackResultMap$credentials_release()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 61
    invoke-virtual {p0}, Landroidx/credentials/provider/AuthenticationResult$Companion;->getBiometricFrameworkToJetpackResultMap$credentials_release()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    const-string v0, "{\n                biomet\u2026workCode]!!\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 63
    :cond_29
    sget-object v0, Landroidx/credentials/provider/AuthenticationError;->Companion:Landroidx/credentials/provider/AuthenticationError$Companion;

    invoke-virtual {v0}, Landroidx/credentials/provider/AuthenticationError$Companion;->getTAG$credentials_release()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non framework result code, "

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

.method public final createFrom$credentials_release(I)Landroidx/credentials/provider/AuthenticationResult;
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Landroidx/credentials/provider/AuthenticationResult$Companion;->createFrom$credentials_release$default(Landroidx/credentials/provider/AuthenticationResult$Companion;IZILjava/lang/Object;)Landroidx/credentials/provider/AuthenticationResult;

    move-result-object p1

    return-object p1
.end method

.method public final createFrom$credentials_release(IZ)Landroidx/credentials/provider/AuthenticationResult;
    .registers 4

    .line 89
    new-instance v0, Landroidx/credentials/provider/AuthenticationResult;

    if-eqz p2, :cond_8

    .line 92
    invoke-virtual {p0, p1}, Landroidx/credentials/provider/AuthenticationResult$Companion;->convertFrameworkBiometricResultToJetpack$credentials_release(I)I

    move-result p1

    .line 89
    :cond_8
    invoke-direct {v0, p1}, Landroidx/credentials/provider/AuthenticationResult;-><init>(I)V

    return-object v0
.end method

.method public final getBiometricFrameworkToJetpackResultMap$credentials_release()Ljava/util/LinkedHashMap;
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

    .line 47
    # getter for: Landroidx/credentials/provider/AuthenticationResult;->biometricFrameworkToJetpackResultMap:Ljava/util/LinkedHashMap;
    invoke-static {}, Landroidx/credentials/provider/AuthenticationResult;->access$getBiometricFrameworkToJetpackResultMap$cp()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method
