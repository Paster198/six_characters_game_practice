.class final Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;
.super Ljava/lang/Object;
.source "PublicKeyCredentialEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/PublicKeyCredentialEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api28Impl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublicKeyCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicKeyCredentialEntry.kt\nandroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,866:1\n1855#2,2:867\n*S KotlinDebug\n*F\n+ 1 PublicKeyCredentialEntry.kt\nandroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl\n*L\n531#1:867,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;",
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
        "isDefaultIcon",
        "",
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
.field public static final INSTANCE:Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;

    invoke-direct {v0}, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;->INSTANCE:Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/PublicKeyCredentialEntry;
    .registers 22
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "slice"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v1}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    const-string v1, "slice.items"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 867
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v13, v9

    move-object v14, v13

    move v10, v2

    move v12, v10

    move/from16 v16, v12

    move/from16 v18, v16

    move-object v2, v14

    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/slice/SliceItem;

    .line 532
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID"

    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_40

    .line 533
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_27

    .line 534
    :cond_40
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEDUPLICATION_ID"

    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4d

    .line 535
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    goto :goto_27

    .line 536
    :cond_4d
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_IS_DEFAULT_ICON_PREFERRED"

    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    const-string v15, "true"

    const/16 v17, 0x1

    if-eqz v11, :cond_66

    .line 537
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 538
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    move/from16 v12, v17

    goto :goto_27

    .line 541
    :cond_66
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AFFILIATED_DOMAIN"

    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_73

    .line 542
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    goto :goto_27

    .line 543
    :cond_73
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME"

    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_80

    .line 544
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_27

    .line 545
    :cond_80
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME"

    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8d

    .line 546
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_27

    .line 547
    :cond_8d
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME"

    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9a

    .line 548
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_27

    .line 549
    :cond_9a
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON"

    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a7

    .line 550
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    goto :goto_27

    .line 551
    :cond_a7
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT"

    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b5

    .line 552
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v7

    goto/16 :goto_27

    .line 553
    :cond_b5
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"

    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c7

    .line 554
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getLong()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v9

    goto/16 :goto_27

    .line 555
    :cond_c7
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED"

    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_dd

    .line 556
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 557
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    move/from16 v10, v17

    goto/16 :goto_27

    .line 560
    :cond_dd
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION"

    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e9

    move/from16 v16, v17

    goto/16 :goto_27

    .line 562
    :cond_e9
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID"

    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    move/from16 v18, v17

    goto/16 :goto_27

    .line 568
    :cond_f5
    :try_start_f5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 570
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 571
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 572
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 576
    sget-object v0, Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;->Companion:Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption$Companion;

    .line 577
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 578
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 576
    invoke-virtual {v0, v3, v2}, Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption$Companion;->createFromEntrySlice$credentials_release(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;

    move-result-object v11

    .line 567
    new-instance v3, Landroidx/credentials/provider/PublicKeyCredentialEntry;

    const/16 v19, 0x800

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v3 .. v20}, Landroidx/credentials/provider/PublicKeyCredentialEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/time/Instant;ZLandroidx/credentials/provider/BeginGetPublicKeyCredentialOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_11f} :catch_120

    return-object v3

    :catch_120
    move-exception v0

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fromSlice failed with: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PublicKeyCredEntry"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static final isDefaultIcon(Landroidx/credentials/provider/PublicKeyCredentialEntry;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "entry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    # getter for: Landroidx/credentials/provider/PublicKeyCredentialEntry;->isCreatedFromSlice:Z
    invoke-static {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->access$isCreatedFromSlice$p(Landroidx/credentials/provider/PublicKeyCredentialEntry;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 413
    # getter for: Landroidx/credentials/provider/PublicKeyCredentialEntry;->isDefaultIconFromSlice:Z
    invoke-static {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->access$isDefaultIconFromSlice$p(Landroidx/credentials/provider/PublicKeyCredentialEntry;)Z

    move-result p0

    return p0

    .line 415
    :cond_10
    invoke-virtual {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 416
    invoke-virtual {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p0

    sget v0, Landroidx/credentials/R$drawable;->ic_passkey:I

    if-ne p0, v0, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public static final toSlice(Landroidx/credentials/provider/PublicKeyCredentialEntry;)Landroid/app/slice/Slice;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "entry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getType()Ljava/lang/String;

    move-result-object v0

    .line 423
    new-instance v1, Landroid/app/slice/Slice$Builder;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v3, Landroid/app/slice/SliceSpec;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 424
    sget-object v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;->INSTANCE:Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;

    invoke-virtual {v0, p0, v1}, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;->addToSlice(Landroidx/credentials/provider/PublicKeyCredentialEntry;Landroid/app/slice/Slice$Builder;)V

    .line 425
    invoke-virtual {v1}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object p0

    const-string v0, "sliceBuilder.build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final addToSlice(Landroidx/credentials/provider/PublicKeyCredentialEntry;Landroid/app/slice/Slice$Builder;)V
    .registers 13

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sliceBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getBeginGetCredentialOption()Landroidx/credentials/provider/BeginGetCredentialOption;

    move-result-object v0

    .line 431
    invoke-virtual {p1}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getEntryGroupId()Ljava/lang/CharSequence;

    move-result-object v1

    .line 433
    invoke-virtual {p1}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isDefaultIconPreferredAsSingleProvider()Z

    move-result v2

    .line 434
    invoke-virtual {p1}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getAffiliatedDomain()Ljava/lang/CharSequence;

    move-result-object v3

    .line 436
    const-string v4, "true"

    const-string v5, "false"

    if-eqz v2, :cond_22

    move-object v2, v4

    goto :goto_23

    :cond_22
    move-object v2, v5

    .line 443
    :goto_23
    invoke-virtual {v0}, Landroidx/credentials/provider/BeginGetCredentialOption;->getId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 445
    const-string v6, "androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID"

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    .line 442
    invoke-virtual {p2, v0, v7, v6}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 447
    const-string v6, "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEDUPLICATION_ID"

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v1, v7, v6}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 449
    check-cast v2, Ljava/lang/CharSequence;

    .line 451
    const-string v1, "androidx.credentials.provider.credentialEntry.SLICE_HINT_IS_DEFAULT_ICON_PREFERRED"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 448
    invoke-virtual {v0, v2, v7, v1}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 456
    const-string v1, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AFFILIATED_DOMAIN"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 453
    invoke-virtual {v0, v3, v7, v1}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 458
    invoke-virtual {p1}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getUsername()Ljava/lang/CharSequence;

    move-result-object v0

    .line 459
    invoke-virtual {p1}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 460
    invoke-virtual {p1}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 461
    invoke-virtual {p1}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getTypeDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 462
    invoke-virtual {p1}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getLastUsedTime()Ljava/time/Instant;

    move-result-object v6

    .line 463
    invoke-virtual {p1}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    .line 464
    invoke-virtual {p1}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isAutoSelectAllowed()Z

    move-result v9

    if-eqz v9, :cond_72

    goto :goto_73

    :cond_72
    move-object v4, v5

    .line 472
    :goto_73
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME"

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2, v3, v7, v5}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v3

    .line 473
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME"

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v0, v7, v5}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 474
    const-string v3, "androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME"

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v7, v3}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 475
    check-cast v4, Ljava/lang/CharSequence;

    const-string v1, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v4, v7, v1}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 476
    const-string v1, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v8, v7, v1}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    const/4 v0, 0x1

    .line 478
    :try_start_a7
    invoke-virtual {p1}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->hasDefaultIcon()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 482
    const-string v1, "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 479
    invoke-virtual {p2, v0, v7, v1}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;
    :try_end_b6
    .catch Ljava/lang/IllegalStateException; {:try_start_a7 .. :try_end_b6} :catch_b6

    .line 486
    :catch_b6
    :cond_b6
    invoke-virtual {p1}, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isAutoSelectAllowedFromOption()Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 490
    const-string p1, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION"

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 487
    invoke-virtual {p2, v0, v7, p1}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    :cond_c5
    if-eqz v6, :cond_d4

    .line 495
    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 497
    const-string p1, "androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 494
    invoke-virtual {p2, v0, v1, v7, p1}, Landroid/app/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 502
    :cond_d4
    new-instance p1, Landroid/app/slice/Slice$Builder;

    invoke-direct {p1, p2}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    .line 503
    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object p1

    .line 504
    invoke-virtual {p1}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object p1

    .line 500
    invoke-virtual {p2, v2, p1, v7}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    return-void
.end method
