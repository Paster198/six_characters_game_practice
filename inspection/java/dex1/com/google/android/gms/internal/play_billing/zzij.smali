.class public final Lcom/google/android/gms/internal/play_billing/zzij;
.super Lcom/google/android/gms/internal/play_billing/zzgl;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzil;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzim;->zzb()Lcom/google/android/gms/internal/play_billing/zzim;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;
    .registers 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzF()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzn()V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzij;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzim;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzim;->zzc(Lcom/google/android/gms/internal/play_billing/zzim;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
