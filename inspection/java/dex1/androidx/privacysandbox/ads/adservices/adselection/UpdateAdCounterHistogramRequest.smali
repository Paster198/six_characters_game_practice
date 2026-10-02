.class public final Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;
.super Ljava/lang/Object;
.source "UpdateAdCounterHistogramRequest.kt"


# annotations
.annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext8OptIn;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\r\u0010\u000f\u001a\u00020\u0010H\u0001\u00a2\u0006\u0002\u0008\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0005H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;",
        "",
        "adSelectionId",
        "",
        "adEventType",
        "",
        "callerAdTech",
        "Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;",
        "(JILandroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;)V",
        "getAdEventType",
        "()I",
        "getAdSelectionId",
        "()J",
        "getCallerAdTech",
        "()Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;",
        "convertToAdServices",
        "Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;",
        "convertToAdServices$ads_adservices_release",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final adEventType:I

.field private final adSelectionId:J

.field private final callerAdTech:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;


# direct methods
.method public constructor <init>(JILandroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;)V
    .registers 6

    const-string v0, "callerAdTech"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->adSelectionId:J

    .line 42
    iput p3, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->adEventType:I

    .line 43
    iput-object p4, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->callerAdTech:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    if-eqz p3, :cond_27

    const/4 p1, 0x1

    if-eq p3, p1, :cond_26

    const/4 p1, 0x2

    if-eq p3, p1, :cond_26

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1a

    goto :goto_26

    .line 49
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ad event type must be one of AD_EVENT_TYPE_IMPRESSION, AD_EVENT_TYPE_VIEW, or AD_EVENT_TYPE_CLICK"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    :goto_26
    return-void

    .line 46
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Win event types cannot be manually updated."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final convertToAdServices$ads_adservices_release()Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;
    .registers 6

    .line 97
    new-instance v0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest$Builder;

    .line 98
    iget-wide v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->adSelectionId:J

    .line 99
    iget v3, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->adEventType:I

    .line 100
    iget-object v4, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->callerAdTech:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    invoke-virtual {v4}, Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;->convertToAdServices$ads_adservices_release()Landroid/adservices/common/AdTechIdentifier;

    move-result-object v4

    .line 97
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest$Builder;-><init>(JILandroid/adservices/common/AdTechIdentifier;)V

    .line 102
    invoke-virtual {v0}, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest$Builder;->build()Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;

    move-result-object v0

    const-string v1, "Builder(\n               \u2026   )\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 64
    :cond_4
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 65
    :cond_a
    iget-wide v3, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->adSelectionId:J

    check-cast p1, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;

    iget-wide v5, p1, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->adSelectionId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_25

    .line 66
    iget v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->adEventType:I

    iget v3, p1, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->adEventType:I

    if-ne v1, v3, :cond_25

    .line 67
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->callerAdTech:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->callerAdTech:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    return v2
.end method

.method public final getAdEventType()I
    .registers 2

    .line 42
    iget v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->adEventType:I

    return v0
.end method

.method public final getAdSelectionId()J
    .registers 3

    .line 41
    iget-wide v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->adSelectionId:J

    return-wide v0
.end method

.method public final getCallerAdTech()Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;
    .registers 2

    .line 43
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->callerAdTech:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 72
    iget-wide v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->adSelectionId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->adEventType:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->callerAdTech:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    invoke-virtual {v1}, Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 81
    iget v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->adEventType:I

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    .line 86
    const-string v0, "Invalid ad event type"

    goto :goto_1b

    .line 85
    :cond_10
    const-string v0, "AD_EVENT_TYPE_CLICK"

    goto :goto_1b

    .line 83
    :cond_13
    const-string v0, "AD_EVENT_TYPE_VIEW"

    goto :goto_1b

    .line 82
    :cond_16
    const-string v0, "AD_EVENT_TYPE_IMPRESSION"

    goto :goto_1b

    .line 84
    :cond_19
    const-string v0, "AD_EVENT_TYPE_WIN"

    .line 88
    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdateAdCounterHistogramRequest: adSelectionId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->adSelectionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adEventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    const-string v1, ", callerAdTech="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/UpdateAdCounterHistogramRequest;->callerAdTech:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
