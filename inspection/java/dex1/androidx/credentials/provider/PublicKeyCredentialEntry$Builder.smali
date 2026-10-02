.class public final Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;
.super Ljava/lang/Object;
.source "PublicKeyCredentialEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/PublicKeyCredentialEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u0012\u0010\u0018\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000cJ\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "username",
        "",
        "pendingIntent",
        "Landroid/app/PendingIntent;",
        "beginGetPublicKeyCredentialOption",
        "Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;",
        "(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;)V",
        "autoSelectAllowed",
        "",
        "biometricPromptData",
        "Landroidx/credentials/provider/BiometricPromptData;",
        "displayName",
        "icon",
        "Landroid/graphics/drawable/Icon;",
        "isDefaultIconPreferredAsSingleProvider",
        "lastUsedTime",
        "Ljava/time/Instant;",
        "build",
        "Landroidx/credentials/provider/PublicKeyCredentialEntry;",
        "setAutoSelectAllowed",
        "setBiometricPromptData",
        "setDefaultIconPreferredAsSingleProvider",
        "setDisplayName",
        "setIcon",
        "setLastUsedTime",
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
.field private autoSelectAllowed:Z

.field private final beginGetPublicKeyCredentialOption:Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;

.field private biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

.field private final context:Landroid/content/Context;

.field private displayName:Ljava/lang/CharSequence;

.field private icon:Landroid/graphics/drawable/Icon;

.field private isDefaultIconPreferredAsSingleProvider:Z

.field private lastUsedTime:Ljava/time/Instant;

.field private final pendingIntent:Landroid/app/PendingIntent;

.field private final username:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "username"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingIntent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beginGetPublicKeyCredentialOption"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput-object p1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->context:Landroid/content/Context;

    .line 781
    iput-object p2, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->username:Ljava/lang/CharSequence;

    .line 782
    iput-object p3, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->pendingIntent:Landroid/app/PendingIntent;

    .line 783
    iput-object p4, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->beginGetPublicKeyCredentialOption:Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/credentials/provider/PublicKeyCredentialEntry;
    .registers 22

    move-object/from16 v0, p0

    .line 846
    iget-object v1, v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->icon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_10

    .line 847
    iget-object v1, v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->context:Landroid/content/Context;

    sget v2, Landroidx/credentials/R$drawable;->ic_passkey:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->icon:Landroid/graphics/drawable/Icon;

    .line 850
    :cond_10
    iget-object v1, v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->context:Landroid/content/Context;

    sget v2, Landroidx/credentials/R$string;->androidx_credentials_TYPE_PUBLIC_KEY_CREDENTIAL:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026PE_PUBLIC_KEY_CREDENTIAL)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    new-instance v3, Landroidx/credentials/provider/PublicKeyCredentialEntry;

    .line 852
    iget-object v4, v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->username:Ljava/lang/CharSequence;

    .line 853
    iget-object v5, v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->displayName:Ljava/lang/CharSequence;

    .line 854
    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    .line 855
    iget-object v7, v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->pendingIntent:Landroid/app/PendingIntent;

    .line 856
    iget-object v8, v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->icon:Landroid/graphics/drawable/Icon;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 857
    iget-object v9, v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->lastUsedTime:Ljava/time/Instant;

    .line 858
    iget-boolean v10, v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->autoSelectAllowed:Z

    .line 859
    iget-object v11, v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->beginGetPublicKeyCredentialOption:Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;

    .line 860
    iget-boolean v12, v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->isDefaultIconPreferredAsSingleProvider:Z

    .line 861
    iget-object v15, v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

    const/16 v19, 0x7600

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 851
    invoke-direct/range {v3 .. v20}, Landroidx/credentials/provider/PublicKeyCredentialEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/time/Instant;ZLandroidx/credentials/provider/BeginGetPublicKeyCredentialOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method public final setAutoSelectAllowed(Z)Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;
    .registers 2

    .line 819
    iput-boolean p1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->autoSelectAllowed:Z

    return-object p0
.end method

.method public final setBiometricPromptData(Landroidx/credentials/provider/BiometricPromptData;)Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;
    .registers 2

    .line 812
    iput-object p1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

    return-object p0
.end method

.method public final setDefaultIconPreferredAsSingleProvider(Z)Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;
    .registers 2

    .line 840
    iput-boolean p1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->isDefaultIconPreferredAsSingleProvider:Z

    return-object p0
.end method

.method public final setDisplayName(Ljava/lang/CharSequence;)Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;
    .registers 2

    .line 794
    iput-object p1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->displayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Icon;)Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;
    .registers 3

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    iput-object p1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->icon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public final setLastUsedTime(Ljava/time/Instant;)Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;
    .registers 2

    .line 829
    iput-object p1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->lastUsedTime:Ljava/time/Instant;

    return-object p0
.end method
