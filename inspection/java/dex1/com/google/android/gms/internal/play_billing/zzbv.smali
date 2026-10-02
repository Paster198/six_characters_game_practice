.class Lcom/google/android/gms/internal/play_billing/zzbv;
.super Lcom/google/android/gms/internal/play_billing/zzbw;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field zza:[Ljava/lang/Object;

.field zzb:I

.field zzc:Z


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzbw;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzbv;->zza:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzbv;->zzb:I

    return-void
.end method
