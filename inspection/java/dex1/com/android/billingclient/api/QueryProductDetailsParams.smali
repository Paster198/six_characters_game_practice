.class public final Lcom/android/billingclient/api/QueryProductDetailsParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;,
        Lcom/android/billingclient/api/QueryProductDetailsParams$Product;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzca;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;Lcom/android/billingclient/api/zzem;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->zza(Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;)Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/QueryProductDetailsParams;->zza:Lcom/google/android/gms/internal/play_billing/zzca;

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;
    .registers 2

    new-instance v0, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;-><init>(Lcom/android/billingclient/api/zzem;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/play_billing/zzca;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/QueryProductDetailsParams;->zza:Lcom/google/android/gms/internal/play_billing/zzca;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/QueryProductDetailsParams;->zza:Lcom/google/android/gms/internal/play_billing/zzca;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzca;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
