.class final synthetic Landroidx/credentials/PrepareGetCredentialResponse$Builder$setFrameworkResponse$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "PrepareGetCredentialResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/PrepareGetCredentialResponse$Builder;->setFrameworkResponse(Landroid/credentials/PrepareGetCredentialResponse;)Landroidx/credentials/PrepareGetCredentialResponse$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 9

    const-class v3, Landroidx/credentials/PrepareGetCredentialResponse$Builder;

    const-string v5, "hasCredentialType(Ljava/lang/String;)Z"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "hasCredentialType"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse$Builder$setFrameworkResponse$1;->receiver:Ljava/lang/Object;

    check-cast v0, Landroidx/credentials/PrepareGetCredentialResponse$Builder;

    # invokes: Landroidx/credentials/PrepareGetCredentialResponse$Builder;->hasCredentialType(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Landroidx/credentials/PrepareGetCredentialResponse$Builder;->access$hasCredentialType(Landroidx/credentials/PrepareGetCredentialResponse$Builder;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 146
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/credentials/PrepareGetCredentialResponse$Builder$setFrameworkResponse$1;->invoke(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
