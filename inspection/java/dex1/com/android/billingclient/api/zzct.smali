.class public final synthetic Lcom/android/billingclient/api/zzct;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzda;

.field public final synthetic zzb:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

.field public final synthetic zzc:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzda;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzct;->zza:Lcom/android/billingclient/api/zzda;

    iput-object p2, p0, Lcom/android/billingclient/api/zzct;->zzb:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iput-object p3, p0, Lcom/android/billingclient/api/zzct;->zzc:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/billingclient/api/zzct;->zza:Lcom/android/billingclient/api/zzda;

    iget-object v1, p0, Lcom/android/billingclient/api/zzct;->zzb:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iget-object v2, p0, Lcom/android/billingclient/api/zzct;->zzc:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/zzda;->zzaD(Lcom/android/billingclient/api/zzda;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    return-void
.end method
