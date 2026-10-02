.class final Lcom/android/billingclient/api/zzbq;
.super Landroid/os/ResultReceiver;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/InAppMessageResponseListener;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Handler;Lcom/android/billingclient/api/InAppMessageResponseListener;)V
    .registers 4

    .line 1
    iput-object p3, p0, Lcom/android/billingclient/api/zzbq;->zza:Lcom/android/billingclient/api/InAppMessageResponseListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/billingclient/api/zzbq;->zza:Lcom/android/billingclient/api/InAppMessageResponseListener;

    invoke-static {p2}, Lcom/android/billingclient/api/InAppMessageResult;->zza(Landroid/os/Bundle;)Lcom/android/billingclient/api/InAppMessageResult;

    move-result-object p2

    .line 2
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/InAppMessageResponseListener;->onInAppMessageResponse(Lcom/android/billingclient/api/InAppMessageResult;)V

    return-void
.end method
