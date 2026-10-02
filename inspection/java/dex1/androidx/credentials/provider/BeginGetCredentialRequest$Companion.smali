.class public final Landroidx/credentials/provider/BeginGetCredentialRequest$Companion;
.super Ljava/lang/Object;
.source "BeginGetCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/BeginGetCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0008\u001a\u00020\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/credentials/provider/BeginGetCredentialRequest$Companion;",
        "",
        "()V",
        "asBundle",
        "Landroid/os/Bundle;",
        "request",
        "Landroidx/credentials/provider/BeginGetCredentialRequest;",
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

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/credentials/provider/BeginGetCredentialRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final asBundle(Landroidx/credentials/provider/BeginGetCredentialRequest;)Landroid/os/Bundle;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_14

    .line 142
    invoke-static {v0, p1}, Landroidx/credentials/provider/BeginGetCredentialRequest$Api34Impl;->asBundle(Landroid/os/Bundle;Landroidx/credentials/provider/BeginGetCredentialRequest;)V

    return-object v0

    .line 144
    :cond_14
    invoke-static {v0, p1}, Landroidx/credentials/provider/BeginGetCredentialRequest$Api21Impl;->asBundle(Landroid/os/Bundle;Landroidx/credentials/provider/BeginGetCredentialRequest;)V

    return-object v0
.end method

.method public final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginGetCredentialRequest;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_10

    .line 156
    invoke-static {p1}, Landroidx/credentials/provider/BeginGetCredentialRequest$Api34Impl;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginGetCredentialRequest;

    move-result-object p1

    return-object p1

    .line 158
    :cond_10
    invoke-static {p1}, Landroidx/credentials/provider/BeginGetCredentialRequest$Api21Impl;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginGetCredentialRequest;

    move-result-object p1

    return-object p1
.end method
