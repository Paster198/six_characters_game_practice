.class final Landroidx/credentials/provider/BeginGetCredentialResponse$Api23Impl;
.super Ljava/lang/Object;
.source "BeginGetCredentialResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/BeginGetCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api23Impl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/credentials/provider/BeginGetCredentialResponse$Api23Impl;",
        "",
        "()V",
        "asBundle",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "response",
        "Landroidx/credentials/provider/BeginGetCredentialResponse;",
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
.field public static final INSTANCE:Landroidx/credentials/provider/BeginGetCredentialResponse$Api23Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/credentials/provider/BeginGetCredentialResponse$Api23Impl;

    invoke-direct {v0}, Landroidx/credentials/provider/BeginGetCredentialResponse$Api23Impl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/BeginGetCredentialResponse$Api23Impl;->INSTANCE:Landroidx/credentials/provider/BeginGetCredentialResponse$Api23Impl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final asBundle(Landroid/os/Bundle;Landroidx/credentials/provider/BeginGetCredentialResponse;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    sget-object v0, Landroidx/credentials/provider/CredentialEntry;->Companion:Landroidx/credentials/provider/CredentialEntry$Companion;

    invoke-virtual {p1}, Landroidx/credentials/provider/BeginGetCredentialResponse;->getCredentialEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/credentials/provider/CredentialEntry$Companion;->marshall$credentials_release(Ljava/util/List;Landroid/os/Bundle;)V

    .line 189
    sget-object v0, Landroidx/credentials/provider/Action;->Companion:Landroidx/credentials/provider/Action$Companion;

    invoke-virtual {p1}, Landroidx/credentials/provider/BeginGetCredentialResponse;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/credentials/provider/Action$Companion;->marshall$credentials_release(Ljava/util/List;Landroid/os/Bundle;)V

    .line 190
    sget-object v0, Landroidx/credentials/provider/AuthenticationAction;->Companion:Landroidx/credentials/provider/AuthenticationAction$Companion;

    invoke-virtual {p1}, Landroidx/credentials/provider/BeginGetCredentialResponse;->getAuthenticationActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/credentials/provider/AuthenticationAction$Companion;->marshall$credentials_release(Ljava/util/List;Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginGetCredentialResponse;->getRemoteEntry()Landroidx/credentials/provider/RemoteEntry;

    move-result-object p1

    if-eqz p1, :cond_30

    sget-object v0, Landroidx/credentials/provider/RemoteEntry;->Companion:Landroidx/credentials/provider/RemoteEntry$Companion;

    invoke-virtual {v0, p1, p0}, Landroidx/credentials/provider/RemoteEntry$Companion;->marshall$credentials_release(Landroidx/credentials/provider/RemoteEntry;Landroid/os/Bundle;)V

    :cond_30
    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginGetCredentialResponse;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v0, Landroidx/credentials/provider/CredentialEntry;->Companion:Landroidx/credentials/provider/CredentialEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CredentialEntry$Companion;->unmarshallCredentialEntries$credentials_release(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 197
    sget-object v1, Landroidx/credentials/provider/Action;->Companion:Landroidx/credentials/provider/Action$Companion;

    invoke-virtual {v1, p0}, Landroidx/credentials/provider/Action$Companion;->unmarshallActionList$credentials_release(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 198
    sget-object v2, Landroidx/credentials/provider/AuthenticationAction;->Companion:Landroidx/credentials/provider/AuthenticationAction$Companion;

    invoke-virtual {v2, p0}, Landroidx/credentials/provider/AuthenticationAction$Companion;->unmarshallAuthActionList$credentials_release(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    .line 199
    sget-object v3, Landroidx/credentials/provider/RemoteEntry;->Companion:Landroidx/credentials/provider/RemoteEntry$Companion;

    invoke-virtual {v3, p0}, Landroidx/credentials/provider/RemoteEntry$Companion;->unmarshallRemoteEntry$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/provider/RemoteEntry;

    move-result-object p0

    .line 201
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 202
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 203
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    if-nez p0, :cond_33

    const/4 p0, 0x0

    return-object p0

    .line 208
    :cond_33
    new-instance v3, Landroidx/credentials/provider/BeginGetCredentialResponse;

    invoke-direct {v3, v0, v1, v2, p0}, Landroidx/credentials/provider/BeginGetCredentialResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;)V

    return-object v3
.end method
