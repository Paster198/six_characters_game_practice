.class public final Landroidx/credentials/provider/BeginCreateCredentialRequest$Companion;
.super Ljava/lang/Object;
.source "BeginCreateCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/BeginCreateCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\'\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0000\u00a2\u0006\u0002\u0008\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000f\u001a\u00020\u0004H\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/credentials/provider/BeginCreateCredentialRequest$Companion;",
        "",
        "()V",
        "asBundle",
        "Landroid/os/Bundle;",
        "request",
        "Landroidx/credentials/provider/BeginCreateCredentialRequest;",
        "createFrom",
        "type",
        "",
        "candidateQueryData",
        "callingAppInfo",
        "Landroidx/credentials/provider/CallingAppInfo;",
        "createFrom$credentials_release",
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

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/credentials/provider/BeginCreateCredentialRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final asBundle(Landroidx/credentials/provider/BeginCreateCredentialRequest;)Landroid/os/Bundle;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_14

    .line 128
    invoke-static {v0, p1}, Landroidx/credentials/provider/BeginCreateCredentialRequest$Api34Impl;->asBundle(Landroid/os/Bundle;Landroidx/credentials/provider/BeginCreateCredentialRequest;)V

    return-object v0

    .line 130
    :cond_14
    invoke-static {v0, p1}, Landroidx/credentials/provider/BeginCreateCredentialRequest$Api21Impl;->asBundle(Landroid/os/Bundle;Landroidx/credentials/provider/BeginCreateCredentialRequest;)V

    return-object v0
.end method

.method public final createFrom$credentials_release(Ljava/lang/String;Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)Landroidx/credentials/provider/BeginCreateCredentialRequest;
    .registers 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "candidateQueryData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :try_start_a
    const-string v0, "android.credentials.TYPE_PASSWORD_CREDENTIAL"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 99
    sget-object v0, Landroidx/credentials/provider/BeginCreatePasswordCredentialRequest;->Companion:Landroidx/credentials/provider/BeginCreatePasswordCredentialRequest$Companion;

    invoke-virtual {v0, p2, p3}, Landroidx/credentials/provider/BeginCreatePasswordCredentialRequest$Companion;->createFrom$credentials_release(Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)Landroidx/credentials/provider/BeginCreatePasswordCredentialRequest;

    move-result-object v0

    check-cast v0, Landroidx/credentials/provider/BeginCreateCredentialRequest;

    return-object v0

    .line 104
    :cond_1b
    const-string v0, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 105
    sget-object v0, Landroidx/credentials/provider/BeginCreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/provider/BeginCreatePublicKeyCredentialRequest$Companion;

    invoke-virtual {v0, p2, p3}, Landroidx/credentials/provider/BeginCreatePublicKeyCredentialRequest$Companion;->createFrom$credentials_release(Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)Landroidx/credentials/provider/BeginCreatePublicKeyCredentialRequest;

    move-result-object v0

    check-cast v0, Landroidx/credentials/provider/BeginCreateCredentialRequest;

    return-object v0

    .line 111
    :cond_2c
    new-instance v0, Landroidx/credentials/provider/BeginCreateCustomCredentialRequest;

    invoke-direct {v0, p1, p2, p3}, Landroidx/credentials/provider/BeginCreateCustomCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)V

    check-cast v0, Landroidx/credentials/provider/BeginCreateCredentialRequest;
    :try_end_33
    .catch Landroidx/credentials/internal/FrameworkClassParsingException; {:try_start_a .. :try_end_33} :catch_34

    return-object v0

    .line 115
    :catch_34
    new-instance v0, Landroidx/credentials/provider/BeginCreateCustomCredentialRequest;

    invoke-direct {v0, p1, p2, p3}, Landroidx/credentials/provider/BeginCreateCustomCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)V

    check-cast v0, Landroidx/credentials/provider/BeginCreateCredentialRequest;

    return-object v0
.end method

.method public final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginCreateCredentialRequest;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_10

    .line 142
    invoke-static {p1}, Landroidx/credentials/provider/BeginCreateCredentialRequest$Api34Impl;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginCreateCredentialRequest;

    move-result-object p1

    return-object p1

    .line 144
    :cond_10
    invoke-static {p1}, Landroidx/credentials/provider/BeginCreateCredentialRequest$Api21Impl;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginCreateCredentialRequest;

    move-result-object p1

    return-object p1
.end method
