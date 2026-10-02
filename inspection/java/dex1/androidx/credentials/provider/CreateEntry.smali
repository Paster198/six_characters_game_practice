.class public final Landroidx/credentials/provider/CreateEntry;
.super Ljava/lang/Object;
.source "CreateEntry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/CreateEntry$Api28Impl;,
        Landroidx/credentials/provider/CreateEntry$Api34Impl;,
        Landroidx/credentials/provider/CreateEntry$Api35Impl;,
        Landroidx/credentials/provider/CreateEntry$Builder;,
        Landroidx/credentials/provider/CreateEntry$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,773:1\n1#2:774\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0017\u0008\u0007\u0018\u0000 -2\u00020\u0001:\u0005)*+,-Bi\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011Bu\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0002\u0010\u0014B_\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0002\u0010\u0018J\r\u0010%\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010&J\r\u0010\'\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010&J\r\u0010(\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010&R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001aR\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010 R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u00a8\u0006."
    }
    d2 = {
        "Landroidx/credentials/provider/CreateEntry;",
        "",
        "accountName",
        "",
        "pendingIntent",
        "Landroid/app/PendingIntent;",
        "description",
        "lastUsedTime",
        "Ljava/time/Instant;",
        "icon",
        "Landroid/graphics/drawable/Icon;",
        "passwordCredentialCount",
        "",
        "publicKeyCredentialCount",
        "totalCredentialCount",
        "isAutoSelectAllowed",
        "",
        "(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V",
        "biometricPromptData",
        "Landroidx/credentials/provider/BiometricPromptData;",
        "(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLandroidx/credentials/provider/BiometricPromptData;)V",
        "credentialCountInformationMap",
        "",
        "",
        "(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/time/Instant;Ljava/util/Map;ZLandroidx/credentials/provider/BiometricPromptData;)V",
        "getAccountName",
        "()Ljava/lang/CharSequence;",
        "getBiometricPromptData",
        "()Landroidx/credentials/provider/BiometricPromptData;",
        "getDescription",
        "getIcon",
        "()Landroid/graphics/drawable/Icon;",
        "()Z",
        "getLastUsedTime",
        "()Ljava/time/Instant;",
        "getPendingIntent",
        "()Landroid/app/PendingIntent;",
        "getPasswordCredentialCount",
        "()Ljava/lang/Integer;",
        "getPublicKeyCredentialCount",
        "getTotalCredentialCount",
        "Api28Impl",
        "Api34Impl",
        "Api35Impl",
        "Builder",
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
.field private static final AUTO_SELECT_FALSE_STRING:Ljava/lang/String; = "false"

.field private static final AUTO_SELECT_TRUE_STRING:Ljava/lang/String; = "true"

.field public static final Companion:Landroidx/credentials/provider/CreateEntry$Companion;

.field private static final DESCRIPTION_MAX_CHAR_LIMIT:I = 0x12c

.field private static final EXTRA_CREATE_ACCOUNT_NAME_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.ACCOUNT_NAME_"

.field private static final EXTRA_CREATE_CREDENTIAL_COUNT_INFO_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_COUNT_INFO_"

.field private static final EXTRA_CREATE_DESCRIPTION_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.DESCRIPTION_"

.field private static final EXTRA_CREATE_ENTRY_IS_AUTO_SELECT_ALLOWED_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.IS_AUTO_SELECT_ALLOWED_"

.field private static final EXTRA_CREATE_ENTRY_LAST_USED_TIME_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.LAST_USED_TIME_"

.field private static final EXTRA_CREATE_ENTRY_PENDING_INTENT_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.PENDING_INTENT_"

.field private static final EXTRA_CREATE_ENTRY_SIZE:Ljava/lang/String; = "androidx.credentials.provider.extra.CREATE_ENTRY_SIZE"

.field private static final EXTRA_CREATE_TYPE_ICON_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.ICON_"

.field private static final REVISION_ID:I = 0x1

.field private static final SLICE_HINT_ACCOUNT_NAME:Ljava/lang/String; = "androidx.credentials.provider.createEntry.SLICE_HINT_USER_PROVIDER_ACCOUNT_NAME"

.field private static final SLICE_HINT_ALLOWED_AUTHENTICATORS:Ljava/lang/String; = "androidx.credentials.provider.createEntry.SLICE_HINT_ALLOWED_AUTHENTICATORS"

.field private static final SLICE_HINT_AUTO_SELECT_ALLOWED:Ljava/lang/String; = "androidx.credentials.provider.createEntry.SLICE_HINT_AUTO_SELECT_ALLOWED"

.field private static final SLICE_HINT_BIOMETRIC_PROMPT_DATA:Ljava/lang/String; = "androidx.credentials.provider.createEntry.SLICE_HINT_BIOMETRIC_PROMPT_DATA"

.field private static final SLICE_HINT_CREDENTIAL_COUNT_INFORMATION:Ljava/lang/String; = "androidx.credentials.provider.createEntry.SLICE_HINT_CREDENTIAL_COUNT_INFORMATION"

.field private static final SLICE_HINT_CRYPTO_OP_ID:Ljava/lang/String; = "androidx.credentials.provider.createEntry.SLICE_HINT_CRYPTO_OP_ID"

.field private static final SLICE_HINT_ICON:Ljava/lang/String; = "androidx.credentials.provider.createEntry.SLICE_HINT_PROFILE_ICON"

.field private static final SLICE_HINT_LAST_USED_TIME_MILLIS:Ljava/lang/String; = "androidx.credentials.provider.createEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"

.field private static final SLICE_HINT_NOTE:Ljava/lang/String; = "androidx.credentials.provider.createEntry.SLICE_HINT_NOTE"

.field private static final SLICE_HINT_PENDING_INTENT:Ljava/lang/String; = "androidx.credentials.provider.createEntry.SLICE_HINT_PENDING_INTENT"

.field private static final SLICE_SPEC_TYPE:Ljava/lang/String; = "CreateEntry"

.field private static final TAG:Ljava/lang/String; = "CreateEntry"

.field public static final TYPE_TOTAL_CREDENTIAL:Ljava/lang/String; = "TOTAL_CREDENTIAL_COUNT_TYPE"


# instance fields
.field private final accountName:Ljava/lang/CharSequence;

.field private final biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

.field private final credentialCountInformationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final description:Ljava/lang/CharSequence;

.field private final icon:Landroid/graphics/drawable/Icon;

.field private final isAutoSelectAllowed:Z

.field private final lastUsedTime:Ljava/time/Instant;

.field private final pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/provider/CreateEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/CreateEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/CreateEntry;->Companion:Landroidx/credentials/provider/CreateEntry$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/time/Instant;Ljava/util/Map;ZLandroidx/credentials/provider/BiometricPromptData;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/app/PendingIntent;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/CharSequence;",
            "Ljava/time/Instant;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z",
            "Landroidx/credentials/provider/BiometricPromptData;",
            ")V"
        }
    .end annotation

    const-string v0, "accountName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentialCountInformationMap"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroidx/credentials/provider/CreateEntry;->accountName:Ljava/lang/CharSequence;

    .line 71
    iput-object p2, p0, Landroidx/credentials/provider/CreateEntry;->pendingIntent:Landroid/app/PendingIntent;

    .line 72
    iput-object p3, p0, Landroidx/credentials/provider/CreateEntry;->icon:Landroid/graphics/drawable/Icon;

    .line 73
    iput-object p4, p0, Landroidx/credentials/provider/CreateEntry;->description:Ljava/lang/CharSequence;

    .line 74
    iput-object p5, p0, Landroidx/credentials/provider/CreateEntry;->lastUsedTime:Ljava/time/Instant;

    .line 75
    iput-object p6, p0, Landroidx/credentials/provider/CreateEntry;->credentialCountInformationMap:Ljava/util/Map;

    .line 76
    iput-boolean p7, p0, Landroidx/credentials/provider/CreateEntry;->isAutoSelectAllowed:Z

    .line 77
    iput-object p8, p0, Landroidx/credentials/provider/CreateEntry;->biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

    .line 190
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_40

    if-eqz p4, :cond_3f

    .line 192
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x12c

    if-gt p1, p2, :cond_33

    return-void

    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Description must follow a limit of 300 characters."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    return-void

    .line 190
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountName must not be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/time/Instant;Ljava/util/Map;ZLandroidx/credentials/provider/BiometricPromptData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 21

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_b

    :cond_9
    move-object/from16 v9, p8

    :goto_b
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 69
    invoke-direct/range {v1 .. v9}, Landroidx/credentials/provider/CreateEntry;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/time/Instant;Ljava/util/Map;ZLandroidx/credentials/provider/BiometricPromptData;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V
    .registers 22

    const-string v0, "accountName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 124
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "android.credentials.TYPE_PASSWORD_CREDENTIAL"

    move-object/from16 v4, p6

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 125
    const-string v1, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    move-object/from16 v4, p7

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 126
    const-string v1, "TOTAL_CREDENTIAL_COUNT_TYPE"

    move-object/from16 v4, p8

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 123
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    const/16 v10, 0x80

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v4, p5

    move/from16 v8, p9

    .line 116
    invoke-direct/range {v1 .. v11}, Landroidx/credentials/provider/CreateEntry;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/time/Instant;Ljava/util/Map;ZLandroidx/credentials/provider/BiometricPromptData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p11, p10, 0x4

    const/4 v0, 0x0

    if-eqz p11, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_b

    move-object p4, v0

    :cond_b
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_10

    move-object p5, v0

    :cond_10
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_15

    move-object p6, v0

    :cond_15
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_1a

    move-object p7, v0

    :cond_1a
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_1f

    move-object p8, v0

    :cond_1f
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_24

    const/4 p9, 0x0

    :cond_24
    move p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 106
    invoke-direct/range {p1 .. p10}, Landroidx/credentials/provider/CreateEntry;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLandroidx/credentials/provider/BiometricPromptData;)V
    .registers 21

    const-string v0, "accountName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 181
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "android.credentials.TYPE_PASSWORD_CREDENTIAL"

    move-object/from16 v4, p6

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 182
    const-string v1, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    move-object/from16 v4, p7

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 183
    const-string v1, "TOTAL_CREDENTIAL_COUNT_TYPE"

    move-object/from16 v4, p8

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 180
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v4, p5

    move/from16 v8, p9

    move-object/from16 v9, p10

    .line 173
    invoke-direct/range {v1 .. v9}, Landroidx/credentials/provider/CreateEntry;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/time/Instant;Ljava/util/Map;ZLandroidx/credentials/provider/BiometricPromptData;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLandroidx/credentials/provider/BiometricPromptData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p12, p11, 0x4

    const/4 v0, 0x0

    if-eqz p12, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_b

    move-object p4, v0

    :cond_b
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_10

    move-object p5, v0

    :cond_10
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_15

    move-object p6, v0

    :cond_15
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_1a

    move-object p7, v0

    :cond_1a
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_1f

    move-object p8, v0

    :cond_1f
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_24

    const/4 p9, 0x0

    :cond_24
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_2a

    move-object p11, v0

    goto :goto_2b

    :cond_2a
    move-object p11, p10

    :goto_2b
    move p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 162
    invoke-direct/range {p1 .. p11}, Landroidx/credentials/provider/CreateEntry;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLandroidx/credentials/provider/BiometricPromptData;)V

    return-void
