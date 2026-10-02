.class public final Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;
.super Ljava/lang/Object;
.source "CustomAudience.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001*Bc\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0013J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\'\u001a\u00020(H\u0016J\u0008\u0010)\u001a\u00020\u0005H\u0016R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\u00a8\u0006+"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;",
        "",
        "buyer",
        "Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;",
        "name",
        "",
        "dailyUpdateUri",
        "Landroid/net/Uri;",
        "biddingLogicUri",
        "ads",
        "",
        "Landroidx/privacysandbox/ads/adservices/common/AdData;",
        "activationTime",
        "Ljava/time/Instant;",
        "expirationTime",
        "userBiddingSignals",
        "Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;",
        "trustedBiddingSignals",
        "Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;",
        "(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;)V",
        "getActivationTime",
        "()Ljava/time/Instant;",
        "getAds",
        "()Ljava/util/List;",
        "getBiddingLogicUri",
        "()Landroid/net/Uri;",
        "getBuyer",
        "()Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;",
        "getDailyUpdateUri",
        "getExpirationTime",
        "getName",
        "()Ljava/lang/String;",
        "getTrustedBiddingSignals",
        "()Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;",
        "getUserBiddingSignals",
        "()Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Builder",
        "ads-adservices_release"
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
.field private final activationTime:Ljava/time/Instant;

.field private final ads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/AdData;",
            ">;"
        }
    .end annotation
.end field

.field private final biddingLogicUri:Landroid/net/Uri;

.field private final buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

.field private final dailyUpdateUri:Landroid/net/Uri;

.field private final expirationTime:Ljava/time/Instant;

.field private final name:Ljava/lang/String;

.field private final trustedBiddingSignals:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

.field private final userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;


# direct methods
.method public constructor <init>(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/AdData;",
            ">;",
            "Ljava/time/Instant;",
            "Ljava/time/Instant;",
            "Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;",
            "Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;",
            ")V"
        }
    .end annotation

    const-string v0, "buyer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dailyUpdateUri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "biddingLogicUri"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ads"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 55
    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->name:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->dailyUpdateUri:Landroid/net/Uri;

    .line 57
    iput-object p4, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->biddingLogicUri:Landroid/net/Uri;

    .line 58
    iput-object p5, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->ads:Ljava/util/List;

    .line 59
    iput-object p6, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->activationTime:Ljava/time/Instant;

    .line 60
    iput-object p7, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->expirationTime:Ljava/time/Instant;

    .line 61
    iput-object p8, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 62
    iput-object p9, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->trustedBiddingSignals:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p11, p10, 0x20

    const/4 v0, 0x0

    if-eqz p11, :cond_6

    move-object p6, v0

    :cond_6
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_b

    move-object p7, v0

    :cond_b
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_10

    move-object p8, v0

    :cond_10
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_16

    move-object p10, v0

    goto :goto_17

    :cond_16
    move-object p10, p9

    :goto_17
    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 53
    invoke-direct/range {p1 .. p10}, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;-><init>(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Ljava/time/Instant;Ljava/time/Instant;Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 68
    :cond_4
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 69
    :cond_a
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    check-cast p1, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 70
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->name:Ljava/lang/String;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 71
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->activationTime:Ljava/time/Instant;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->activationTime:Ljava/time/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 72
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->expirationTime:Ljava/time/Instant;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->expirationTime:Ljava/time/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 73
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->dailyUpdateUri:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->dailyUpdateUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 74
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 75
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->trustedBiddingSignals:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->trustedBiddingSignals:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 76
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->ads:Ljava/util/List;

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->ads:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    return v0

    :cond_5d
    return v2
.end method

.method public final getActivationTime()Ljava/time/Instant;
    .registers 2

    .line 59
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->activationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public final getAds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/AdData;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->ads:Ljava/util/List;

    return-object v0
.end method

.method public final getBiddingLogicUri()Landroid/net/Uri;
    .registers 2

    .line 57
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->biddingLogicUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getBuyer()Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;
    .registers 2

    .line 54
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public final getDailyUpdateUri()Landroid/net/Uri;
    .registers 2

    .line 56
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->dailyUpdateUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getExpirationTime()Ljava/time/Instant;
    .registers 2

    .line 60
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->expirationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrustedBiddingSignals()Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;
    .registers 2

    .line 62
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->trustedBiddingSignals:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    return-object v0
.end method

.method public final getUserBiddingSignals()Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;
    .registers 2

    .line 61
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 81
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->buyer:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 82
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 83
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->activationTime:Ljava/time/Instant;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->expirationTime:Ljava/time/Instant;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->dailyUpdateUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3f

    :cond_3e
    move v1, v2

    :goto_3f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->trustedBiddingSignals:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_4a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->biddingLogicUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 89
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->ads:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomAudience: buyer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->biddingLogicUri:Landroid/net/Uri;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    const-string v1, ", name="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->name:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    const-string v1, ", activationTime="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->activationTime:Ljava/time/Instant;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    const-string v1, ", expirationTime="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->expirationTime:Ljava/time/Instant;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string v1, ", dailyUpdateUri="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->dailyUpdateUri:Landroid/net/Uri;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string v1, ", userBiddingSignals="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->userBiddingSignals:Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string v1, ", trustedBiddingSignals="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->trustedBiddingSignals:Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    const-string v1, ", biddingLogicUri="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->biddingLogicUri:Landroid/net/Uri;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string v1, ", ads="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;->ads:Ljava/util/List;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
