.class public final synthetic Lcom/android/billingclient/api/zzbb;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljava/util/concurrent/Future;

.field public final synthetic zzb:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbb;->zza:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbb;->zzb:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbb;->zza:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/billingclient/api/zzbb;->zzb:Ljava/lang/Runnable;

    const/4 v2, 0x1

    .line 2
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string v0, "BillingClient"

    const-string v2, "Async task is taking too long, cancel it!"

    .line 3
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_20

    .line 4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_20
    return-void
.end method
