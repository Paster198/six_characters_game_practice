.class final Landroidx/credentials/provider/BeginCreateCredentialRequest$Api21Impl;
.super Ljava/lang/Object;
.source "BeginCreateCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/BeginCreateCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api21Impl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBeginCreateCredentialRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeginCreateCredentialRequest.kt\nandroidx/credentials/provider/BeginCreateCredentialRequest$Api21Impl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n1#2:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0008\u001a\u00020\tH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/credentials/provider/BeginCreateCredentialRequest$Api21Impl;",
        "",
        "()V",
        "EXTRA_BEGIN_CREATE_CREDENTIAL_REQUEST_CANDIDATE_QUERY_DATA",
        "",
        "EXTRA_BEGIN_CREATE_CREDENTIAL_REQUEST_TYPE",
        "asBundle",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "request",
        "Landroidx/credentials/provider/BeginCreateCredentialRequest;",
        "fromBundle",
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
.field private static final EXTRA_BEGIN_CREATE_CREDENTIAL_REQUEST_CANDIDATE_QUERY_DATA:Ljava/lang/String; = "androidx.credentials.provider.extra.BEGIN_CREATE_CREDENTIAL_REQUEST_CANDIDATE_QUERY_DATA"

.field private static final EXTRA_BEGIN_CREATE_CREDENTIAL_REQUEST_TYPE:Ljava/lang/String; = "androidx.credentials.provider.extra.BEGIN_CREATE_CREDENTIAL_REQUEST_TYPE"

.field public static final INSTANCE:Landroidx/credentials/provider/BeginCreateCredentialRequest$Api21Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/credentials/provider/BeginCreateCredentialRequest$Api21Impl;

    invoke-direct {v0}, Landroidx/credentials/provider/BeginCreateCredentialRequest$Api21Impl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/BeginCreateCredentialRequest$Api21Impl;->INSTANCE:Landroidx/credentials/provider/BeginCreateCredentialRequest$Api21Impl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final asBundle(Landroid/os/Bundle;Landroidx/credentials/provider/BeginCreateCredentialRequest;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const-string v0, "androidx.credentials.provider.extra.BEGIN_CREATE_CREDENTIAL_REQUEST_TYPE"

    invoke-virtual {p1}, Landroidx/credentials/provider/BeginCreateCredentialRequest;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "androidx.credentials.provider.extra.BEGIN_CREATE_CREDENTIAL_REQUEST_CANDIDATE_QUERY_DATA"

    .line 74
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginCreateCredentialRequest;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v1

    .line 72
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginCreateCredentialRequest;->getCallingAppInfo()Landroidx/credentials/provider/CallingAppInfo;

    move-result-object p1

    if-eqz p1, :cond_27

    sget-object v0, Landroidx/credentials/provider/CallingAppInfo;->Companion:Landroidx/credentials/provider/CallingAppInfo$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/provider/CallingAppInfo$Companion;->setCallingAppInfo$credentials_release(Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)V

    :cond_27
    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginCreateCredentialRequest;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const-string v0, "androidx.credentials.provider.extra.BEGIN_CREATE_CREDENTIAL_REQUEST_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_f
    const-string v1, "androidx.credentials.provider.extra.BEGIN_CREATE_CREDENTIAL_REQUEST_CANDIDATE_QUERY_DATA"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    :cond_1c
    sget-object v2, Landroidx/credentials/provider/CallingAppInfo;->Companion:Landroidx/credentials/provider/CallingAppInfo$Companion;

    invoke-virtual {v2, p0}, Landroidx/credentials/provider/CallingAppInfo$Companion;->extractCallingAppInfo$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/provider/CallingAppInfo;

    move-result-object p0

    .line 86
    sget-object v2, Landroidx/credentials/provider/BeginCreateCredentialRequest;->Companion:Landroidx/credentials/provider/BeginCreateCredentialRequest$Companion;

    invoke-virtual {v2, v0, v1, p0}, Landroidx/credentials/provider/BeginCreateCredentialRequest$Companion;->createFrom$credentials_release(Ljava/lang/String;Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)Landroidx/credentials/provider/BeginCreateCredentialRequest;

    move-result-object p0

    return-object p0
.end method
