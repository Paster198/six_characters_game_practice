.class public final Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;
.super Ljava/lang/Object;
.source "PrepareGetCredentialResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/PrepareGetCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TestBuilder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ \u0010\u000f\u001a\u00020\u00002\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u0008j\u0002`\nH\u0007J\u001a\u0010\u0011\u001a\u00020\u00002\u0010\u0010\u0010\u001a\u000c\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u0006H\u0007J\u001a\u0010\u0012\u001a\u00020\u00002\u0010\u0010\u0010\u001a\u000c\u0012\u0004\u0012\u00020\u00050\u0004j\u0002`\u000cH\u0007R\u001c\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004j\u0004\u0018\u0001`\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0008j\u0004\u0018\u0001`\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004j\u0004\u0018\u0001`\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;",
        "",
        "()V",
        "hasAuthResultsDelegate",
        "Lkotlin/Function0;",
        "",
        "Landroidx/credentials/HasAuthenticationResultsDelegate;",
        "hasCredentialResultsDelegate",
        "Lkotlin/Function1;",
        "",
        "Landroidx/credentials/HasCredentialResultsDelegate;",
        "hasRemoteResultsDelegate",
        "Landroidx/credentials/HasRemoteResultsDelegate;",
        "build",
        "Landroidx/credentials/PrepareGetCredentialResponse;",
        "setCredentialTypeDelegate",
        "handler",
        "setHasAuthResultsDelegate",
        "setHasRemoteResultsDelegate",
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
.field private hasAuthResultsDelegate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hasCredentialResultsDelegate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hasRemoteResultsDelegate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Landroidx/credentials/PrepareGetCredentialResponse;
    .registers 8

    .line 216
    new-instance v0, Landroidx/credentials/PrepareGetCredentialResponse;

    .line 218
    iget-object v2, p0, Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;->hasRemoteResultsDelegate:Lkotlin/jvm/functions/Function0;

    .line 219
    iget-object v3, p0, Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;->hasAuthResultsDelegate:Lkotlin/jvm/functions/Function0;

    .line 220
    iget-object v4, p0, Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;->hasCredentialResultsDelegate:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 216
    invoke-direct/range {v0 .. v6}, Landroidx/credentials/PrepareGetCredentialResponse;-><init>(Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final setCredentialTypeDelegate(Lkotlin/jvm/functions/Function1;)Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iput-object p1, p0, Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;->hasCredentialResultsDelegate:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final setHasAuthResultsDelegate(Lkotlin/jvm/functions/Function0;)Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;->hasAuthResultsDelegate:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final setHasRemoteResultsDelegate(Lkotlin/jvm/functions/Function0;)Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iput-object p1, p0, Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;->hasRemoteResultsDelegate:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method
