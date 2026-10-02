.class public final Landroidx/credentials/provider/SigningInfoCompat$Companion;
.super Ljava/lang/Object;
.source "SigningInfoCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/SigningInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0007J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/credentials/provider/SigningInfoCompat$Companion;",
        "",
        "()V",
        "fromSignatures",
        "Landroidx/credentials/provider/SigningInfoCompat;",
        "signatures",
        "",
        "Landroid/content/pm/Signature;",
        "fromSigningInfo",
        "signingInfo",
        "Landroid/content/pm/SigningInfo;",
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/credentials/provider/SigningInfoCompat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromSignatures(Ljava/util/List;)Landroidx/credentials/provider/SigningInfoCompat;
    .registers 11
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

    const-string v0, "signatures"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_20

    .line 124
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 125
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 123
    new-instance v2, Landroidx/credentials/provider/SigningInfoCompat;

    .line 125
    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    .line 123
    invoke-direct/range {v2 .. v8}, Landroidx/credentials/provider/SigningInfoCompat;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Collection;IZZ)V

    return-object v2

    .line 119
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 120
    const-string v0, "Use SigningInfoCompat.fromSigningInfo(SigningInfo) instead"

    .line 119
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final fromSigningInfo(Landroid/content/pm/SigningInfo;)Landroidx/credentials/provider/SigningInfoCompat;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "signingInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_15

    :cond_11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_15
    move-object v3, v0

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_29

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getPublicKeys()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_2f

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_2f

    .line 99
    :cond_29
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    :cond_2f
    :goto_2f
    move-object v4, v0

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_39

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getSchemeVersion()I

    move-result v0

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    move v5, v0

    .line 103
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4b

    :cond_47
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_4b
    move-object v2, v0

    .line 104
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->hasPastSigningCertificates()Z

    move-result v6

    .line 105
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v7

    .line 93
    new-instance v1, Landroidx/credentials/provider/SigningInfoCompat;

    invoke-direct/range {v1 .. v7}, Landroidx/credentials/provider/SigningInfoCompat;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Collection;IZZ)V

    return-object v1
.end method
