.class final Landroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl;
.super Ljava/lang/Object;
.source "PublicKeyCredentialEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/PublicKeyCredentialEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api35Impl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublicKeyCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicKeyCredentialEntry.kt\nandroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,866:1\n1855#2,2:867\n*S KotlinDebug\n*F\n+ 1 PublicKeyCredentialEntry.kt\nandroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl\n*L\n370#1:867,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl;",
        "",
        "()V",
        "addToSlice",
        "",
        "entry",
        "Landroidx/credentials/provider/PublicKeyCredentialEntry;",
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
.field public static final INSTANCE:Landroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl;

    invoke-direct {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl;->INSTANCE:Landroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/PublicKeyCredentialEntry;
    .registers 21
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "slice"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-static {v1}, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;->fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/PublicKeyCredentialEntry;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_f

    return-object v2

    .line 370
    :cond_f
    invoke-virtual {v1}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    const-string v3, "slice.items"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 867
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

    .line 371
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_BIOMETRIC_PROMPT_DATA"

    invoke-virtual {v4, v5}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 372
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1f

    .line 377
    :cond_38
    :try_start_38
    invoke-virtual {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getUsername()Ljava/lang/CharSequence;

    move-result-object v5

    .line 378
    invoke-virtual {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    .line 379
    invoke-virtual {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getTypeDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 380
    invoke-virtual {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    .line 381
    invoke-virtual {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    .line 382
    invoke-virtual {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getLastUsedTime()Ljava/time/Instant;

    move-result-object v10

    .line 383
    invoke-virtual {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isAutoSelectAllowed()Z

    move-result v11

    .line 385
    invoke-virtual {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getBeginGetCredentialOption()Landroidx/credentials/provider/BeginGetCredentialOption;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type androidx.credentials.provider.BeginGetPublicKeyCredentialOption"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v1

    check-cast v12, Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;

    .line 387
    invoke-virtual {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getEntryGroupId()Ljava/lang/CharSequence;

    move-result-object v14

    .line 389
    invoke-virtual {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isDefaultIconPreferredAsSingleProvider()Z

    move-result v13

    .line 390
    invoke-virtual {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getAffiliatedDomain()Ljava/lang/CharSequence;

    move-result-object v15

    .line 392
    invoke-virtual {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isAutoSelectAllowedFromOption()Z

    move-result v17

    .line 394
    # getter for: Landroidx/credentials/provider/PublicKeyCredentialEntry;->isDefaultIconFromSlice:Z
    invoke-static {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->access$isDefaultIconFromSlice$p(Landroidx/credentials/provider/PublicKeyCredentialEntry;)Z

    move-result v19

    if-eqz v3, :cond_7f

    .line 397
    sget-object v0, Landroidx/credentials/provider/BiometricPromptData;->Companion:Landroidx/credentials/provider/BiometricPromptData$Companion;

    invoke-virtual {v0, v3}, Landroidx/credentials/provider/BiometricPromptData$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BiometricPromptData;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_81

    :cond_7f
    move-object/from16 v16, v2

    .line 376
    :goto_81
    new-instance v4, Landroidx/credentials/provider/PublicKeyCredentialEntry;

    const/16 v18, 0x1

    invoke-direct/range {v4 .. v19}, Landroidx/credentials/provider/PublicKeyCredentialEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/time/Instant;ZLandroidx/credentials/provider/BeginGetPublicKeyCredentialOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZZ)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_88} :catch_89

    return-object v4

    :catch_89
    move-exception v0

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fromSlice failed with: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PublicKeyCredEntry"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static final toSlice(Landroidx/credentials/provider/PublicKeyCredentialEntry;)Landroid/app/slice/Slice;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "entry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getType()Ljava/lang/String;

    move-result-object v0

    .line 326
    new-instance v1, Landroid/app/slice/Slice$Builder;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v3, Landroid/app/slice/SliceSpec;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 327
    sget-object v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;->INSTANCE:Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;

    invoke-virtual {v0, p0, v1}, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;->addToSlice(Landroidx/credentials/provider/PublicKeyCredentialEntry;Landroid/app/slice/Slice$Builder;)V

    .line 328
    sget-object v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl;->INSTANCE:Landroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl;

    invoke-virtual {v0, p0, v1}, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl;->addToSlice(Landroidx/credentials/provider/PublicKeyCredentialEntry;Landroid/app/slice/Slice$Builder;)V

    .line 329
    invoke-virtual {v1}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object p0

    const-string v0, "sliceBuilder.build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final addToSlice(Landroidx/credentials/provider/PublicKeyCredentialEntry;Landroid/app/slice/Slice$Builder;)V
    .registers 7

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sliceBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getBiometricPromptData()Landroidx/credentials/provider/BiometricPromptData;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 339
    invoke-virtual {p1}, Landroidx/credentials/provider/BiometricPromptData;->getAllowedAuthenticators()I

    move-result v0

    .line 341
    const-string v1, "androidx.credentials.provider.credentialEntry.SLICE_HINT_ALLOWED_AUTHENTICATORS"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 338
    invoke-virtual {p2, v0, v2, v1}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 343
    invoke-virtual {p1}, Landroidx/credentials/provider/BiometricPromptData;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 345
    sget-object v0, Landroidx/credentials/provider/utils/CryptoObjectUtils;->INSTANCE:Landroidx/credentials/provider/utils/CryptoObjectUtils;

    invoke-virtual {p1}, Landroidx/credentials/provider/BiometricPromptData;->getCryptoObject()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/credentials/provider/utils/CryptoObjectUtils;->getOperationHandle(Landroidx/biometric/BiometricPrompt$CryptoObject;)J

    move-result-wide v0

    .line 347
    const-string v3, "androidx.credentials.provider.credentialEntry.SLICE_HINT_CRYPTO_OP_ID"

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 344
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/app/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 350
    :cond_37
    sget-object v0, Landroidx/credentials/provider/BiometricPromptData;->Companion:Landroidx/credentials/provider/BiometricPromptData$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/BiometricPromptData$Companion;->toBundle(Landroidx/credentials/provider/BiometricPromptData;)Landroid/os/Bundle;

    move-result-object p1

    .line 354
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_BIOMETRIC_PROMPT_DATA"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 351
    invoke-virtual {p2, p1, v2, v0}, Landroid/app/slice/Slice$Builder;->addBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    :cond_46
    return-void
.end method
