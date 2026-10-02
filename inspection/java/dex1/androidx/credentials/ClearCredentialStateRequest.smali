.class public final Landroidx/credentials/ClearCredentialStateRequest;
.super Ljava/lang/Object;
.source "ClearCredentialStateRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/ClearCredentialStateRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0011\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/credentials/ClearCredentialStateRequest;",
        "",
        "requestType",
        "",
        "(Ljava/lang/String;)V",
        "requestBundle",
        "Landroid/os/Bundle;",
        "getRequestBundle",
        "()Landroid/os/Bundle;",
        "getRequestType",
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
.field private static final BUNDLE_KEY_CLEAR_RESTORE_CREDENTIAL_REQUEST:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_CLEAR_RESTORE_CREDENTIAL_REQUEST"

.field public static final Companion:Landroidx/credentials/ClearCredentialStateRequest$Companion;

.field public static final TYPE_CLEAR_CREDENTIAL_STATE:Ljava/lang/String; = "androidx.credentials.TYPE_CLEAR_CREDENTIAL_STATE"

.field public static final TYPE_CLEAR_RESTORE_CREDENTIAL:Ljava/lang/String; = "androidx.credentials.TYPE_CLEAR_RESTORE_CREDENTIAL"


# instance fields
.field private final requestBundle:Landroid/os/Bundle;

.field private final requestType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/ClearCredentialStateRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/ClearCredentialStateRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/ClearCredentialStateRequest;->Companion:Landroidx/credentials/ClearCredentialStateRequest$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/credentials/ClearCredentialStateRequest;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const-string v0, "requestType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/credentials/ClearCredentialStateRequest;->requestType:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/credentials/ClearCredentialStateRequest;->requestBundle:Landroid/os/Bundle;

    .line 41
    const-string v1, "androidx.credentials.TYPE_CLEAR_CREDENTIAL_STATE"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "androidx.credentials.TYPE_CLEAR_RESTORE_CREDENTIAL"

    if-nez v1, :cond_3d

    .line 42
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_3d

    .line 44
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The request type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not supported."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_3d
    :goto_3d
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 47
    const-string p1, "androidx.credentials.BUNDLE_KEY_CLEAR_RESTORE_CREDENTIAL_REQUEST"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_49
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 36
    const-string p1, "androidx.credentials.TYPE_CLEAR_CREDENTIAL_STATE"

    :cond_6
    invoke-direct {p0, p1}, Landroidx/credentials/ClearCredentialStateRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getRequestBundle()Landroid/os/Bundle;
    .registers 2

    .line 37
    iget-object v0, p0, Landroidx/credentials/ClearCredentialStateRequest;->requestBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getRequestType()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Landroidx/credentials/ClearCredentialStateRequest;->requestType:Ljava/lang/String;

    return-object v0
.end method
