.class Lcom/google/android/gms/internal/play_billing/zzfq;
.super Lcom/google/android/gms/internal/play_billing/zzft;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private zzb:I


# direct methods
.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/play_billing/zzfs;)V
    .registers 6

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzft;-><init>(Lcom/google/android/gms/internal/play_billing/zzfs;)V

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfq;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/play_billing/zzhb;
        }
    .end annotation

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzfq;->zzb:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfq;->zzb:I

    return p1
.end method
