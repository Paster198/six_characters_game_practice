.class final Lcom/google/android/gms/internal/play_billing/zzjy;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgs;


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzgs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzjy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzjy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzjy;->zza:Lcom/google/android/gms/internal/play_billing/zzgs;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_22

    if-eq p1, v0, :cond_1f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    const/4 v1, 0x3

    if-eq p1, v1, :cond_19

    const/4 v1, 0x4

    if-eq p1, v1, :cond_16

    const/4 v1, 0x5

    if-eq p1, v1, :cond_13

    const/4 p1, 0x0

    goto :goto_24

    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzf:Lcom/google/android/gms/internal/play_billing/zzjz;

    goto :goto_24

    :cond_16
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zze:Lcom/google/android/gms/internal/play_billing/zzjz;

    goto :goto_24

    :cond_19
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzd:Lcom/google/android/gms/internal/play_billing/zzjz;

    goto :goto_24

    :cond_1c
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzc:Lcom/google/android/gms/internal/play_billing/zzjz;

    goto :goto_24

    :cond_1f
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzb:Lcom/google/android/gms/internal/play_billing/zzjz;

    goto :goto_24

    :cond_22
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    :goto_24
    if-eqz p1, :cond_27

    return v0

    :cond_27
    const/4 p1, 0x0

    return p1
.end method
