.class final Landroidx/credentials/provider/BeginGetCredentialRequest$Api21Impl;
.super Ljava/lang/Object;
.source "BeginGetCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/BeginGetCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api21Impl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBeginGetCredentialRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeginGetCredentialRequest.kt\nandroidx/credentials/provider/BeginGetCredentialRequest$Api21Impl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n1#2:164\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/credentials/provider/BeginGetCredentialRequest$Api21Impl;",
        "",
        "()V",
        "EXTRA_BEGIN_GET_CREDENTIAL_OPTION_CANDIDATE_QUERY_DATA_PREFIX",
        "",
        "EXTRA_BEGIN_GET_CREDENTIAL_OPTION_ID_PREFIX",
        "EXTRA_BEGIN_GET_CREDENTIAL_OPTION_SIZE",
        "EXTRA_BEGIN_GET_CREDENTIAL_OPTION_TYPE_PREFIX",
        "asBundle",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "request",
        "Landroidx/credentials/provider/BeginGetCredentialRequest;",
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
.field private static final EXTRA_BEGIN_GET_CREDENTIAL_OPTION_CANDIDATE_QUERY_DATA_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.EXTRA_BEGIN_GET_CREDENTIAL_OPTION_CANDIDATE_QUERY_DATA_"

.field private static final EXTRA_BEGIN_GET_CREDENTIAL_OPTION_ID_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.EXTRA_BEGIN_GET_CREDENTIAL_OPTION_ID_"

.field private static final EXTRA_BEGIN_GET_CREDENTIAL_OPTION_SIZE:Ljava/lang/String; = "androidx.credentials.provider.extra.EXTRA_BEGIN_GET_CREDENTIAL_OPTION_SIZE"

.field private static final EXTRA_BEGIN_GET_CREDENTIAL_OPTION_TYPE_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.EXTRA_BEGIN_GET_CREDENTIAL_OPTION_TYPE_"

.field public static final INSTANCE:Landroidx/credentials/provider/BeginGetCredentialRequest$Api21Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/credentials/provider/BeginGetCredentialRequest$Api21Impl;

    invoke-direct {v0}, Landroidx/credentials/provider/BeginGetCredentialRequest$Api21Impl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/BeginGetCredentialRequest$Api21Impl;->INSTANCE:Landroidx/credentials/provider/BeginGetCredentialRequest$Api21Impl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final asBundle(Landroid/os/Bundle;Landroidx/credentials/provider/BeginGetCredentialRequest;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginGetCredentialRequest;->getBeginGetCredentialOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 87
    const-string v1, "androidx.credentials.provider.extra.EXTRA_BEGIN_GET_CREDENTIAL_OPTION_SIZE"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_88

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "androidx.credentials.provider.extra.EXTRA_BEGIN_GET_CREDENTIAL_OPTION_ID_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginGetCredentialRequest;->getBeginGetCredentialOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/credentials/provider/BeginGetCredentialOption;

    invoke-virtual {v3}, Landroidx/credentials/provider/BeginGetCredentialOption;->getId()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "androidx.credentials.provider.extra.EXTRA_BEGIN_GET_CREDENTIAL_OPTION_TYPE_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginGetCredentialRequest;->getBeginGetCredentialOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/credentials/provider/BeginGetCredentialOption;

    invoke-virtual {v3}, Landroidx/credentials/provider/BeginGetCredentialOption;->getType()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "androidx.credentials.provider.extra.EXTRA_BEGIN_GET_CREDENTIAL_OPTION_CANDIDATE_QUERY_DATA_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginGetCredentialRequest;->getBeginGetCredentialOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/credentials/provider/BeginGetCredentialOption;

    invoke-virtual {v3}, Landroidx/credentials/provider/BeginGetCredentialOption;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v3

    .line 97
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginGetCredentialRequest;->getCallingAppInfo()Landroidx/credentials/provider/CallingAppInfo;

    move-result-object v2

    if-eqz v2, :cond_85

    sget-object v3, Landroidx/credentials/provider/CallingAppInfo;->Companion:Landroidx/credentials/provider/CallingAppInfo$Companion;

    invoke-virtual {v3, p0, v2}, Landroidx/credentials/provider/CallingAppInfo$Companion;->setCallingAppInfo$credentials_release(Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)V

    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_88
    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginGetCredentialRequest;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget-object v0, Landroidx/credentials/provider/CallingAppInfo;->Companion:Landroidx/credentials/provider/CallingAppInfo$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CallingAppInfo$Companion;->extractCallingAppInfo$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/provider/CallingAppInfo;

    move-result-object v0

    .line 109
    const-string v1, "androidx.credentials.provider.extra.EXTRA_BEGIN_GET_CREDENTIAL_OPTION_SIZE"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_16

    return-object v2

    .line 114
    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v1, :cond_72

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "androidx.credentials.provider.extra.EXTRA_BEGIN_GET_CREDENTIAL_OPTION_ID_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_36

    return-object v2

    .line 120
    :cond_36
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "androidx.credentials.provider.extra.EXTRA_BEGIN_GET_CREDENTIAL_OPTION_TYPE_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4c

    return-object v2

    .line 124
    :cond_4c
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "androidx.credentials.provider.extra.EXTRA_BEGIN_GET_CREDENTIAL_OPTION_CANDIDATE_QUERY_DATA_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    if-nez v7, :cond_66

    .line 125
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 126
    :cond_66
    sget-object v8, Landroidx/credentials/provider/BeginGetCredentialOption;->Companion:Landroidx/credentials/provider/BeginGetCredentialOption$Companion;

    invoke-virtual {v8, v5, v6, v7}, Landroidx/credentials/provider/BeginGetCredentialOption$Companion;->createFrom$credentials_release(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/provider/BeginGetCredentialOption;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 128
    :cond_72
    new-instance p0, Landroidx/credentials/provider/BeginGetCredentialRequest;

    invoke-direct {p0, v3, v0}, Landroidx/credentials/provider/BeginGetCredentialRequest;-><init>(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;)V

    return-object p0
.end method
