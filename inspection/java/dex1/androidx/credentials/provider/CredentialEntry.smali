.class public abstract Landroidx/credentials/provider/CredentialEntry;
.super Ljava/lang/Object;
.source "CredentialEntry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/CredentialEntry$Api28Impl;,
        Landroidx/credentials/provider/CredentialEntry$Api34Impl;,
        Landroidx/credentials/provider/CredentialEntry$Api35Impl;,
        Landroidx/credentials/provider/CredentialEntry$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008&\u0018\u0000 \u001b2\u00020\u0001:\u0004\u0018\u0019\u001a\u001bB?\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0015R\u0016\u0010\u0002\u001a\u00020\u00038\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/credentials/provider/CredentialEntry;",
        "",
        "type",
        "",
        "beginGetCredentialOption",
        "Landroidx/credentials/provider/BeginGetCredentialOption;",
        "entryGroupId",
        "",
        "isDefaultIconPreferredAsSingleProvider",
        "",
        "affiliatedDomain",
        "biometricPromptData",
        "Landroidx/credentials/provider/BiometricPromptData;",
        "(Ljava/lang/String;Landroidx/credentials/provider/BeginGetCredentialOption;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;)V",
        "getAffiliatedDomain",
        "()Ljava/lang/CharSequence;",
        "getBeginGetCredentialOption",
        "()Landroidx/credentials/provider/BeginGetCredentialOption;",
        "getBiometricPromptData",
        "()Landroidx/credentials/provider/BiometricPromptData;",
        "getEntryGroupId",
        "()Z",
        "getType",
        "()Ljava/lang/String;",
        "Api28Impl",
        "Api34Impl",
        "Api35Impl",
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
.field public static final Companion:Landroidx/credentials/provider/CredentialEntry$Companion;

.field public static final EXTRA_CREDENTIAL_ENTRY_AFFILIATED_DOMAIN_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_ENTRY_AFFILIATED_DOMAIN_"

.field public static final EXTRA_CREDENTIAL_ENTRY_ENTRY_GROUP_ID_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_ENTRY_ENTRY_GROUP_ID_"

.field public static final EXTRA_CREDENTIAL_ENTRY_ENTRY_TYPE_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_ENTRY_TYPE_"

.field public static final EXTRA_CREDENTIAL_ENTRY_HAS_DEFAULT_ICON_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.HAS_DEFAULT_ICON_"

.field public static final EXTRA_CREDENTIAL_ENTRY_IS_AUTO_SELECT_ALLOWED_FROM_OPTION_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.IS_AUTO_SELECT_ALLOWED_FROM_OPTION_"

.field public static final EXTRA_CREDENTIAL_ENTRY_IS_AUTO_SELECT_ALLOWED_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.IS_AUTO_SELECT_ALLOWED_"

.field public static final EXTRA_CREDENTIAL_ENTRY_IS_DEFAULT_ICON_PREFERRED_AS_SINGLE_PROV_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_ENTRY_IS_DEFAULT_ICON_PREFERRED_AS_SINGLE_PROV_"

.field public static final EXTRA_CREDENTIAL_ENTRY_LAST_USED_TIME_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.LAST_USED_TIME_"

.field public static final EXTRA_CREDENTIAL_ENTRY_OPTION_DATA_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_OPTION_DATA_"

.field public static final EXTRA_CREDENTIAL_ENTRY_OPTION_ID_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_OPTION_ID_"

.field public static final EXTRA_CREDENTIAL_ENTRY_OPTION_TYPE_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_OPTION_TYPE_"

.field public static final EXTRA_CREDENTIAL_ENTRY_PENDING_INTENT_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.PENDING_INTENT_"

.field public static final EXTRA_CREDENTIAL_ENTRY_SIZE:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_ENTRY_SIZE"

.field public static final EXTRA_CREDENTIAL_SUBTITLE_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.SUBTITLE_"

.field public static final EXTRA_CREDENTIAL_TITLE_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.TITLE_"

.field public static final EXTRA_CREDENTIAL_TYPE_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.TYPE_DISPLAY_NAME_"

.field public static final EXTRA_CREDENTIAL_TYPE_ICON_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.ICON_"

.field public static final FALSE_STRING:Ljava/lang/String; = "false"

.field public static final REVISION_ID:I = 0x1

.field public static final SLICE_HINT_AFFILIATED_DOMAIN:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_AFFILIATED_DOMAIN"

.field public static final SLICE_HINT_ALLOWED_AUTHENTICATORS:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_ALLOWED_AUTHENTICATORS"

.field public static final SLICE_HINT_AUTO_ALLOWED:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED"

.field public static final SLICE_HINT_AUTO_SELECT_FROM_OPTION:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION"

.field public static final SLICE_HINT_BIOMETRIC_PROMPT_DATA:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_BIOMETRIC_PROMPT_DATA"

.field public static final SLICE_HINT_CRYPTO_OP_ID:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_CRYPTO_OP_ID"

.field public static final SLICE_HINT_DEDUPLICATION_ID:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEDUPLICATION_ID"

