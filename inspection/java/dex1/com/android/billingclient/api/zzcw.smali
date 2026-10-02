.class final Lcom/android/billingclient/api/zzcw;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdd;


# instance fields
.field final synthetic zza:Landroidx/core/util/Consumer;

.field final synthetic zzb:Ljava/lang/Runnable;

.field final synthetic zzc:Lcom/android/billingclient/api/zzda;

.field final synthetic zzd:I


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/zzda;ILandroidx/core/util/Consumer;Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    iput p2, p0, Lcom/android/billingclient/api/zzcw;->zzd:I

    iput-object p3, p0, Lcom/android/billingclient/api/zzcw;->zza:Landroidx/core/util/Consumer;

    iput-object p4, p0, Lcom/android/billingclient/api/zzcw;->zzb:Ljava/lang/Runnable;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/billingclient/api/zzcw;->zzc:Lcom/android/billingclient/api/zzda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .registers 7

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    const-string v1, "BillingClientTesting"

    const/16 v2, 0x1c

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/billingclient/api/zzcw;->zzc:Lcom/android/billingclient/api/zzda;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaX:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 2
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzF:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v3, v2, v4}, Lcom/android/billingclient/api/zzda;->zzaN(Lcom/android/billingclient/api/zzda;Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    const-string v0, "Asynchronous call to Billing Override Service timed out."

    .line 3
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    .line 6
    :cond_17
    iget-object v0, p0, Lcom/android/billingclient/api/zzcw;->zzc:Lcom/android/billingclient/api/zzda;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaQ:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 4
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzF:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v3, v2, v4}, Lcom/android/billingclient/api/zzda;->zzaN(Lcom/android/billingclient/api/zzda;Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    const-string v0, "An error occurred while retrieving billing override."

    .line 5
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_25
    iget-object p1, p0, Lcom/android/billingclient/api/zzcw;->zzb:Ljava/lang/Runnable;

    .line 6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzcw;->zzc:Lcom/android/billingclient/api/zzda;

    invoke-static {v1, v0}, Lcom/android/billingclient/api/zzda;->zzaJ(Lcom/android/billingclient/api/zzda;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/android/billingclient/api/zzcw;->zzd:I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/android/billingclient/api/zzda;->zzaL(Lcom/android/billingclient/api/zzda;II)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    iget-object v0, p0, Lcom/android/billingclient/api/zzcw;->zza:Landroidx/core/util/Consumer;

    .line 4
    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_1e
    iget-object p1, p0, Lcom/android/billingclient/api/zzcw;->zzb:Ljava/lang/Runnable;

    .line 5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
