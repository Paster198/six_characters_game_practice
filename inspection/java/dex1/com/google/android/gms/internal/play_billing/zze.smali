.class final Lcom/google/android/gms/internal/play_billing/zze;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zze;

.field static final zzb:Lcom/google/android/gms/internal/play_billing/zze;


# instance fields
.field final zzc:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/zzo;->zza:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    sput-object v1, Lcom/google/android/gms/internal/play_billing/zze;->zzb:Lcom/google/android/gms/internal/play_billing/zze;

    sput-object v1, Lcom/google/android/gms/internal/play_billing/zze;->zza:Lcom/google/android/gms/internal/play_billing/zze;

    return-void

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zze;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/play_billing/zze;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zze;->zzb:Lcom/google/android/gms/internal/play_billing/zze;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zze;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/play_billing/zze;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zze;->zza:Lcom/google/android/gms/internal/play_billing/zze;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zze;->zzc:Ljava/lang/Throwable;

    return-void
.end method
