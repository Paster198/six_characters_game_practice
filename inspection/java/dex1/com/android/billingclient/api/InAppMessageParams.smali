.class public final Lcom/android/billingclient/api/InAppMessageParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/InAppMessageParams$Builder;,
        Lcom/android/billingclient/api/InAppMessageParams$InAppMessageCategoryId;
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/ArrayList;


# direct methods
.method synthetic constructor <init>(Ljava/util/Set;Lcom/android/billingclient/api/zzdz;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/billingclient/api/InAppMessageParams;->zza:Ljava/util/ArrayList;

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/InAppMessageParams$Builder;
    .registers 1

    .line 1
    new-instance v0, Lcom/android/billingclient/api/InAppMessageParams$Builder;

    invoke-direct {v0}, Lcom/android/billingclient/api/InAppMessageParams$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method final zza()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/InAppMessageParams;->zza:Ljava/util/ArrayList;

    return-object v0
.end method
