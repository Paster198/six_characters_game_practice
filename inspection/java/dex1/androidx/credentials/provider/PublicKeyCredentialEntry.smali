.class public final Landroidx/credentials/provider/PublicKeyCredentialEntry;
.super Landroidx/credentials/provider/CredentialEntry;
.source "PublicKeyCredentialEntry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;,
        Landroidx/credentials/provider/PublicKeyCredentialEntry$Api34Impl;,
        Landroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl;,
        Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;,
        Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublicKeyCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicKeyCredentialEntry.kt\nandroidx/credentials/provider/PublicKeyCredentialEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,866:1\n1#2:867\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001c\u0008\u0007\u0018\u0000 /2\u00020\u0001:\u0005+,-./B]\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0012Bi\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010\u0015BS\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0016B\u0095\u0001\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0017\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u001dR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020\u00108G\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010!R\u0011\u0010$\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010!R\u000e\u0010\u001b\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0011\u0010\u0017\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001f\u00a8\u00060"
    }
    d2 = {
        "Landroidx/credentials/provider/PublicKeyCredentialEntry;",
        "Landroidx/credentials/provider/CredentialEntry;",
        "context",
        "Landroid/content/Context;",
        "username",
        "",
        "pendingIntent",
        "Landroid/app/PendingIntent;",
        "beginGetPublicKeyCredentialOption",
        "Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;",
        "displayName",
        "lastUsedTime",
        "Ljava/time/Instant;",
        "icon",
        "Landroid/graphics/drawable/Icon;",
        "isAutoSelectAllowed",
        "",
        "isDefaultIconPreferredAsSingleProvider",
        "(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;ZZ)V",
        "biometricPromptData",
        "Landroidx/credentials/provider/BiometricPromptData;",
        "(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;ZZLandroidx/credentials/provider/BiometricPromptData;)V",
        "(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Z)V",
        "typeDisplayName",
        "entryGroupId",
        "affiliatedDomain",
        "autoSelectAllowedFromOption",
        "isCreatedFromSlice",
        "isDefaultIconFromSlice",
        "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/time/Instant;ZLandroidx/credentials/provider/BeginGetPublicKeyCredentialOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZZ)V",
        "getDisplayName",
        "()Ljava/lang/CharSequence;",
        "hasDefaultIcon",
        "()Z",
        "getIcon",
        "()Landroid/graphics/drawable/Icon;",
        "isAutoSelectAllowedFromOption",
        "getLastUsedTime",
        "()Ljava/time/Instant;",
        "getPendingIntent",
        "()Landroid/app/PendingIntent;",
        "getTypeDisplayName",
        "getUsername",
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
.field public static final Companion:Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;

.field private static final TAG:Ljava/lang/String; = "PublicKeyCredEntry"


# instance fields
.field private final displayName:Ljava/lang/CharSequence;

.field private final icon:Landroid/graphics/drawable/Icon;

.field private final isAutoSelectAllowed:Z

.field private final isAutoSelectAllowedFromOption:Z

.field private final isCreatedFromSlice:Z

.field private final isDefaultIconFromSlice:Z

.field private final lastUsedTime:Ljava/time/Instant;

.field private final pendingIntent:Landroid/app/PendingIntent;

.field private final typeDisplayName:Ljava/lang/CharSequence;

.field private final username:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->Companion:Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Z)V
    .registers 29
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Use the constructor with all parameters dependent on API levels"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "PublicKeyCredentialEntry(context, username, pendingIntent,beginGetPublicKeyCredentialOption, displayName, lastUsedTime, icon, isAutoSelectAllowed, isDefaultIconPreferredAsSingleProvider, biometricPromptData)"
            imports = {}
        .end subannotation
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "username"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pendingIntent"

    move-object/from16 v6, p3

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "beginGetPublicKeyCredentialOption"

    move-object/from16 v10, p4

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "icon"

    move-object/from16 v7, p7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    sget v1, Landroidx/credentials/R$string;->androidx_credentials_TYPE_PUBLIC_KEY_CREDENTIAL:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026PE_PUBLIC_KEY_CREDENTIAL)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v18, 0x7e00

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p5

    move-object/from16 v8, p6

    move/from16 v9, p8

    .line 296
    invoke-direct/range {v2 .. v19}, Landroidx/credentials/provider/PublicKeyCredentialEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/time/Instant;ZLandroidx/credentials/provider/BeginGetPublicKeyCredentialOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p10, p9, 0x10

    const/4 v0, 0x0

    if-eqz p10, :cond_6

    move-object p5, v0

    :cond_6
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_b

    move-object p6, v0

    :cond_b
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_1a

    .line 294
    sget p7, Landroidx/credentials/R$drawable;->ic_passkey:I

    invoke-static {p1, p7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p7

    const-string p10, "createWithResource(context, R.drawable.ic_passkey)"

    invoke-static {p7, p10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1a
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_1f

    const/4 p8, 0x0

    :cond_1f
    move p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 287
    invoke-direct/range {p1 .. p9}, Landroidx/credentials/provider/PublicKeyCredentialEntry;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;ZZ)V
    .registers 30

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "username"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pendingIntent"

    move-object/from16 v6, p3

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "beginGetPublicKeyCredentialOption"

    move-object/from16 v10, p4

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "icon"

    move-object/from16 v7, p7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget v1, Landroidx/credentials/R$string;->androidx_credentials_TYPE_PUBLIC_KEY_CREDENTIAL:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026PE_PUBLIC_KEY_CREDENTIAL)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v18, 0x7e00

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p5

    move-object/from16 v8, p6

    move/from16 v9, p8

    move/from16 v11, p9

    .line 170
    invoke-direct/range {v2 .. v19}, Landroidx/credentials/provider/PublicKeyCredentialEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/time/Instant;ZLandroidx/credentials/provider/BeginGetPublicKeyCredentialOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p11, p10, 0x10

    const/4 v0, 0x0

    if-eqz p11, :cond_6

    move-object p5, v0

    :cond_6
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_b

    move-object p6, v0

    :cond_b
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_1a

    .line 167
    sget p7, Landroidx/credentials/R$drawable;->ic_passkey:I

    invoke-static {p1, p7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p7

    const-string p11, "createWithResource(context, R.drawable.ic_passkey)"

    invoke-static {p7, p11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1a
    and-int/lit16 p11, p10, 0x80

    const/4 v0, 0x0

    if-eqz p11, :cond_20

    move p8, v0

    :cond_20
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_26

    move p10, v0

    goto :goto_27

    :cond_26
    move p10, p9

    :goto_27
    move p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 160
    invoke-direct/range {p1 .. p10}, Landroidx/credentials/provider/PublicKeyCredentialEntry;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;ZZLandroidx/credentials/provider/BiometricPromptData;)V
    .registers 31

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "username"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pendingIntent"

    move-object/from16 v6, p3

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "beginGetPublicKeyCredentialOption"

    move-object/from16 v10, p4

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "icon"

    move-object/from16 v7, p7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    sget v1, Landroidx/credentials/R$string;->androidx_credentials_TYPE_PUBLIC_KEY_CREDENTIAL:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026PE_PUBLIC_KEY_CREDENTIAL)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v18, 0x7600

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p5

    move-object/from16 v8, p6

    move/from16 v9, p8

    move/from16 v11, p9

    move-object/from16 v14, p10

    .line 232
    invoke-direct/range {v2 .. v19}, Landroidx/credentials/provider/PublicKeyCredentialEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/time/Instant;ZLandroidx/credentials/provider/BeginGetPublicKeyCredentialOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;ZZLandroidx/credentials/provider/BiometricPromptData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 15

    and-int/lit8 p12, p11, 0x10

    const/4 v0, 0x0

    if-eqz p12, :cond_6

    move-object p5, v0

    :cond_6
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_b

    move-object p6, v0

    :cond_b
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_1a

    .line 228
    sget p7, Landroidx/credentials/R$drawable;->ic_passkey:I

    invoke-static {p1, p7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p7

    const-string p12, "createWithResource(context, R.drawable.ic_passkey)"

    invoke-static {p7, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1a
    and-int/lit16 p12, p11, 0x80

    const/4 v1, 0x0

    if-eqz p12, :cond_20

    move p8, v1

    :cond_20
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_25

    move p9, v1

    :cond_25
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_2b

    move-object p11, v0

    goto :goto_2c

    :cond_2b
    move-object p11, p10

    :goto_2c
    move p10, p9

    move p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 221
    invoke-direct/range {p1 .. p11}, Landroidx/credentials/provider/PublicKeyCredentialEntry;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;Ljava/lang/CharSequence;Ljava/time/Instant;Landroid/graphics/drawable/Icon;ZZLandroidx/credentials/provider/BiometricPromptData;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/time/Instant;ZLandroidx/credentials/provider/BeginGetPublicKeyCredentialOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZZ)V
    .registers 24

    move-object v7, p5

    move-object/from16 v0, p8

    const-string v1, "username"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeDisplayName"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pendingIntent"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "icon"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "beginGetPublicKeyCredentialOption"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    move-object v2, v0

    check-cast v2, Landroidx/credentials/provider/BeginGetCredentialOption;

    if-nez p10, :cond_23

    move-object v3, p1

    goto :goto_25

    :cond_23
    move-object/from16 v3, p10

    .line 102
    :goto_25
    const-string v1, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    move-object v0, p0

    move/from16 v4, p9

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    invoke-direct/range {v0 .. v6}, Landroidx/credentials/provider/CredentialEntry;-><init>(Ljava/lang/String;Landroidx/credentials/provider/BeginGetCredentialOption;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;)V

    .line 83
    iput-object p1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->username:Ljava/lang/CharSequence;

    .line 84
    iput-object p2, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->displayName:Ljava/lang/CharSequence;

    .line 85
    iput-object p3, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->typeDisplayName:Ljava/lang/CharSequence;

    .line 86
    iput-object p4, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->pendingIntent:Landroid/app/PendingIntent;

    .line 87
    iput-object v7, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->icon:Landroid/graphics/drawable/Icon;

    move-object v1, p6

    .line 88
    iput-object v1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->lastUsedTime:Ljava/time/Instant;

    move v1, p7

    .line 89
    iput-boolean v1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isAutoSelectAllowed:Z

    move/from16 v1, p14

    .line 99
    iput-boolean v1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isCreatedFromSlice:Z

    move/from16 v1, p15

    .line 100
    iput-boolean v1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isDefaultIconFromSlice:Z

    move/from16 v1, p13

    .line 110
    iput-boolean v1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isAutoSelectAllowedFromOption:Z

    .line 121
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_66

    .line 122
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5a

    return-void

    :cond_5a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "typeDisplayName must not be empty"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "username must not be empty"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/time/Instant;ZLandroidx/credentials/provider/BeginGetPublicKeyCredentialOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 36

    move/from16 v0, p16

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    move-object/from16 v12, p1

    goto :goto_b

    :cond_9
    move-object/from16 v12, p10

    :goto_b
    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    move-object v13, v2

    goto :goto_14

    :cond_12
    move-object/from16 v13, p11

    :goto_14
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_1a

    move-object v14, v2

    goto :goto_1c

    :cond_1a
    move-object/from16 v14, p12

    :goto_1c
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_2c

    .line 96
    sget-object v1, Landroidx/credentials/CredentialOption;->Companion:Landroidx/credentials/CredentialOption$Companion;

    .line 97
    invoke-virtual/range {p8 .. p8}, Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Landroidx/credentials/CredentialOption$Companion;->extractAutoSelectValue$credentials_release(Landroid/os/Bundle;)Z

    move-result v1

    move v15, v1

    goto :goto_2e

    :cond_2c
    move/from16 v15, p13

    :goto_2e
    and-int/lit16 v1, v0, 0x2000

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    move/from16 v16, v2

    goto :goto_38

    :cond_36
    move/from16 v16, p14

    :goto_38
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_53

    move/from16 v17, v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v2, p0

    goto :goto_69

    :cond_53
    move/from16 v17, p15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 82
    :goto_69
    invoke-direct/range {v2 .. v17}, Landroidx/credentials/provider/PublicKeyCredentialEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/time/Instant;ZLandroidx/credentials/provider/BeginGetPublicKeyCredentialOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZZ)V

    return-void