.field public static final SLICE_HINT_DEFAULT_ICON_RES_ID:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID"

.field public static final SLICE_HINT_ICON:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON"

.field public static final SLICE_HINT_IS_DEFAULT_ICON_PREFERRED:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_IS_DEFAULT_ICON_PREFERRED"

.field public static final SLICE_HINT_LAST_USED_TIME_MILLIS:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"

.field public static final SLICE_HINT_OPTION_ID:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID"

.field public static final SLICE_HINT_PENDING_INTENT:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT"

.field public static final SLICE_HINT_SUBTITLE:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME"

.field public static final SLICE_HINT_TITLE:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME"

.field public static final SLICE_HINT_TYPE_DISPLAY_NAME:Ljava/lang/String; = "androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME"

.field public static final TRUE_STRING:Ljava/lang/String; = "true"


# instance fields
.field private final affiliatedDomain:Ljava/lang/CharSequence;

.field private final beginGetCredentialOption:Landroidx/credentials/provider/BeginGetCredentialOption;

.field private final biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

.field private final entryGroupId:Ljava/lang/CharSequence;

.field private final isDefaultIconPreferredAsSingleProvider:Z

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/provider/CredentialEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/CredentialEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/CredentialEntry;->Companion:Landroidx/credentials/provider/CredentialEntry$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/credentials/provider/BeginGetCredentialOption;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;)V
    .registers 8

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beginGetCredentialOption"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryGroupId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroidx/credentials/provider/CredentialEntry;->type:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Landroidx/credentials/provider/CredentialEntry;->beginGetCredentialOption:Landroidx/credentials/provider/BeginGetCredentialOption;

    .line 67
    iput-object p3, p0, Landroidx/credentials/provider/CredentialEntry;->entryGroupId:Ljava/lang/CharSequence;

    .line 68
    iput-boolean p4, p0, Landroidx/credentials/provider/CredentialEntry;->isDefaultIconPreferredAsSingleProvider:Z

    .line 69
    iput-object p5, p0, Landroidx/credentials/provider/CredentialEntry;->affiliatedDomain:Ljava/lang/CharSequence;

    .line 70
    iput-object p6, p0, Landroidx/credentials/provider/CredentialEntry;->biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/credentials/provider/BeginGetCredentialOption;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p8, p7, 0x10

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move-object p5, v0

    :cond_6
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_c

    move-object p7, v0

    goto :goto_d

    :cond_c
    move-object p7, p6

    :goto_d
    move-object p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 64
    invoke-direct/range {p1 .. p7}, Landroidx/credentials/provider/CredentialEntry;-><init>(Ljava/lang/String;Landroidx/credentials/provider/BeginGetCredentialOption;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;)V

    return-void
.end method

.method public static final fromCredentialEntry(Landroid/service/credentials/CredentialEntry;)Landroidx/credentials/provider/CredentialEntry;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/CredentialEntry;->Companion:Landroidx/credentials/provider/CredentialEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CredentialEntry$Companion;->fromCredentialEntry(Landroid/service/credentials/CredentialEntry;)Landroidx/credentials/provider/CredentialEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSlice$credentials_release(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CredentialEntry;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/CredentialEntry;->Companion:Landroidx/credentials/provider/CredentialEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CredentialEntry$Companion;->fromSlice$credentials_release(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CredentialEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final toSlice$credentials_release(Landroidx/credentials/provider/CredentialEntry;)Landroid/app/slice/Slice;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/CredentialEntry;->Companion:Landroidx/credentials/provider/CredentialEntry$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/CredentialEntry$Companion;->toSlice$credentials_release(Landroidx/credentials/provider/CredentialEntry;)Landroid/app/slice/Slice;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAffiliatedDomain()Ljava/lang/CharSequence;
    .registers 2

    .line 69
    iget-object v0, p0, Landroidx/credentials/provider/CredentialEntry;->affiliatedDomain:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getBeginGetCredentialOption()Landroidx/credentials/provider/BeginGetCredentialOption;
    .registers 2

    .line 66
    iget-object v0, p0, Landroidx/credentials/provider/CredentialEntry;->beginGetCredentialOption:Landroidx/credentials/provider/BeginGetCredentialOption;

    return-object v0
.end method

.method public final getBiometricPromptData()Landroidx/credentials/provider/BiometricPromptData;
    .registers 2

    .line 70
    iget-object v0, p0, Landroidx/credentials/provider/CredentialEntry;->biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

    return-object v0
.end method

.method public final getEntryGroupId()Ljava/lang/CharSequence;
    .registers 2

    .line 67
    iget-object v0, p0, Landroidx/credentials/provider/CredentialEntry;->entryGroupId:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Landroidx/credentials/provider/CredentialEntry;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final isDefaultIconPreferredAsSingleProvider()Z
    .registers 2

    .line 68
    iget-boolean v0, p0, Landroidx/credentials/provider/CredentialEntry;->isDefaultIconPreferredAsSingleProvider:Z

    return v0
.end method
