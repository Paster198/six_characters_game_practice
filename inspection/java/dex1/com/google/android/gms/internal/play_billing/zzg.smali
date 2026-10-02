.class final Lcom/google/android/gms/internal/play_billing/zzg;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field final zza:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzg;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzf;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzf;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzg;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/play_billing/zzo;->zzf:I

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzg;->zza:Ljava/lang/Throwable;

    return-void
.end method
