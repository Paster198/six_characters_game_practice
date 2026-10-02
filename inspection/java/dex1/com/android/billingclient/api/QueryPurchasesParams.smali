.class public final Lcom/android/billingclient/api/QueryPurchasesParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/QueryPurchasesParams$Builder;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Z


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/QueryPurchasesParams$Builder;Lcom/android/billingclient/api/zzen;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->zza(Lcom/android/billingclient/api/QueryPurchasesParams$Builder;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/QueryPurchasesParams;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->zzb(Lcom/android/billingclient/api/QueryPurchasesParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/billingclient/api/QueryPurchasesParams;->zzb:Z

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;
    .registers 2

    new-instance v0, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;-><init>(Lcom/android/billingclient/api/zzen;)V

    return-object v0
.end method


# virtual methods
.method public getIncludeSuspendedSubscriptions()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/billingclient/api/QueryPurchasesParams;->zzb:Z

    return v0
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/QueryPurchasesParams;->zza:Ljava/lang/String;

    return-object v0
.end method
