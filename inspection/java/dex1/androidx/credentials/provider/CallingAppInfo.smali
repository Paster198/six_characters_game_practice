.class public final Landroidx/credentials/provider/CallingAppInfo;
.super Ljava/lang/Object;
.source "CallingAppInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/CallingAppInfo$Companion;,
        Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCallingAppInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallingAppInfo.kt\nandroidx/credentials/provider/CallingAppInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,339:1\n1#2:340\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0004\u0018\u0000 $2\u00020\u0001:\u0002$%B#\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0007B)\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000bB+\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000eJ\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u001b\u001a\u00020\u0003J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0016\u0010\u001e\u001a\u00020\u00182\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\tH\u0002J\u0016\u0010\u001e\u001a\u00020\u00182\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00030\"H\u0002J\u0006\u0010#\u001a\u00020\u0018R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00058G@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006&"
    }
    d2 = {
        "Landroidx/credentials/provider/CallingAppInfo;",
        "",
        "packageName",
        "",
        "signingInfo",
        "Landroid/content/pm/SigningInfo;",
        "origin",
        "(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V",
        "signatures",
        "",
        "Landroid/content/pm/Signature;",
        "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V",
        "signingInfoCompat",
        "Landroidx/credentials/provider/SigningInfoCompat;",
        "(Ljava/lang/String;Ljava/lang/String;Landroidx/credentials/provider/SigningInfoCompat;Landroid/content/pm/SigningInfo;)V",
        "getOrigin$credentials_release",
        "()Ljava/lang/String;",
        "getPackageName",
        "<set-?>",
        "getSigningInfo",
        "()Landroid/content/pm/SigningInfo;",
        "getSigningInfoCompat",
        "()Landroidx/credentials/provider/SigningInfoCompat;",
        "equals",
        "",
        "other",
        "getOrigin",
        "privilegedAllowlist",
        "hashCode",
        "",
        "isAppPrivileged",
        "candidateApps",
        "Landroidx/credentials/provider/utils/PrivilegedApp;",
        "candidateFingerprints",
        "",
        "isOriginPopulated",
        "Companion",
        "SignatureVerifier",
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
.field public static final Companion:Landroidx/credentials/provider/CallingAppInfo$Companion;

.field public static final EXTRA_CREDENTIAL_REQUEST_ORIGIN:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_REQUEST_ORIGIN"

.field private static final EXTRA_CREDENTIAL_REQUEST_PACKAGE_NAME:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_REQUEST_PACKAGE_NAME"

.field private static final EXTRA_CREDENTIAL_REQUEST_SIGNATURES:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_REQUEST_SIGNATURES"

.field private static final EXTRA_CREDENTIAL_REQUEST_SIGNING_INFO:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_REQUEST_SIGNING_INFO"


# instance fields
.field private final origin:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private signingInfo:Landroid/content/pm/SigningInfo;

.field private final signingInfoCompat:Landroidx/credentials/provider/SigningInfoCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/provider/CallingAppInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/CallingAppInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/CallingAppInfo;->Companion:Landroidx/credentials/provider/CallingAppInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;)V
    .registers 10

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signingInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V
    .registers 5

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signingInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Landroidx/credentials/provider/SigningInfoCompat;->Companion:Landroidx/credentials/provider/SigningInfoCompat$Companion;

    invoke-virtual {v0, p2}, Landroidx/credentials/provider/SigningInfoCompat$Companion;->fromSigningInfo(Landroid/content/pm/SigningInfo;)Landroidx/credentials/provider/SigningInfoCompat;

    move-result-object v0

    .line 79
    invoke-direct {p0, p1, p3, v0, p2}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/credentials/provider/SigningInfoCompat;Landroid/content/pm/SigningInfo;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 75
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/credentials/provider/SigningInfoCompat;Landroid/content/pm/SigningInfo;)V
    .registers 5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/credentials/provider/CallingAppInfo;->packageName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Landroidx/credentials/provider/CallingAppInfo;->signingInfoCompat:Landroidx/credentials/provider/SigningInfoCompat;

    .line 55
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1c

    if-lt p2, p3, :cond_14

    .line 56
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p4, p0, Landroidx/credentials/provider/CallingAppInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 282
    :cond_14
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1d

    return-void

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "packageName must not be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatures"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signatures"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Landroidx/credentials/provider/SigningInfoCompat;->Companion:Landroidx/credentials/provider/SigningInfoCompat$Companion;

    invoke-virtual {v0, p2}, Landroidx/credentials/provider/SigningInfoCompat$Companion;->fromSignatures(Ljava/util/List;)Landroidx/credentials/provider/SigningInfoCompat;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/credentials/provider/SigningInfoCompat;Landroid/content/pm/SigningInfo;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 102
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final isAppPrivileged(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/utils/PrivilegedApp;",
            ">;)Z"
        }
    .end annotation

    .line 268
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/credentials/provider/utils/PrivilegedApp;

    .line 269
    invoke-virtual {v0}, Landroidx/credentials/provider/utils/PrivilegedApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/credentials/provider/CallingAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 270
    invoke-virtual {v0}, Landroidx/credentials/provider/utils/PrivilegedApp;->getFingerprints()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/credentials/provider/CallingAppInfo;->isAppPrivileged(Ljava/util/Set;)Z

    move-result p1

    return p1

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method private final isAppPrivileged(Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 277
    new-instance v0, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;

    iget-object v1, p0, Landroidx/credentials/provider/CallingAppInfo;->signingInfoCompat:Landroidx/credentials/provider/SigningInfoCompat;

    invoke-direct {v0, v1}, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;-><init>(Landroidx/credentials/provider/SigningInfoCompat;)V

    .line 278
    invoke-virtual {v0, p1}, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;->verifySignatureFingerprints(Ljava/util/Set;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 324
    :cond_4
    instance-of v1, p1, Landroidx/credentials/provider/CallingAppInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 327
    :cond_a
    iget-object v1, p0, Landroidx/credentials/provider/CallingAppInfo;->packageName:Ljava/lang/String;

    check-cast p1, Landroidx/credentials/provider/CallingAppInfo;

    iget-object v3, p1, Landroidx/credentials/provider/CallingAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 328
    iget-object v1, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    iget-object v3, p1, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 329
    iget-object v1, p0, Landroidx/credentials/provider/CallingAppInfo;->signingInfoCompat:Landroidx/credentials/provider/SigningInfoCompat;

    iget-object p1, p1, Landroidx/credentials/provider/CallingAppInfo;->signingInfoCompat:Landroidx/credentials/provider/SigningInfoCompat;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    return v0

    :cond_2b
    return v2
.end method

.method public final getOrigin(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "privilegedAllowlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    sget-object v0, Landroidx/credentials/provider/utils/RequestValidationUtil;->Companion:Landroidx/credentials/provider/utils/RequestValidationUtil$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/utils/RequestValidationUtil$Companion;->isValidJSON(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 236
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    if-nez v0, :cond_12

    return-object v0

    .line 243
    :cond_12
    :try_start_12
    sget-object v0, Landroidx/credentials/provider/utils/PrivilegedApp;->Companion:Landroidx/credentials/provider/utils/PrivilegedApp$Companion;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/credentials/provider/utils/PrivilegedApp$Companion;->extractPrivilegedApps$credentials_release(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    .line 242
    invoke-direct {p0, p1}, Landroidx/credentials/provider/CallingAppInfo;->isAppPrivileged(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 246
    iget-object p1, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_25} :catch_2e

    return-object p1

    .line 251
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 252
    const-string v0, "Origin is not being returned as the calling app did notmatch the privileged allowlist"

    .line 251
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :catch_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "privilegedAllowlist must be formatted properly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 233
    const-string v0, "privilegedAllowlist must not be empty, and must be a valid JSON"

    .line 232
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getOrigin$credentials_release()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSigningInfo()Landroid/content/pm/SigningInfo;
    .registers 2

    .line 52
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "signingInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSigningInfoCompat()Landroidx/credentials/provider/SigningInfoCompat;
    .registers 2

    .line 46
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->signingInfoCompat:Landroidx/credentials/provider/SigningInfoCompat;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 333
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 334
    iget-object v1, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 335
    iget-object v1, p0, Landroidx/credentials/provider/CallingAppInfo;->signingInfoCompat:Landroidx/credentials/provider/SigningInfoCompat;

    invoke-virtual {v1}, Landroidx/credentials/provider/SigningInfoCompat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isOriginPopulated()Z
    .registers 2

    .line 264
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
