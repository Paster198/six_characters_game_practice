.class public final Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;
.super Ljava/lang/Object;
.source "GetTopicsResponseHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008\u0007J\u0015\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;",
        "",
        "()V",
        "convertResponse",
        "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;",
        "response",
        "Landroid/adservices/topics/GetTopicsResponse;",
        "convertResponse$ads_adservices_release",
        "convertResponseWithEncryptedTopics",
        "convertResponseWithEncryptedTopics$ads_adservices_release",
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


# static fields
.field public static final INSTANCE:Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;

    invoke-direct {v0}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;-><init>()V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;->INSTANCE:Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponseHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertResponse$ads_adservices_release(Landroid/adservices/topics/GetTopicsResponse;)Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;
    .registers 10

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 36
    invoke-virtual {p1}, Landroid/adservices/topics/GetTopicsResponse;->getTopics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/adservices/topics/Topic;

    .line 37
    new-instance v2, Landroidx/privacysandbox/ads/adservices/topics/Topic;

    invoke-virtual {v1}, Landroid/adservices/topics/Topic;->getTaxonomyVersion()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/adservices/topics/Topic;->getModelVersion()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/adservices/topics/Topic;->getTopicId()I

    move-result v7

    invoke-direct/range {v2 .. v7}, Landroidx/privacysandbox/ads/adservices/topics/Topic;-><init>(JJI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 39
    :cond_35
    new-instance p1, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;

    invoke-direct {p1, v0}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final convertResponseWithEncryptedTopics$ads_adservices_release(Landroid/adservices/topics/GetTopicsResponse;)Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;
    .registers 11
    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext11OptIn;
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 49
    invoke-virtual {p1}, Landroid/adservices/topics/GetTopicsResponse;->getTopics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/topics/Topic;

    .line 50
    new-instance v3, Landroidx/privacysandbox/ads/adservices/topics/Topic;

    invoke-virtual {v2}, Landroid/adservices/topics/Topic;->getTaxonomyVersion()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/adservices/topics/Topic;->getModelVersion()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/adservices/topics/Topic;->getTopicId()I

    move-result v8

    invoke-direct/range {v3 .. v8}, Landroidx/privacysandbox/ads/adservices/topics/Topic;-><init>(JJI)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 52
    :cond_35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 53
    invoke-virtual {p1}, Landroid/adservices/topics/GetTopicsResponse;->getEncryptedTopics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/topics/EncryptedTopic;

    .line 55
    new-instance v3, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;

    .line 56
    invoke-virtual {v2}, Landroid/adservices/topics/EncryptedTopic;->getEncryptedTopic()[B

    move-result-object v4

    const-string v5, "encryptedTopic.encryptedTopic"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Landroid/adservices/topics/EncryptedTopic;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v5

    const-string v6, "encryptedTopic.keyIdentifier"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2}, Landroid/adservices/topics/EncryptedTopic;->getEncapsulatedKey()[B

    move-result-object v2

    const-string v6, "encryptedTopic.encapsulatedKey"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {v3, v4, v5, v2}, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;-><init>([BLjava/lang/String;[B)V

    .line 54
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 62
    :cond_74
    new-instance p1, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;

    invoke-direct {p1, v0, v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method