.end method

.method public static final synthetic access$isCreatedFromSlice$p(Landroidx/credentials/provider/PublicKeyCredentialEntry;)Z
    .registers 1

    .line 79
    iget-boolean p0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isCreatedFromSlice:Z

    return p0
.end method

.method public static final synthetic access$isDefaultIconFromSlice$p(Landroidx/credentials/provider/PublicKeyCredentialEntry;)Z
    .registers 1

    .line 79
    iget-boolean p0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isDefaultIconFromSlice:Z

    return p0
.end method

.method public static final fromCredentialEntry(Landroid/service/credentials/CredentialEntry;)Landroidx/credentials/provider/PublicKeyCredentialEntry;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->Companion:Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;->fromCredentialEntry(Landroid/service/credentials/CredentialEntry;)Landroidx/credentials/provider/PublicKeyCredentialEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/PublicKeyCredentialEntry;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->Companion:Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;->fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/PublicKeyCredentialEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final toSlice(Landroidx/credentials/provider/PublicKeyCredentialEntry;)Landroid/app/slice/Slice;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->Companion:Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;->toSlice(Landroidx/credentials/provider/PublicKeyCredentialEntry;)Landroid/app/slice/Slice;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 84
    iget-object v0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->displayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 87
    iget-object v0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->icon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public final getLastUsedTime()Ljava/time/Instant;
    .registers 2

    .line 88
    iget-object v0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->lastUsedTime:Ljava/time/Instant;

    return-object v0
.end method

.method public final getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 86
    iget-object v0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final getTypeDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 85
    iget-object v0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->typeDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getUsername()Ljava/lang/CharSequence;
    .registers 2

    .line 83
    iget-object v0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->username:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final hasDefaultIcon()Z
    .registers 3

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 115
    invoke-static {p0}, Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;->isDefaultIcon(Landroidx/credentials/provider/PublicKeyCredentialEntry;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public final isAutoSelectAllowed()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isAutoSelectAllowed:Z

    return v0
.end method

.method public final isAutoSelectAllowedFromOption()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry;->isAutoSelectAllowedFromOption:Z

    return v0
.end method
