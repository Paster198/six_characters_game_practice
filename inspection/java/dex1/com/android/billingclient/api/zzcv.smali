.class public final synthetic Lcom/android/billingclient/api/zzcv;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzda;

.field public final synthetic zzb:Landroid/app/Activity;

.field public final synthetic zzc:Lcom/android/billingclient/api/BillingFlowParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzda;Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzcv;->zza:Lcom/android/billingclient/api/zzda;

    iput-object p2, p0, Lcom/android/billingclient/api/zzcv;->zzb:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/billingclient/api/zzcv;->zzc:Lcom/android/billingclient/api/BillingFlowParams;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/billingclient/api/zzcv;->zza:Lcom/android/billingclient/api/zzda;

    iget-object v1, p0, Lcom/android/billingclient/api/zzcv;->zzb:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/billingclient/api/zzcv;->zzc:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/zzda;->zzaC(Lcom/android/billingclient/api/zzda;Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    return-object v0
.end method
