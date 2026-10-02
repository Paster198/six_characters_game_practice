.class public final Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;
.super Ljava/lang/Object;
.source "PendingIntentHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/PendingIntentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api23Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;",
        "",
        "()V",
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
.field public static final Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

.field private static final EXTRA_BEGIN_GET_CREDENTIAL_REQUEST:Ljava/lang/String; = "android.service.credentials.extra.BEGIN_GET_CREDENTIAL_REQUEST"

.field private static final EXTRA_BEGIN_GET_CREDENTIAL_RESPONSE:Ljava/lang/String; = "android.service.credentials.extra.BEGIN_GET_CREDENTIAL_RESPONSE"

.field private static final EXTRA_CREATE_CREDENTIAL_EXCEPTION:Ljava/lang/String; = "android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION"

.field private static final EXTRA_CREATE_CREDENTIAL_REQUEST:Ljava/lang/String; = "android.service.credentials.extra.CREATE_CREDENTIAL_REQUEST"

.field private static final EXTRA_CREATE_CREDENTIAL_RESPONSE:Ljava/lang/String; = "android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE"

.field private static final EXTRA_GET_CREDENTIAL_EXCEPTION:Ljava/lang/String; = "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

.field private static final EXTRA_GET_CREDENTIAL_REQUEST:Ljava/lang/String; = "android.service.credentials.extra.GET_CREDENTIAL_REQUEST"

.field private static final EXTRA_GET_CREDENTIAL_RESPONSE:Ljava/lang/String; = "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final extractBeginGetCredentialResponse(Landroid/content/Intent;)Landroidx/credentials/provider/BeginGetCredentialResponse;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->extractBeginGetCredentialResponse(Landroid/content/Intent;)Landroidx/credentials/provider/BeginGetCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final extractCreateCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/CreateCredentialException;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->extractCreateCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/CreateCredentialException;

    move-result-object p0

    return-object p0
.end method

.method public static final extractCreateCredentialResponse(Landroid/content/Intent;)Landroidx/credentials/CreateCredentialResponse;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->extractCreateCredentialResponse(Landroid/content/Intent;)Landroidx/credentials/CreateCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final extractGetCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/GetCredentialException;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->extractGetCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/GetCredentialException;

    move-result-object p0

    return-object p0
.end method

.method public static final extractGetCredentialResponse(Landroid/content/Intent;)Landroidx/credentials/GetCredentialResponse;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->extractGetCredentialResponse(Landroid/content/Intent;)Landroidx/credentials/GetCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final retrieveBeginGetCredentialRequest(Landroid/content/Intent;)Landroidx/credentials/provider/BeginGetCredentialRequest;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->retrieveBeginGetCredentialRequest(Landroid/content/Intent;)Landroidx/credentials/provider/BeginGetCredentialRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final retrieveProviderCreateCredentialRequest(Landroid/content/Intent;)Landroidx/credentials/provider/ProviderCreateCredentialRequest;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->retrieveProviderCreateCredentialRequest(Landroid/content/Intent;)Landroidx/credentials/provider/ProviderCreateCredentialRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final retrieveProviderGetCredentialRequest(Landroid/content/Intent;)Landroidx/credentials/provider/ProviderGetCredentialRequest;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->retrieveProviderGetCredentialRequest(Landroid/content/Intent;)Landroidx/credentials/provider/ProviderGetCredentialRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final setBeginGetCredentialRequest(Landroid/content/Intent;Landroidx/credentials/provider/BeginGetCredentialRequest;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->setBeginGetCredentialRequest(Landroid/content/Intent;Landroidx/credentials/provider/BeginGetCredentialRequest;)V

    return-void
.end method

.method public static final setBeginGetCredentialResponse(Landroid/content/Intent;Landroidx/credentials/provider/BeginGetCredentialResponse;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->setBeginGetCredentialResponse(Landroid/content/Intent;Landroidx/credentials/provider/BeginGetCredentialResponse;)V

    return-void
.end method

.method public static final setCreateCredentialException(Landroid/content/Intent;Landroidx/credentials/exceptions/CreateCredentialException;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->setCreateCredentialException(Landroid/content/Intent;Landroidx/credentials/exceptions/CreateCredentialException;)V

    return-void
.end method

.method public static final setCreateCredentialResponse(Landroid/content/Intent;Landroidx/credentials/CreateCredentialResponse;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->setCreateCredentialResponse(Landroid/content/Intent;Landroidx/credentials/CreateCredentialResponse;)V

    return-void
.end method

.method public static final setGetCredentialException(Landroid/content/Intent;Landroidx/credentials/exceptions/GetCredentialException;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->setGetCredentialException(Landroid/content/Intent;Landroidx/credentials/exceptions/GetCredentialException;)V

    return-void
.end method

.method public static final setGetCredentialResponse(Landroid/content/Intent;Landroidx/credentials/GetCredentialResponse;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->setGetCredentialResponse(Landroid/content/Intent;Landroidx/credentials/GetCredentialResponse;)V

    return-void
.end method

.method public static final setProviderCreateCredentialRequest(Landroid/content/Intent;Landroidx/credentials/provider/ProviderCreateCredentialRequest;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->setProviderCreateCredentialRequest(Landroid/content/Intent;Landroidx/credentials/provider/ProviderCreateCredentialRequest;)V

    return-void
.end method

.method public static final setProviderGetCredentialRequest(Landroid/content/Intent;Landroidx/credentials/provider/ProviderGetCredentialRequest;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->setProviderGetCredentialRequest(Landroid/content/Intent;Landroidx/credentials/provider/ProviderGetCredentialRequest;)V

    return-void
.end method
