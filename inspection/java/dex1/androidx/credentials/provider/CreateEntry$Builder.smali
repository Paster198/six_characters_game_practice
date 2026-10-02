.class public final Landroidx/credentials/provider/CreateEntry$Builder;
.super Ljava/lang/Object;
.source "CreateEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/CreateEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u0012\u0010\u001b\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u0010\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003J\u0010\u0010\u001d\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u001e\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u000eJ\u000e\u0010!\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u000eJ\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Landroidx/credentials/provider/CreateEntry$Builder;",
        "",
        "accountName",
        "",
        "pendingIntent",
        "Landroid/app/PendingIntent;",
        "(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V",
        "autoSelectAllowed",
        "",
        "biometricPromptData",
        "Landroidx/credentials/provider/BiometricPromptData;",
        "credentialCountInformationMap",
        "",
        "",
        "",
        "description",
        "icon",
        "Landroid/graphics/drawable/Icon;",
        "lastUsedTime",
        "Ljava/time/Instant;",
        "passwordCredentialCount",
        "Ljava/lang/Integer;",
        "publicKeyCredentialCount",
        "totalCredentialCount",
        "build",
        "Landroidx/credentials/provider/CreateEntry;",
        "setAutoSelectAllowed",
        "setBiometricPromptData",
        "setDescription",
        "setIcon",
        "setLastUsedTime",
        "setPasswordCredentialCount",
        "count",
        "setPublicKeyCredentialCount",
        "setTotalCredentialCount",
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
.field private final accountName:Ljava/lang/CharSequence;

.field private autoSelectAllowed:Z

.field private biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

.field private credentialCountInformationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/CharSequence;

.field private icon:Landroid/graphics/drawable/Icon;

.field private lastUsedTime:Ljava/time/Instant;

.field private passwordCredentialCount:Ljava/lang/Integer;

.field private final pendingIntent:Landroid/app/PendingIntent;

.field private publicKeyCredentialCount:Ljava/lang/Integer;

.field private totalCredentialCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 4

    const-string v0, "accountName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Landroidx/credentials/provider/CreateEntry$Builder;->accountName:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroidx/credentials/provider/CreateEntry$Builder;->pendingIntent:Landroid/app/PendingIntent;

    .line 233
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Landroidx/credentials/provider/CreateEntry$Builder;->credentialCountInformationMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/credentials/provider/CreateEntry;
    .registers 10

    .line 338
    new-instance v0, Landroidx/credentials/provider/CreateEntry;

    .line 339
    iget-object v1, p0, Landroidx/credentials/provider/CreateEntry$Builder;->accountName:Ljava/lang/CharSequence;

    .line 340
    iget-object v2, p0, Landroidx/credentials/provider/CreateEntry$Builder;->pendingIntent:Landroid/app/PendingIntent;

    .line 341
    iget-object v3, p0, Landroidx/credentials/provider/CreateEntry$Builder;->icon:Landroid/graphics/drawable/Icon;

    .line 342
    iget-object v4, p0, Landroidx/credentials/provider/CreateEntry$Builder;->description:Ljava/lang/CharSequence;

    .line 343
    iget-object v5, p0, Landroidx/credentials/provider/CreateEntry$Builder;->lastUsedTime:Ljava/time/Instant;

    .line 344
    iget-object v6, p0, Landroidx/credentials/provider/CreateEntry$Builder;->credentialCountInformationMap:Ljava/util/Map;

    .line 345
    iget-boolean v7, p0, Landroidx/credentials/provider/CreateEntry$Builder;->autoSelectAllowed:Z

    .line 346
    iget-object v8, p0, Landroidx/credentials/provider/CreateEntry$Builder;->biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

    .line 338
    invoke-direct/range {v0 .. v8}, Landroidx/credentials/provider/CreateEntry;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/time/Instant;Ljava/util/Map;ZLandroidx/credentials/provider/BiometricPromptData;)V

    return-object v0
.end method

.method public final setAutoSelectAllowed(Z)Landroidx/credentials/provider/CreateEntry$Builder;
    .registers 2

    .line 246
    iput-boolean p1, p0, Landroidx/credentials/provider/CreateEntry$Builder;->autoSelectAllowed:Z

    return-object p0
.end method

.method public final setBiometricPromptData(Landroidx/credentials/provider/BiometricPromptData;)Landroidx/credentials/provider/CreateEntry$Builder;
    .registers 2

    .line 328
    iput-object p1, p0, Landroidx/credentials/provider/CreateEntry$Builder;->biometricPromptData:Landroidx/credentials/provider/BiometricPromptData;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/CharSequence;)Landroidx/credentials/provider/CreateEntry$Builder;
    .registers 4

    if-eqz p1, :cond_b

    .line 307
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_17

    goto :goto_1f

    .line 308
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Description must follow a limit of 300 characters."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 310
    :cond_1f
    :goto_1f
    iput-object p1, p0, Landroidx/credentials/provider/CreateEntry$Builder;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Icon;)Landroidx/credentials/provider/CreateEntry$Builder;
    .registers 2

    .line 291
    iput-object p1, p0, Landroidx/credentials/provider/CreateEntry$Builder;->icon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public final setLastUsedTime(Ljava/time/Instant;)Landroidx/credentials/provider/CreateEntry$Builder;
    .registers 2

    .line 316
    iput-object p1, p0, Landroidx/credentials/provider/CreateEntry$Builder;->lastUsedTime:Ljava/time/Instant;

    return-object p0
.end method

.method public final setPasswordCredentialCount(I)Landroidx/credentials/provider/CreateEntry$Builder;
    .registers 4

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/credentials/provider/CreateEntry$Builder;->passwordCredentialCount:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 258
    iget-object v0, p0, Landroidx/credentials/provider/CreateEntry$Builder;->credentialCountInformationMap:Ljava/util/Map;

    const-string v1, "android.credentials.TYPE_PASSWORD_CREDENTIAL"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setPublicKeyCredentialCount(I)Landroidx/credentials/provider/CreateEntry$Builder;
    .registers 4

    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/credentials/provider/CreateEntry$Builder;->publicKeyCredentialCount:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 270
    iget-object v0, p0, Landroidx/credentials/provider/CreateEntry$Builder;->credentialCountInformationMap:Ljava/util/Map;

    const-string v1, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setTotalCredentialCount(I)Landroidx/credentials/provider/CreateEntry$Builder;
    .registers 4

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/credentials/provider/CreateEntry$Builder;->totalCredentialCount:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 285
    iget-object v0, p0, Landroidx/credentials/provider/CreateEntry$Builder;->credentialCountInformationMap:Ljava/util/Map;

    const-string v1, "TOTAL_CREDENTIAL_COUNT_TYPE"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
