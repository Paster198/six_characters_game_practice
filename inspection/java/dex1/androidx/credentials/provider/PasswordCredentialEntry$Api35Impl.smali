.class final Landroidx/credentials/provider/PasswordCredentialEntry$Api35Impl;
.super Ljava/lang/Object;
.source "PasswordCredentialEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/PasswordCredentialEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api35Impl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPasswordCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordCredentialEntry.kt\nandroidx/credentials/provider/PasswordCredentialEntry$Api35Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,899:1\n1855#2,2:900\n*S KotlinDebug\n*F\n+ 1 PasswordCredentialEntry.kt\nandroidx/credentials/provider/PasswordCredentialEntry$Api35Impl\n*L\n383#1:900,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/credentials/provider/PasswordCredentialEntry$Api35Impl;",
        "",
        "()V",
        "addToSlice",
        "",
        "entry",
        "Landroidx/credentials/provider/PasswordCredentialEntry;",
        "sliceBuilder",
        "Landroid/app/slice/Slice$Builder;",
        "fromSlice",
        "slice",
        "Landroid/app/slice/Slice;",
        "toSlice",
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
.field public static final INSTANCE:Landroidx/credentials/provider/PasswordCredentialEntry$Api35Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/credentials/provider/PasswordCredentialEntry$Api35Impl;

    invoke-direct {v0}, Landroidx/credentials/provider/PasswordCredentialEntry$Api35Impl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/PasswordCredentialEntry$Api35Impl;->INSTANCE:Landroidx/credentials/provider/PasswordCredentialEntry$Api35Impl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/PasswordCredentialEntry;
    .registers 21
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "slice"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    invoke-static {v1}, Landroidx/credentials/provider/PasswordCredentialEntry$Api28Impl;->fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/PasswordCredentialEntry;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_f

    return-object v2

    .line 383
    :cond_f
    invoke-virtual {v1}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    const-string v3, "slice.items"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 900
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v2

    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/slice/SliceItem;

    .line 384
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_BIOMETRIC_PROMPT_DATA"

    invoke-virtual {v4, v5}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 385
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1f

    .line 390
    :cond_38
    :try_start_38
    invoke-virtual {v0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getUsername()Ljava/lang/CharSequence;

    move-result-object v5

    .line 391
    invoke-virtual {v0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    .line 392
    invoke-virtual {v0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getTypeDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 393
    invoke-virtual {v0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    .line 394
    invoke-virtual {v0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getLastUsedTime()Ljava/time/Instant;

    move-result-object v9

    .line 395
    invoke-virtual {v0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    .line 396
    invoke-virtual {v0}, Landroidx/credentials/provider/PasswordCredentialEntry;->isAutoSelectAllowed()Z

    move-result v11

    .line 398
    invoke-virtual {v0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getBeginGetCredentialOption()Landroidx/credentials/provider/BeginGetCredentialOption;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type androidx.credentials.provider.BeginGetPasswordOption"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v1

    check-cast v12, Landroidx/credentials/provider/BeginGetPasswordOption;

    .line 399
    invoke-virtual {v0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getEntryGroupId()Ljava/lang/CharSequence;

    move-result-object v14

    .line 401
    invoke-virtual {v0}, Landroidx/credentials/provider/PasswordCredentialEntry;->isDefaultIconPreferredAsSingleProvider()Z

    move-result v13

    .line 402
    invoke-virtual {v0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getAffiliatedDomain()Ljava/lang/CharSequence;

    move-result-object v15

    .line 404
    invoke-virtual {v0}, Landroidx/credentials/provider/PasswordCredentialEntry;->isAutoSelectAllowedFromOption()Z

    move-result v17

    .line 406
    # getter for: Landroidx/credentials/provider/PasswordCredentialEntry;->isDefaultIconFromSlice:Z
    invoke-static {v0}, Landroidx/credentials/provider/PasswordCredentialEntry;->access$isDefaultIconFromSlice$p(Landroidx/credentials/provider/PasswordCredentialEntry;)Z

    move-result v19

    if-eqz v3, :cond_7f

    .line 409
    sget-object v0, Landroidx/credentials/provider/BiometricPromptData;->Companion:Landroidx/credentials/provider/BiometricPromptData$Companion;

    invoke-virtual {v0, v3}, Landroidx/credentials/provider/BiometricPromptData$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BiometricPromptData;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_81

    :cond_7f
    move-object/from16 v16, v2

    .line 389
    :goto_81
    new-instance v4, Landroidx/credentials/provider/PasswordCredentialEntry;

    const/16 v18, 0x1

    invoke-direct/range {v4 .. v19}, Landroidx/credentials/provider/PasswordCredentialEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/time/Instant;Landroid/graphics/drawable/Icon;ZLandroidx/credentials/provider/BeginGetPasswordOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZZ)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_88} :catch_89

    return-object v4

    :catch_89
    move-exception v0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fromSlice failed with: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PasswordCredentialEntry"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static final toSlice(Landroidx/credentials/provider/PasswordCredentialEntry;)Landroid/app/slice/Slice;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "entry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getType()Ljava/lang/String;

    move-result-object v0

    .line 339
    new-instance v1, Landroid/app/slice/Slice$Builder;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v3, Landroid/app/slice/SliceSpec;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 340
    sget-object v0, Landroidx/credentials/provider/PasswordCredentialEntry$Api28Impl;->INSTANCE:Landroidx/credentials/provider/PasswordCredentialEntry$Api28Impl;

    invoke-virtual {v0, p0, v1}, Landroidx/credentials/provider/PasswordCredentialEntry$Api28Impl;->addToSlice(Landroidx/credentials/provider/PasswordCredentialEntry;Landroid/app/slice/Slice$Builder;)V

    .line 341
    sget-object v0, Landroidx/credentials/provider/PasswordCredentialEntry$Api35Impl;->INSTANCE:Landroidx/credentials/provider/PasswordCredentialEntry$Api35Impl;

    invoke-virtual {v0, p0, v1}, Landroidx/credentials/provider/PasswordCredentialEntry$Api35Impl;->addToSlice(Landroidx/credentials/provider/PasswordCredentialEntry;Landroid/app/slice/Slice$Builder;)V

    .line 342
    invoke-virtual {v1}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object p0

    const-string v0, "sliceBuilder.build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final addToSlice(Landroidx/credentials/provider/PasswordCredentialEntry;Landroid/app/slice/Slice$Builder;)V
    .registers 7

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sliceBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1}, Landroidx/credentials/provider/PasswordCredentialEntry;->getBiometricPromptData()Landroidx/credentials/provider/BiometricPromptData;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 352
    invoke-virtual {p1}, Landroidx/credentials/provider/BiometricPromptData;->getAllowedAuthenticators()I

    move-result v0

    .line 354
    const-string v1, "androidx.credentials.provider.credentialEntry.SLICE_HINT_ALLOWED_AUTHENTICATORS"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 351
    invoke-virtual {p2, v0, v2, v1}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 356
    invoke-virtual {p1}, Landroidx/credentials/provider/BiometricPromptData;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 358
    sget-object v0, Landroidx/credentials/provider/utils/CryptoObjectUtils;->INSTANCE:Landroidx/credentials/provider/utils/CryptoObjectUtils;

    invoke-virtual {p1}, Landroidx/credentials/provider/BiometricPromptData;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/credentials/provider/utils/CryptoObjectUtils;->getOperationHandle(Landroidx/biometric/BiometricPrompt$CryptoObject;)J

    move-result-wide v0

    .line 360
    const-string v3, "androidx.credentials.provider.credentialEntry.SLICE_HINT_CRYPTO_OP_ID"

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 357
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/app/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 363
    :cond_37
    sget-object v0, Landroidx/credentials/provider/BiometricPromptData;->Companion:Landroidx/credentials/provider/BiometricPromptData$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/BiometricPromptData$Companion;->toBundle(Landroidx/credentials/provider/BiometricPromptData;)Landroid/os/Bundle;

    move-result-object p1

    .line 367
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_BIOMETRIC_PROMPT_DATA"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 364
    invoke-virtual {p2, p1, v2, v0}, Landroid/app/slice/Slice$Builder;->addBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    :cond_46
    return-void
.end method
