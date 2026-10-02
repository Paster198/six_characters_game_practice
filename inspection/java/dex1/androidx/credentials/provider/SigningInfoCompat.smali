.class public final Landroidx/credentials/provider/SigningInfoCompat;
.super Ljava/lang/Object;
.source "SigningInfoCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/SigningInfoCompat$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aBI\u0008\u0000\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u000eJ\u0013\u0010\u0017\u001a\u00020\u000c2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\nH\u0016R\u001c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\r\u001a\u00020\u000cX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0011R\u0014\u0010\u000b\u001a\u00020\u000cX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0011R\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/credentials/provider/SigningInfoCompat;",
        "",
        "signingCertificateHistory",
        "",
        "Landroid/content/pm/Signature;",
        "apkContentsSigners",
        "publicKeys",
        "",
        "Ljava/security/PublicKey;",
        "schemeVersion",
        "",
        "hasPastSigningCertificates",
        "",
        "hasMultipleSigners",
        "(Ljava/util/List;Ljava/util/List;Ljava/util/Collection;IZZ)V",
        "getApkContentsSigners",
        "()Ljava/util/List;",
        "()Z",
        "getPublicKeys",
        "()Ljava/util/Collection;",
        "getSchemeVersion",
        "()I",
        "getSigningCertificateHistory",
        "equals",
        "other",
        "hashCode",
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
.field public static final Companion:Landroidx/credentials/provider/SigningInfoCompat$Companion;


# instance fields
.field private final apkContentsSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final hasMultipleSigners:Z

.field private final hasPastSigningCertificates:Z

.field private final publicKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private final schemeVersion:I

.field private final signingCertificateHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/provider/SigningInfoCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/SigningInfoCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/SigningInfoCompat;->Companion:Landroidx/credentials/provider/SigningInfoCompat$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Collection;IZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/PublicKey;",
            ">;IZZ)V"
        }
    .end annotation

    const-string v0, "signingCertificateHistory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apkContentsSigners"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicKeys"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/credentials/provider/SigningInfoCompat;->signingCertificateHistory:Ljava/util/List;

    .line 51
    iput-object p2, p0, Landroidx/credentials/provider/SigningInfoCompat;->apkContentsSigners:Ljava/util/List;

    .line 52
    iput-object p3, p0, Landroidx/credentials/provider/SigningInfoCompat;->publicKeys:Ljava/util/Collection;

    .line 53
    iput p4, p0, Landroidx/credentials/provider/SigningInfoCompat;->schemeVersion:I

    .line 54
    iput-boolean p5, p0, Landroidx/credentials/provider/SigningInfoCompat;->hasPastSigningCertificates:Z

    .line 57
    iput-boolean p6, p0, Landroidx/credentials/provider/SigningInfoCompat;->hasMultipleSigners:Z

    return-void
.end method

.method public static final fromSignatures(Ljava/util/List;)Landroidx/credentials/provider/SigningInfoCompat;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/Signature;",
            ">;)",
            "Landroidx/credentials/provider/SigningInfoCompat;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/SigningInfoCompat;->Companion:Landroidx/credentials/provider/SigningInfoCompat$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/SigningInfoCompat$Companion;->fromSignatures(Ljava/util/List;)Landroidx/credentials/provider/SigningInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSigningInfo(Landroid/content/pm/SigningInfo;)Landroidx/credentials/provider/SigningInfoCompat;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/SigningInfoCompat;->Companion:Landroidx/credentials/provider/SigningInfoCompat$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/SigningInfoCompat$Companion;->fromSigningInfo(Landroid/content/pm/SigningInfo;)Landroidx/credentials/provider/SigningInfoCompat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 63
    :cond_4
    instance-of v1, p1, Landroidx/credentials/provider/SigningInfoCompat;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 66
    :cond_a
    iget-object v1, p0, Landroidx/credentials/provider/SigningInfoCompat;->signingCertificateHistory:Ljava/util/List;

    check-cast p1, Landroidx/credentials/provider/SigningInfoCompat;

    iget-object v3, p1, Landroidx/credentials/provider/SigningInfoCompat;->signingCertificateHistory:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 67
    iget-object v1, p0, Landroidx/credentials/provider/SigningInfoCompat;->apkContentsSigners:Ljava/util/List;

    iget-object v3, p1, Landroidx/credentials/provider/SigningInfoCompat;->apkContentsSigners:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 68
    iget-object v1, p0, Landroidx/credentials/provider/SigningInfoCompat;->publicKeys:Ljava/util/Collection;

    iget-object v3, p1, Landroidx/credentials/provider/SigningInfoCompat;->publicKeys:Ljava/util/Collection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 69
    iget v1, p0, Landroidx/credentials/provider/SigningInfoCompat;->schemeVersion:I

    iget v3, p1, Landroidx/credentials/provider/SigningInfoCompat;->schemeVersion:I

    if-ne v1, v3, :cond_3d

    .line 70
    iget-boolean v1, p0, Landroidx/credentials/provider/SigningInfoCompat;->hasPastSigningCertificates:Z

    iget-boolean v3, p1, Landroidx/credentials/provider/SigningInfoCompat;->hasPastSigningCertificates:Z

    if-ne v1, v3, :cond_3d

    .line 71
    iget-boolean v1, p0, Landroidx/credentials/provider/SigningInfoCompat;->hasMultipleSigners:Z

    iget-boolean p1, p1, Landroidx/credentials/provider/SigningInfoCompat;->hasMultipleSigners:Z

    if-ne v1, p1, :cond_3d

    return v0

    :cond_3d
    return v2
.end method

.method public final getApkContentsSigners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Landroidx/credentials/provider/SigningInfoCompat;->apkContentsSigners:Ljava/util/List;

    return-object v0
.end method

.method public final getPublicKeys()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroidx/credentials/provider/SigningInfoCompat;->publicKeys:Ljava/util/Collection;

    return-object v0
.end method

.method public final getSchemeVersion()I
    .registers 2

    .line 53
    iget v0, p0, Landroidx/credentials/provider/SigningInfoCompat;->schemeVersion:I

    return v0
.end method

.method public final getSigningCertificateHistory()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Landroidx/credentials/provider/SigningInfoCompat;->signingCertificateHistory:Ljava/util/List;

    return-object v0
.end method

.method public final hasMultipleSigners()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Landroidx/credentials/provider/SigningInfoCompat;->hasMultipleSigners:Z

    return v0
.end method

.method public final hasPastSigningCertificates()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Landroidx/credentials/provider/SigningInfoCompat;->hasPastSigningCertificates:Z

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 75
    iget-object v0, p0, Landroidx/credentials/provider/SigningInfoCompat;->signingCertificateHistory:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget-object v1, p0, Landroidx/credentials/provider/SigningInfoCompat;->apkContentsSigners:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v1, p0, Landroidx/credentials/provider/SigningInfoCompat;->publicKeys:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget v1, p0, Landroidx/credentials/provider/SigningInfoCompat;->schemeVersion:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-boolean v1, p0, Landroidx/credentials/provider/SigningInfoCompat;->hasPastSigningCertificates:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 80
    iget-boolean v1, p0, Landroidx/credentials/provider/SigningInfoCompat;->hasMultipleSigners:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
