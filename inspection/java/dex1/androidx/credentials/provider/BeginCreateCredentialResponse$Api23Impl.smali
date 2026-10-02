.class final Landroidx/credentials/provider/BeginCreateCredentialResponse$Api23Impl;
.super Ljava/lang/Object;
.source "BeginCreateCredentialResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/BeginCreateCredentialResponse;
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
        "Landroidx/credentials/provider/BeginCreateCredentialResponse$Api23Impl;",
        "",
        "()V",
        "asBundle",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "response",
        "Landroidx/credentials/provider/BeginCreateCredentialResponse;",
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
.field public static final INSTANCE:Landroidx/credentials/provider/BeginCreateCredentialResponse$Api23Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/credentials/provider/BeginCreateCredentialResponse$Api23Impl;

    invoke-direct {v0}, Landroidx/credentials/provider/BeginCreateCredentialResponse$Api23Impl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/BeginCreateCredentialResponse$Api23Impl;->INSTANCE:Landroidx/credentials/provider/BeginCreateCredentialResponse$Api23Impl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final asBundle(Landroid/os/Bundle;Landroidx/credentials/provider/BeginCreateCredentialResponse;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v0, Landroidx/credentials/provider/CreateEntry;->Companion:Landroidx/credentials/provider/CreateEntry$Companion;

    invoke-virtual {p1}, Landroidx/credentials/provider/BeginCreateCredentialResponse;->getCreateEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/credentials/provider/CreateEntry$Companion;->marshall$credentials_release(Ljava/util/List;Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p1}, Landroidx/credentials/provider/BeginCreateCredentialResponse;->getRemoteEntry()Landroidx/credentials/provider/RemoteEntry;

    move-result-object p1

    if-eqz p1, :cond_1e

    sget-object v0, Landroidx/credentials/provider/RemoteEntry;->Companion:Landroidx/credentials/provider/RemoteEntry$Companion;

    invoke-virtual {v0, p1, p0}, Landroidx/credentials/provider/RemoteEntry$Companion;->marshall$credentials_release(Landroidx/credentials/provider/RemoteEntry;Landroid/os/Bundle;)V

    :cond_1e
    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginCreateCredentialResponse;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v0, Landroidx/credentials/provider/CreateEntry;->Companion:Landroidx/credentials/provider/CreateEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CreateEntry$Companion;->unmarshallCreateEntries$credentials_release(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 144
    sget-object v1, Landroidx/credentials/provider/RemoteEntry;->Companion:Landroidx/credentials/provider/RemoteEntry$Companion;

    invoke-virtual {v1, p0}, Landroidx/credentials/provider/RemoteEntry$Companion;->unmarshallRemoteEntry$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/provider/RemoteEntry;

    move-result-object p0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-nez p0, :cond_1b

    const/4 p0, 0x0

    return-object p0

    .line 148
    :cond_1b
    new-instance v1, Landroidx/credentials/provider/BeginCreateCredentialResponse;

    invoke-direct {v1, v0, p0}, Landroidx/credentials/provider/BeginCreateCredentialResponse;-><init>(Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;)V

    return-object v1
.end method
