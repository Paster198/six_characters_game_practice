.class public final Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;
.super Ljava/lang/Object;
.source "KeyedFrequencyCap.kt"


# annotations
.annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext8OptIn;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\r\u0010\r\u001a\u00020\u000eH\u0001\u00a2\u0006\u0002\u0008\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0003H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
        "",
        "adCounterKey",
        "",
        "maxCount",
        "interval",
        "Ljava/time/Duration;",
        "(IILjava/time/Duration;)V",
        "getAdCounterKey",
        "()I",
        "getInterval",
        "()Ljava/time/Duration;",
        "getMaxCount",
        "convertToAdServices",
        "Landroid/adservices/common/KeyedFrequencyCap;",
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
.field private final adCounterKey:I

.field private final interval:Ljava/time/Duration;

.field private final maxCount:I


# direct methods
.method public constructor <init>(IILjava/time/Duration;)V
    .registers 5

    const-string v0, "interval"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->adCounterKey:I

    iput p2, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->maxCount:I

    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->interval:Ljava/time/Duration;

    return-void
.end method


# virtual methods
.method public final convertToAdServices$ads_adservices_release()Landroid/adservices/common/KeyedFrequencyCap;
    .registers 5

    .line 65
    new-instance v0, Landroid/adservices/common/KeyedFrequencyCap$Builder;

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->adCounterKey:I

    iget v2, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->maxCount:I

    iget-object v3, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->interval:Ljava/time/Duration;

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/common/KeyedFrequencyCap$Builder;-><init>(IILjava/time/Duration;)V

    .line 66
    invoke-virtual {v0}, Landroid/adservices/common/KeyedFrequencyCap$Builder;->build()Landroid/adservices/common/KeyedFrequencyCap;

    move-result-object v0

    const-string v1, "Builder(adCounterKey, ma\u2026val)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 41
    :cond_4
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 42
    :cond_a
    iget v1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->adCounterKey:I

    check-cast p1, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;

    iget v3, p1, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->adCounterKey:I

    if-ne v1, v3, :cond_23

    .line 43
    iget v1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->maxCount:I

    iget v3, p1, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->maxCount:I

    if-ne v1, v3, :cond_23

    .line 44
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->interval:Ljava/time/Duration;

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->interval:Ljava/time/Duration;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    return v0

    :cond_23
    return v2
.end method

.method public final getAdCounterKey()I
    .registers 2

    .line 37
    iget v0, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->adCounterKey:I

    return v0
.end method

.method public final getInterval()Ljava/time/Duration;
    .registers 2

    .line 37
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->interval:Ljava/time/Duration;

    return-object v0
.end method

.method public final getMaxCount()I
    .registers 2

    .line 37
    iget v0, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->maxCount:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 49
    iget v0, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->adCounterKey:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 50
    iget v1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->maxCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 51
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->interval:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyedFrequencyCap: adCounterKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->adCounterKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->maxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->interval:Ljava/time/Duration;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
