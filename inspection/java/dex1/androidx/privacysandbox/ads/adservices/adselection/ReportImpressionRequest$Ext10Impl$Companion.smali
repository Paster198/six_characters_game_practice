.class public final Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest$Ext10Impl$Companion;
.super Ljava/lang/Object;
.source "ReportImpressionRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest$Ext10Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest$Ext10Impl$Companion;",
        "",
        "()V",
        "convertReportImpressionRequest",
        "Landroid/adservices/adselection/ReportImpressionRequest;",
        "request",
        "Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;",
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest$Ext10Impl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertReportImpressionRequest(Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;)Landroid/adservices/adselection/ReportImpressionRequest;
    .registers 5

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->getAdSelectionConfig()Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;

    move-result-object v0

    sget-object v1, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig$Companion;

    invoke-virtual {v1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig$Companion;->getEMPTY()Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 85
    new-instance v0, Landroid/adservices/adselection/ReportImpressionRequest;

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->getAdSelectionId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/adservices/adselection/ReportImpressionRequest;-><init>(J)V

    return-object v0

    .line 87
    :cond_1f
    new-instance v0, Landroid/adservices/adselection/ReportImpressionRequest;

    .line 88
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->getAdSelectionId()J

    move-result-wide v1

    .line 89
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;->getAdSelectionConfig()Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;->convertToAdServices$ads_adservices_release()Landroid/adservices/adselection/AdSelectionConfig;

    move-result-object p1

    .line 87
    invoke-direct {v0, v1, v2, p1}, Landroid/adservices/adselection/ReportImpressionRequest;-><init>(JLandroid/adservices/adselection/AdSelectionConfig;)V

    return-object v0
.end method
