.class final Lcom/google/android/gms/internal/play_billing/zzs;
.super Lcom/google/android/gms/internal/play_billing/zzo;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field final synthetic zzg:Lcom/google/android/gms/internal/play_billing/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzt;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzs;->zzg:Lcom/google/android/gms/internal/play_billing/zzt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzo;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzs;->zzg:Lcom/google/android/gms/internal/play_billing/zzt;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzt;->zza:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzp;

    if-nez v0, :cond_f

    const-string v0, "Completer object has been garbage collected, future will fail soon"

    return-object v0

    :cond_f
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzp;->zza:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
