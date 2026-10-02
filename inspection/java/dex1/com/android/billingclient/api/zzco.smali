.class public final synthetic Lcom/android/billingclient/api/zzco;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzda;

.field public final synthetic zzb:Lcom/android/billingclient/api/QueryProductDetailsParams;

.field public final synthetic zzc:Lcom/android/billingclient/api/ProductDetailsResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzda;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzco;->zza:Lcom/android/billingclient/api/zzda;

    iput-object p2, p0, Lcom/android/billingclient/api/zzco;->zzb:Lcom/android/billingclient/api/QueryProductDetailsParams;

    iput-object p3, p0, Lcom/android/billingclient/api/zzco;->zzc:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/billingclient/api/zzco;->zza:Lcom/android/billingclient/api/zzda;

    iget-object v1, p0, Lcom/android/billingclient/api/zzco;->zzb:Lcom/android/billingclient/api/QueryProductDetailsParams;

    iget-object v2, p0, Lcom/android/billingclient/api/zzco;->zzc:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/zzda;->zzaF(Lcom/android/billingclient/api/zzda;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method
