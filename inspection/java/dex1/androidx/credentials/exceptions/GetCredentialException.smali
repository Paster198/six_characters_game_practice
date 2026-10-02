.class public abstract Landroidx/credentials/exceptions/GetCredentialException;
.super Ljava/lang/Exception;
.source "GetCredentialException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/exceptions/GetCredentialException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0007\u0008&\u0018\u0000 \u000c2\u00060\u0001j\u0002`\u0002:\u0001\u000cB\u001b\u0008\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0003\u001a\u00020\u00048\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/credentials/exceptions/GetCredentialException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "type",
        "",
        "errorMessage",
        "",
        "(Ljava/lang/String;Ljava/lang/CharSequence;)V",
        "getErrorMessage",
        "()Ljava/lang/CharSequence;",
        "getType",
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
.field public static final Companion:Landroidx/credentials/exceptions/GetCredentialException$Companion;

.field private static final EXTRA_GET_CREDENTIAL_EXCEPTION_MESSAGE:Ljava/lang/String; = "androidx.credentials.provider.extra.CREATE_CREDENTIAL_EXCEPTION_MESSAGE"

.field private static final EXTRA_GET_CREDENTIAL_EXCEPTION_TYPE:Ljava/lang/String; = "androidx.credentials.provider.extra.CREATE_CREDENTIAL_EXCEPTION_TYPE"


# instance fields
.field private final errorMessage:Ljava/lang/CharSequence;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/exceptions/GetCredentialException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/GetCredentialException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/exceptions/GetCredentialException;->Companion:Landroidx/credentials/exceptions/GetCredentialException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/credentials/exceptions/GetCredentialException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_c

    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Landroidx/credentials/exceptions/GetCredentialException;->type:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Landroidx/credentials/exceptions/GetCredentialException;->errorMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 35
    :cond_5
    invoke-direct {p0, p1, p2}, Landroidx/credentials/exceptions/GetCredentialException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final asBundle(Landroidx/credentials/exceptions/GetCredentialException;)Landroid/os/Bundle;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/exceptions/GetCredentialException;->Companion:Landroidx/credentials/exceptions/GetCredentialException$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/exceptions/GetCredentialException$Companion;->asBundle(Landroidx/credentials/exceptions/GetCredentialException;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/exceptions/GetCredentialException;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/exceptions/GetCredentialException;->Companion:Landroidx/credentials/exceptions/GetCredentialException$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/exceptions/GetCredentialException$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/exceptions/GetCredentialException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/CharSequence;
    .registers 2

    .line 37
    iget-object v0, p0, Landroidx/credentials/exceptions/GetCredentialException;->errorMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Landroidx/credentials/exceptions/GetCredentialException;->type:Ljava/lang/String;

    return-object v0
.end method
