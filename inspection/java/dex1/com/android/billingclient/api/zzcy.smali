.class final Lcom/android/billingclient/api/zzcy;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/zzda;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/zzda;Lcom/android/billingclient/api/zzcz;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/billingclient/api/zzcy;->zza:Lcom/android/billingclient/api/zzda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1
    const-string p1, "BillingClientTesting"

    const-string v0, "Billing Override Service connected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzcy;->zza:Lcom/android/billingclient/api/zzda;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzaz;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/billingclient/api/zzda;->zzaH(Lcom/android/billingclient/api/zzda;Lcom/google/android/gms/internal/play_billing/zzba;)V

    const/4 p2, 0x2

    .line 3
    invoke-static {p1, p2}, Lcom/android/billingclient/api/zzda;->zzaI(Lcom/android/billingclient/api/zzda;I)V

    const/16 p2, 0x1a

    .line 4
    invoke-static {p1, p2}, Lcom/android/billingclient/api/zzda;->zzaO(Lcom/android/billingclient/api/zzda;I)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    const-string p1, "BillingClientTesting"

    const-string v0, "Billing Override Service disconnected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzcy;->zza:Lcom/android/billingclient/api/zzda;

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/android/billingclient/api/zzda;->zzaH(Lcom/android/billingclient/api/zzda;Lcom/google/android/gms/internal/play_billing/zzba;)V

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/android/billingclient/api/zzda;->zzaI(Lcom/android/billingclient/api/zzda;I)V

    return-void
.end method
