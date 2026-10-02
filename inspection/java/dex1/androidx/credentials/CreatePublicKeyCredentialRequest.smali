.class public final Landroidx/credentials/CreatePublicKeyCredentialRequest;
.super Landroidx/credentials/CreateCredentialRequest;
.source "CreatePublicKeyCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B;\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\nB=\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000cBQ\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/credentials/CreatePublicKeyCredentialRequest;",
        "Landroidx/credentials/CreateCredentialRequest;",
        "requestJson",
        "",
        "clientDataHash",
        "",
        "preferImmediatelyAvailableCredentials",
        "",
        "origin",
        "isAutoSelectAllowed",
        "(Ljava/lang/String;[BZLjava/lang/String;Z)V",
        "preferDefaultProvider",
        "(Ljava/lang/String;[BZLjava/lang/String;Ljava/lang/String;Z)V",
        "displayInfo",
        "Landroidx/credentials/CreateCredentialRequest$DisplayInfo;",
        "credentialData",
        "Landroid/os/Bundle;",
        "candidateQueryData",
        "(Ljava/lang/String;[BZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V",
        "getClientDataHash",
        "()[B",
        "getRequestJson",
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
.field public static final BUNDLE_KEY_CLIENT_DATA_HASH:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH"

.field public static final BUNDLE_KEY_REQUEST_JSON:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_REQUEST_JSON"

.field public static final BUNDLE_VALUE_SUBTYPE_CREATE_PUBLIC_KEY_CREDENTIAL_REQUEST:Ljava/lang/String; = "androidx.credentials.BUNDLE_VALUE_SUBTYPE_CREATE_PUBLIC_KEY_CREDENTIAL_REQUEST"

.field public static final Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;


# instance fields
.field private final clientDataHash:[B

.field private final requestJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 11

    const-string v0, "requestJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroidx/credentials/CreatePublicKeyCredentialRequest;-><init>(Ljava/lang/String;[BZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 12

    const-string v0, "requestJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Landroidx/credentials/CreatePublicKeyCredentialRequest;-><init>(Ljava/lang/String;[BZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BZ)V
    .registers 13

    const-string v0, "requestJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, Landroidx/credentials/CreatePublicKeyCredentialRequest;-><init>(Ljava/lang/String;[BZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BZLjava/lang/String;)V
    .registers 14

    const-string v0, "requestJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Landroidx/credentials/CreatePublicKeyCredentialRequest;-><init>(Ljava/lang/String;[BZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BZLjava/lang/String;Ljava/lang/String;Z)V
    .registers 18

    const-string v0, "requestJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    move-object/from16 v2, p5

    invoke-virtual {v0, p1, v2}, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;->getRequestDisplayInfo$credentials_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/CreateCredentialRequest$DisplayInfo;

    move-result-object v5

    const/16 v9, 0xc0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v6, p4

    move/from16 v3, p6

    .line 139
    invoke-direct/range {v0 .. v10}, Landroidx/credentials/CreatePublicKeyCredentialRequest;-><init>(Ljava/lang/String;[BZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BZLjava/lang/String;Z)V
    .registers 17

    const-string v0, "requestJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p1, v2, v3, v2}, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;->getRequestDisplayInfo$credentials_release$default(Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroidx/credentials/CreateCredentialRequest$DisplayInfo;

    move-result-object v5

    const/16 v9, 0xc0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v6, p4

    move/from16 v3, p5

    .line 96
    invoke-direct/range {v0 .. v10}, Landroidx/credentials/CreatePublicKeyCredentialRequest;-><init>(Ljava/lang/String;[BZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[BZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p7, p6, 0x4

    const/4 v1, 0x0

    if-eqz p7, :cond_c

    move p3, v1

    :cond_c
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_11

    move-object p4, v0

    :cond_11
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_17

    move p6, v1

    goto :goto_18

    :cond_17
    move p6, p5

    :goto_18
    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 90
    invoke-direct/range {p1 .. p6}, Landroidx/credentials/CreatePublicKeyCredentialRequest;-><init>(Ljava/lang/String;[BZLjava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 18

    .line 56
    const-string v1, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p3

    move v8, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    .line 55
    invoke-direct/range {v0 .. v8}, Landroidx/credentials/CreateCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Z)V

    .line 46
    iput-object p1, p0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->requestJson:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->clientDataHash:[B

    .line 149
    sget-object p2, Landroidx/credentials/internal/RequestValidationHelper;->Companion:Landroidx/credentials/internal/RequestValidationHelper$Companion;

    invoke-virtual {p2, p1}, Landroidx/credentials/internal/RequestValidationHelper$Companion;->isValidJSON(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    return-void

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "requestJson must not be empty, and must be a valid JSON"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/String;[BZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 20

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_7

    const/4 p6, 0x0

    :cond_7
    move-object v6, p6

    and-int/lit8 p6, v0, 0x40

    if-eqz p6, :cond_14

    .line 52
    sget-object p6, Landroidx/credentials/CreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    invoke-virtual {p6, p1, p2}, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;->toCredentialDataBundle$credentials_release(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object p6

    move-object v7, p6

    goto :goto_16

    :cond_14
    move-object/from16 v7, p7

    :goto_16
    and-int/lit16 p6, v0, 0x80

    if-eqz p6, :cond_22

    .line 53
    sget-object p6, Landroidx/credentials/CreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    invoke-virtual {p6, p1, p2}, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;->toCandidateDataBundle$credentials_release(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object p6

    move-object v8, p6

    goto :goto_24

    :cond_22
    move-object/from16 v8, p8

    :goto_24
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 45
    invoke-direct/range {v0 .. v8}, Landroidx/credentials/CreatePublicKeyCredentialRequest;-><init>(Ljava/lang/String;[BZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[BZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroidx/credentials/CreatePublicKeyCredentialRequest;-><init>(Ljava/lang/String;[BZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final createFrom$credentials_release(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/CreatePublicKeyCredentialRequest;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;->createFrom$credentials_release(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/CreatePublicKeyCredentialRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final getRequestDisplayInfo$credentials_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/CreateCredentialRequest$DisplayInfo;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;->getRequestDisplayInfo$credentials_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/CreateCredentialRequest$DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final toCandidateDataBundle$credentials_release(Ljava/lang/String;[B)Landroid/os/Bundle;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;->toCandidateDataBundle$credentials_release(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final toCredentialDataBundle$credentials_release(Ljava/lang/String;[B)Landroid/os/Bundle;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;->toCredentialDataBundle$credentials_release(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getClientDataHash()[B
    .registers 2

    .line 47
    iget-object v0, p0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->clientDataHash:[B

    return-object v0
.end method

.method public final getRequestJson()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->requestJson:Ljava/lang/String;

    return-object v0
.end method
