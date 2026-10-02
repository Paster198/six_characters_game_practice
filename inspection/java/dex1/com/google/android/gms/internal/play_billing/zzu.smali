.class public final Lcom/google/android/gms/internal/play_billing/zzu;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/play_billing/zzr;)Lcom/google/android/gms/internal/play_billing/zzdk;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzp;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzt;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzt;-><init>(Lcom/google/android/gms/internal/play_billing/zzp;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzp;->zzb:Lcom/google/android/gms/internal/play_billing/zzt;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzp;->zza:Ljava/lang/Object;

    .line 4
    :try_start_12
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzr;->zza(Lcom/google/android/gms/internal/play_billing/zzp;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/play_billing/zzp;->zza:Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_19

    return-object v1

    :catch_19
    move-exception p0

    .line 5
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/play_billing/zzt;->zzc(Ljava/lang/Throwable;)Z

    return-object v1
.end method
