.class final Lcom/android/billingclient/api/zzz;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private final zzc:Lcom/android/billingclient/api/UserChoiceBillingListener;

.field private final zzd:Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

.field private final zze:Lcom/android/billingclient/api/zzdd;

.field private final zzf:Lcom/android/billingclient/api/zzy;

.field private final zzg:Lcom/android/billingclient/api/zzy;

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/play_billing/zzcf;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzdu;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/DeveloperProvidedBillingListener;Lcom/android/billingclient/api/zzdd;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzk()Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object p3

    iput-object p3, p0, Lcom/android/billingclient/api/zzz;->zzi:Lcom/google/android/gms/internal/play_billing/zzcf;

    iput-object p1, p0, Lcom/android/billingclient/api/zzz;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/billingclient/api/zzz;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    iput-object p4, p0, Lcom/android/billingclient/api/zzz;->zzc:Lcom/android/billingclient/api/UserChoiceBillingListener;

    iput-object p5, p0, Lcom/android/billingclient/api/zzz;->zzd:Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

    iput-object p6, p0, Lcom/android/billingclient/api/zzz;->zze:Lcom/android/billingclient/api/zzdd;

    new-instance p1, Lcom/android/billingclient/api/zzy;

    const/4 p2, 0x1

    .line 2
    invoke-direct {p1, p0, p2}, Lcom/android/billingclient/api/zzy;-><init>(Lcom/android/billingclient/api/zzz;Z)V

    iput-object p1, p0, Lcom/android/billingclient/api/zzz;->zzf:Lcom/android/billingclient/api/zzy;

    new-instance p1, Lcom/android/billingclient/api/zzy;

    const/4 p2, 0x0

    .line 3
    invoke-direct {p1, p0, p2}, Lcom/android/billingclient/api/zzy;-><init>(Lcom/android/billingclient/api/zzz;Z)V

    iput-object p1, p0, Lcom/android/billingclient/api/zzz;->zzg:Lcom/android/billingclient/api/zzy;

    return-void
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/zzdd;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/zzz;->zze:Lcom/android/billingclient/api/zzdd;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/DeveloperProvidedBillingListener;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/zzz;->zzd:Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/zzz;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/UserChoiceBillingListener;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/zzz;->zzc:Lcom/android/billingclient/api/UserChoiceBillingListener;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/android/billingclient/api/zzz;)Lcom/google/android/gms/internal/play_billing/zzcf;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/zzz;->zzi:Lcom/google/android/gms/internal/play_billing/zzcf;

    return-object p0
.end method


# virtual methods
.method final zzc()Lcom/android/billingclient/api/DeveloperProvidedBillingListener;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzz;->zzd:Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

    return-object v0
.end method

.method final zze()Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzz;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object v0
.end method

.method final zzh()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzz;->zzf:Lcom/android/billingclient/api/zzy;

    iget-object v1, p0, Lcom/android/billingclient/api/zzz;->zza:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/zzy;->zzc(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzz;->zzg:Lcom/android/billingclient/api/zzy;

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/zzy;->zzc(Landroid/content/Context;)V

    return-void
.end method

.method final zzi(Z)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 2
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/billingclient/api/zzz;->zzh:Z

    iget-object p1, p0, Lcom/android/billingclient/api/zzz;->zzg:Lcom/android/billingclient/api/zzy;

    iget-object v2, p0, Lcom/android/billingclient/api/zzz;->zza:Landroid/content/Context;

    .line 4
    invoke-virtual {p1, v2, v1}, Lcom/android/billingclient/api/zzy;->zza(Landroid/content/Context;Landroid/content/IntentFilter;)V

    iget-boolean p1, p0, Lcom/android/billingclient/api/zzz;->zzh:Z

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/android/billingclient/api/zzz;->zzf:Lcom/android/billingclient/api/zzy;

    const-string v1, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    .line 5
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/billingclient/api/zzy;->zzb(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V

    return-void

    :cond_28
    iget-object p1, p0, Lcom/android/billingclient/api/zzz;->zzf:Lcom/android/billingclient/api/zzy;

    .line 6
    invoke-virtual {p1, v2, v0}, Lcom/android/billingclient/api/zzy;->zza(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method

.method final zzj(Lcom/google/android/gms/internal/play_billing/zzcf;)V
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/zzz;->zzi:Lcom/google/android/gms/internal/play_billing/zzcf;

    return-void
.end method
