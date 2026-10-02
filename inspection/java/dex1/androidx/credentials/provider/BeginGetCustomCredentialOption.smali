.class public Landroidx/credentials/provider/BeginGetCustomCredentialOption;
.super Landroidx/credentials/provider/BeginGetCredentialOption;
.source "BeginGetCustomCredentialOption.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/BeginGetCustomCredentialOption$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBeginGetCustomCredentialOption.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeginGetCustomCredentialOption.kt\nandroidx/credentials/provider/BeginGetCustomCredentialOption\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/credentials/provider/BeginGetCustomCredentialOption;",
        "Landroidx/credentials/provider/BeginGetCredentialOption;",
        "id",
        "",
        "type",
        "candidateQueryData",
        "Landroid/os/Bundle;",
        "(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V",
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
.field public static final Companion:Landroidx/credentials/provider/BeginGetCustomCredentialOption$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/provider/BeginGetCustomCredentialOption$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/BeginGetCustomCredentialOption$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/BeginGetCustomCredentialOption;->Companion:Landroidx/credentials/provider/BeginGetCustomCredentialOption$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "candidateQueryData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/credentials/provider/BeginGetCredentialOption;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 43
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2f

    .line 44
    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_23

    return-void

    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type should not be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id should not be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final createFrom$credentials_release(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/provider/BeginGetCustomCredentialOption;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/BeginGetCustomCredentialOption;->Companion:Landroidx/credentials/provider/BeginGetCustomCredentialOption$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/credentials/provider/BeginGetCustomCredentialOption$Companion;->createFrom$credentials_release(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/provider/BeginGetCustomCredentialOption;

    move-result-object p0

    return-object p0
.end method

.method public static final createFromEntrySlice$credentials_release(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/provider/BeginGetCustomCredentialOption;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/BeginGetCustomCredentialOption;->Companion:Landroidx/credentials/provider/BeginGetCustomCredentialOption$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/credentials/provider/BeginGetCustomCredentialOption$Companion;->createFromEntrySlice$credentials_release(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/provider/BeginGetCustomCredentialOption;

    move-result-object p0

    return-object p0
.end method
