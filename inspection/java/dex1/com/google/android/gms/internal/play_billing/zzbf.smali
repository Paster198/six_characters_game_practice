.class public final Lcom/google/android/gms/internal/play_billing/zzbf;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzbq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzbd;-><init>()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_11

    .line 3
    :catchall_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzbe;-><init>()V

    .line 2
    :goto_11
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzbf;->zza:Lcom/google/android/gms/internal/play_billing/zzbq;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzbq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzbf;->zza:Lcom/google/android/gms/internal/play_billing/zzbq;

    return-object v0
.end method
