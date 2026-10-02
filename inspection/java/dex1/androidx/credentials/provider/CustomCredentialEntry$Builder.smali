.class public final Landroidx/credentials/provider/CustomCredentialEntry$Builder;
.super Ljava/lang/Object;
.source "CustomCredentialEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/CustomCredentialEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,907:1\n1#2:908\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u0012\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u000eJ\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0007J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010 \u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010!\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\"\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0007R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Landroidx/credentials/provider/CustomCredentialEntry$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "type",
        "",
        "title",
        "",
        "pendingIntent",
        "Landroid/app/PendingIntent;",
        "beginGetCredentialOption",
        "Landroidx/credentials/provider/BeginGetCredentialOption;",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetCredentialOption;)V",
        "autoSelectAllowed",
        "",
        "biometricPromptData",
        "Landroidx/credentials/provider/BiometricPromptData;",
        "entryGroupId",
        "icon",
        "Landroid/graphics/drawable/Icon;",
        "isDefaultIconPreferredAsSingleProvider",
        "lastUsedTime",
        "Ljava/time/Instant;",
        "subtitle",
        "typeDisplayName",
        "build",
        "Landroidx/credentials/provider/CustomCredentialEntry;",
        "setAutoSelectAllowed",
        "setBiometricPromptData",
        "setDefaultIconPreferredAsSingleProvider",
        "setEntryGroupId",
        "setIcon",
        "setLastUsedTime",
        "setSubtitle",
        "setTypeDisplayName",
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

.field private final beginGetCredentialOption:Landroidx/credentials/provider/BeginGetCredentialOption;

.field private biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

.field private final context:Landroid/content/Context;

.field private entryGroupId:Ljava/lang/CharSequence;

.field private icon:Landroid/graphics/drawable/Icon;

.field private isDefaultIconPreferredAsSingleProvider:Z

.field private lastUsedTime:Ljava/time/Instant;

.field private final pendingIntent:Landroid/app/PendingIntent;

.field private subtitle:Ljava/lang/CharSequence;

.field private final title:Ljava/lang/CharSequence;

.field private final type:Ljava/lang/String;

.field private typeDisplayName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetCredentialOption;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingIntent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beginGetCredentialOption"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    iput-object p1, p0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->context:Landroid/content/Context;

    .line 799
    iput-object p2, p0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->type:Ljava/lang/String;

    .line 800
    iput-object p3, p0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->title:Ljava/lang/CharSequence;

    .line 801
    iput-object p4, p0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->pendingIntent:Landroid/app/PendingIntent;

    .line 802
    iput-object p5, p0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->beginGetCredentialOption:Landroidx/credentials/provider/BeginGetCredentialOption;

    .line 809
    iput-object p3, p0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->entryGroupId:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/credentials/provider/CustomCredentialEntry;
    .registers 22

    move-object/from16 v0, p0

    .line 887
    iget-object v1, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->icon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_10

    .line 888
    iget-object v1, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->context:Landroid/content/Context;

    sget v2, Landroidx/credentials/R$drawable;->ic_other_sign_in:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->icon:Landroid/graphics/drawable/Icon;

    .line 890
    :cond_10
    new-instance v2, Landroidx/credentials/provider/CustomCredentialEntry;

    .line 891
    iget-object v3, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->type:Ljava/lang/String;

    .line 892
    iget-object v4, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->title:Ljava/lang/CharSequence;

    .line 893
    iget-object v5, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->pendingIntent:Landroid/app/PendingIntent;

    .line 894
    iget-boolean v6, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->autoSelectAllowed:Z

    .line 895
    iget-object v7, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->subtitle:Ljava/lang/CharSequence;

    .line 896
    iget-object v8, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->typeDisplayName:Ljava/lang/CharSequence;

    .line 897
    iget-object v9, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->icon:Landroid/graphics/drawable/Icon;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 898
    iget-object v10, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->lastUsedTime:Ljava/time/Instant;

    .line 899
    iget-object v11, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->beginGetCredentialOption:Landroidx/credentials/provider/BeginGetCredentialOption;

    .line 900
    iget-boolean v12, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->isDefaultIconPreferredAsSingleProvider:Z

    .line 901
    iget-object v13, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->entryGroupId:Ljava/lang/CharSequence;

    .line 902
    iget-object v15, v0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

    const v19, 0xe800

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 890
    invoke-direct/range {v2 .. v20}, Landroidx/credentials/provider/CustomCredentialEntry;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/time/Instant;Landroidx/credentials/provider/BeginGetCredentialOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public final setAutoSelectAllowed(Z)Landroidx/credentials/provider/CustomCredentialEntry$Builder;
    .registers 2

    .line 849
    iput-boolean p1, p0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->autoSelectAllowed:Z

    return-object p0
.end method

.method public final setBiometricPromptData(Landroidx/credentials/provider/BiometricPromptData;)Landroidx/credentials/provider/CustomCredentialEntry$Builder;
    .registers 2

    .line 842
    iput-object p1, p0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

    return-object p0
.end method

.method public final setDefaultIconPreferredAsSingleProvider(Z)Landroidx/credentials/provider/CustomCredentialEntry$Builder;
    .registers 2

    .line 881
    iput-boolean p1, p0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->isDefaultIconPreferredAsSingleProvider:Z

    return-object p0
.end method

.method public final setEntryGroupId(Ljava/lang/CharSequence;)Landroidx/credentials/provider/CustomCredentialEntry$Builder;
    .registers 3

    const-string v0, "entryGroupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 861
    iput-object p1, p0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->entryGroupId:Ljava/lang/CharSequence;

    return-object p0

    .line 860
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "entryGroupId must not be empty"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setIcon(Landroid/graphics/drawable/Icon;)Landroidx/credentials/provider/CustomCredentialEntry$Builder;
    .registers 3

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    iput-object p1, p0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->icon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public final setLastUsedTime(Ljava/time/Instant;)Landroidx/credentials/provider/CustomCredentialEntry$Builder;
    .registers 2

    .line 870
    iput-object p1, p0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->lastUsedTime:Ljava/time/Instant;

    return-object p0
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)Landroidx/credentials/provider/CustomCredentialEntry$Builder;
    .registers 2

    .line 815
    iput-object p1, p0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setTypeDisplayName(Ljava/lang/CharSequence;)Landroidx/credentials/provider/CustomCredentialEntry$Builder;
    .registers 2

    .line 821
    iput-object p1, p0, Landroidx/credentials/provider/CustomCredentialEntry$Builder;->typeDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method