.end method

.method public static final synthetic access$getCredentialCountInformationMap$p(Landroidx/credentials/provider/CreateEntry;)Ljava/util/Map;
    .registers 1

    .line 67
    iget-object p0, p0, Landroidx/credentials/provider/CreateEntry;->credentialCountInformationMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final convertBundleToCredentialCountInfo$credentials_release(Landroid/os/Bundle;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/CreateEntry;->Companion:Landroidx/credentials/provider/CreateEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CreateEntry$Companion;->convertBundleToCredentialCountInfo$credentials_release(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final convertCredentialCountInfoToBundle$credentials_release(Ljava/util/Map;)Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/CreateEntry;->Companion:Landroidx/credentials/provider/CreateEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CreateEntry$Companion;->convertCredentialCountInfoToBundle$credentials_release(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final fromCreateEntry(Landroid/service/credentials/CreateEntry;)Landroidx/credentials/provider/CreateEntry;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/CreateEntry;->Companion:Landroidx/credentials/provider/CreateEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CreateEntry$Companion;->fromCreateEntry(Landroid/service/credentials/CreateEntry;)Landroidx/credentials/provider/CreateEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CreateEntry;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/CreateEntry;->Companion:Landroidx/credentials/provider/CreateEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CreateEntry$Companion;->fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CreateEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final toSlice(Landroidx/credentials/provider/CreateEntry;)Landroid/app/slice/Slice;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/CreateEntry;->Companion:Landroidx/credentials/provider/CreateEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CreateEntry$Companion;->toSlice(Landroidx/credentials/provider/CreateEntry;)Landroid/app/slice/Slice;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAccountName()Ljava/lang/CharSequence;
    .registers 2

    .line 70
    iget-object v0, p0, Landroidx/credentials/provider/CreateEntry;->accountName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getBiometricPromptData()Landroidx/credentials/provider/BiometricPromptData;
    .registers 2

    .line 77
    iget-object v0, p0, Landroidx/credentials/provider/CreateEntry;->biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 73
    iget-object v0, p0, Landroidx/credentials/provider/CreateEntry;->description:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 72
    iget-object v0, p0, Landroidx/credentials/provider/CreateEntry;->icon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public final getLastUsedTime()Ljava/time/Instant;
    .registers 2

    .line 74
    iget-object v0, p0, Landroidx/credentials/provider/CreateEntry;->lastUsedTime:Ljava/time/Instant;

    return-object v0
.end method

.method public final getPasswordCredentialCount()Ljava/lang/Integer;
    .registers 3

    .line 201
    iget-object v0, p0, Landroidx/credentials/provider/CreateEntry;->credentialCountInformationMap:Ljava/util/Map;

    const-string v1, "android.credentials.TYPE_PASSWORD_CREDENTIAL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 71
    iget-object v0, p0, Landroidx/credentials/provider/CreateEntry;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final getPublicKeyCredentialCount()Ljava/lang/Integer;
    .registers 3

    .line 207
    iget-object v0, p0, Landroidx/credentials/provider/CreateEntry;->credentialCountInformationMap:Ljava/util/Map;

    const-string v1, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTotalCredentialCount()Ljava/lang/Integer;
    .registers 3

    .line 218
    iget-object v0, p0, Landroidx/credentials/provider/CreateEntry;->credentialCountInformationMap:Ljava/util/Map;

    const-string v1, "TOTAL_CREDENTIAL_COUNT_TYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final isAutoSelectAllowed()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Landroidx/credentials/provider/CreateEntry;->isAutoSelectAllowed:Z

    return v0
.end method
