.class public final Lcom/google/android/gms/internal/play_billing/zzv;
.super Lcom/google/android/gms/internal/play_billing/zzo;
.source "com.android.billingclient:billing@@9.1.0"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzo;-><init>()V

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/play_billing/zzv;
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzv;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final zzd(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzo;->zzd(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
