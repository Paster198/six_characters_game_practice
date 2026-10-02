.class public final Landroidx/credentials/CreateRestoreCredentialRequest;
.super Landroidx/credentials/CreateCredentialRequest;
.source "CreateRestoreCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CreateRestoreCredentialRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/credentials/CreateRestoreCredentialRequest;",
        "Landroidx/credentials/CreateCredentialRequest;",
        "requestJson",
        "",
        "isCloudBackupEnabled",
        "",
        "(Ljava/lang/String;Z)V",
        "()Z",
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
.field private static final BUNDLE_KEY_CREATE_RESTORE_CREDENTIAL_REQUEST:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_CREATE_RESTORE_CREDENTIAL_REQUEST"

.field private static final BUNDLE_KEY_SHOULD_BACKUP_TO_CLOUD:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_SHOULD_BACKUP_TO_CLOUD"

.field public static final Companion:Landroidx/credentials/CreateRestoreCredentialRequest$Companion;


# instance fields
.field private final isCloudBackupEnabled:Z

.field private final requestJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/CreateRestoreCredentialRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/CreateRestoreCredentialRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/CreateRestoreCredentialRequest;->Companion:Landroidx/credentials/CreateRestoreCredentialRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const-string v0, "requestJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/credentials/CreateRestoreCredentialRequest;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 13

    const-string v0, "requestJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Landroidx/credentials/CreateRestoreCredentialRequest;->Companion:Landroidx/credentials/CreateRestoreCredentialRequest$Companion;

    # invokes: Landroidx/credentials/CreateRestoreCredentialRequest$Companion;->toCredentialDataBundle(Ljava/lang/String;Z)Landroid/os/Bundle;
    invoke-static {v0, p1, p2}, Landroidx/credentials/CreateRestoreCredentialRequest$Companion;->access$toCredentialDataBundle(Landroidx/credentials/CreateRestoreCredentialRequest$Companion;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    .line 57
    # invokes: Landroidx/credentials/CreateRestoreCredentialRequest$Companion;->getDisplayInfoFromJson(Ljava/lang/String;)Landroidx/credentials/CreateCredentialRequest$DisplayInfo;
    invoke-static {v0, p1}, Landroidx/credentials/CreateRestoreCredentialRequest$Companion;->access$getDisplayInfoFromJson(Landroidx/credentials/CreateRestoreCredentialRequest$Companion;Ljava/lang/String;)Landroidx/credentials/CreateCredentialRequest$DisplayInfo;

    move-result-object v7

    .line 61
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 53
    const-string v2, "androidx.credentials.TYPE_RESTORE_CREDENTIAL"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroidx/credentials/CreateCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Z)V

    .line 50
    iput-object p1, v1, Landroidx/credentials/CreateRestoreCredentialRequest;->requestJson:Ljava/lang/String;

    .line 51
    iput-boolean p2, v1, Landroidx/credentials/CreateRestoreCredentialRequest;->isCloudBackupEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    .line 49
    :cond_5
    invoke-direct {p0, p1, p2}, Landroidx/credentials/CreateRestoreCredentialRequest;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getRequestJson()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Landroidx/credentials/CreateRestoreCredentialRequest;->requestJson:Ljava/lang/String;

    return-object v0
.end method

.method public final isCloudBackupEnabled()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Landroidx/credentials/CreateRestoreCredentialRequest;->isCloudBackupEnabled:Z

    return v0
.end method
