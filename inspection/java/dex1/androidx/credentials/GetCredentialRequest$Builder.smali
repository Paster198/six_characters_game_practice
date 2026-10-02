.class public final Landroidx/credentials/GetCredentialRequest$Builder;
.super Ljava/lang/Object;
.source "GetCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/GetCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\u0006\u0010\u000f\u001a\u00020\u0010J\u0014\u0010\u0011\u001a\u00020\u00002\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0012J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000cR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/credentials/GetCredentialRequest$Builder;",
        "",
        "()V",
        "credentialOptions",
        "",
        "Landroidx/credentials/CredentialOption;",
        "origin",
        "",
        "preferIdentityDocUi",
        "",
        "preferImmediatelyAvailableCredentials",
        "preferUiBrandingComponentName",
        "Landroid/content/ComponentName;",
        "addCredentialOption",
        "credentialOption",
        "build",
        "Landroidx/credentials/GetCredentialRequest;",
        "setCredentialOptions",
        "",
        "setOrigin",
        "setPreferIdentityDocUi",
        "setPreferImmediatelyAvailableCredentials",
        "setPreferUiBrandingComponentName",
        "component",
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


# instance fields
.field private credentialOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/CredentialOption;",
            ">;"
        }
    .end annotation
.end field

.field private origin:Ljava/lang/String;

.field private preferIdentityDocUi:Z

.field private preferImmediatelyAvailableCredentials:Z

.field private preferUiBrandingComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/credentials/GetCredentialRequest$Builder;->credentialOptions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addCredentialOption(Landroidx/credentials/CredentialOption;)Landroidx/credentials/GetCredentialRequest$Builder;
    .registers 3

    const-string v0, "credentialOption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Landroidx/credentials/GetCredentialRequest$Builder;->credentialOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Landroidx/credentials/GetCredentialRequest;
    .registers 7

    .line 172
    new-instance v0, Landroidx/credentials/GetCredentialRequest;

    .line 173
    iget-object v1, p0, Landroidx/credentials/GetCredentialRequest$Builder;->credentialOptions:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 174
    iget-object v2, p0, Landroidx/credentials/GetCredentialRequest$Builder;->origin:Ljava/lang/String;

    .line 175
    iget-boolean v3, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferIdentityDocUi:Z

    .line 176
    iget-object v4, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferUiBrandingComponentName:Landroid/content/ComponentName;

    .line 177
    iget-boolean v5, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferImmediatelyAvailableCredentials:Z

    .line 172
    invoke-direct/range {v0 .. v5}, Landroidx/credentials/GetCredentialRequest;-><init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;Z)V

    return-object v0
.end method

.method public final setCredentialOptions(Ljava/util/List;)Landroidx/credentials/GetCredentialRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/CredentialOption;",
            ">;)",
            "Landroidx/credentials/GetCredentialRequest$Builder;"
        }
    .end annotation

    const-string v0, "credentialOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/credentials/GetCredentialRequest$Builder;->credentialOptions:Ljava/util/List;

    return-object p0
.end method

.method public final setOrigin(Ljava/lang/String;)Landroidx/credentials/GetCredentialRequest$Builder;
    .registers 3

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Landroidx/credentials/GetCredentialRequest$Builder;->origin:Ljava/lang/String;

    return-object p0
.end method

.method public final setPreferIdentityDocUi(Z)Landroidx/credentials/GetCredentialRequest$Builder;
    .registers 2

    .line 162
    iput-boolean p1, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferIdentityDocUi:Z

    return-object p0
.end method

.method public final setPreferImmediatelyAvailableCredentials(Z)Landroidx/credentials/GetCredentialRequest$Builder;
    .registers 2

    .line 140
    iput-boolean p1, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferImmediatelyAvailableCredentials:Z

    return-object p0
.end method

.method public final setPreferUiBrandingComponentName(Landroid/content/ComponentName;)Landroidx/credentials/GetCredentialRequest$Builder;
    .registers 2

    .line 152
    iput-object p1, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferUiBrandingComponentName:Landroid/content/ComponentName;

    return-object p0
.end method
