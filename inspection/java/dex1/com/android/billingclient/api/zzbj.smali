.class public final synthetic Lcom/android/billingclient/api/zzbj;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic zzb:Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;

.field public final synthetic zzc:Lcom/android/billingclient/api/GetBillingChoiceInfoParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/GetBillingChoiceInfoParams;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbj;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbj;->zzb:Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;

    iput-object p3, p0, Lcom/android/billingclient/api/zzbj;->zzc:Lcom/android/billingclient/api/GetBillingChoiceInfoParams;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/billingclient/api/zzbj;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v1, p0, Lcom/android/billingclient/api/zzbj;->zzb:Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;

    iget-object v2, p0, Lcom/android/billingclient/api/zzbj;->zzc:Lcom/android/billingclient/api/GetBillingChoiceInfoParams;

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzv(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/GetBillingChoiceInfoParams;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
