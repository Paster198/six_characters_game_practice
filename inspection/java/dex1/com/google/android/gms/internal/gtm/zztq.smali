.class final synthetic Lcom/google/android/gms/internal/gtm/zztq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field static final synthetic zza:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuy;->zza()[I

    const/4 v0, 0x7

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/gtm/zztq;->zza:[I

    const/4 v2, 0x1

    const/4 v3, 0x3

    :try_start_a
    aput v2, v1, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_c} :catch_c

    :catch_c
    const/4 v1, 0x2

    const/4 v4, 0x4

    :try_start_e
    sget-object v5, Lcom/google/android/gms/internal/gtm/zztq;->zza:[I

    aput v1, v5, v4
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v5, Lcom/google/android/gms/internal/gtm/zztq;->zza:[I

    aput v3, v5, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_16} :catch_16

    :catch_16
    const/4 v1, 0x5

    :try_start_17
    sget-object v3, Lcom/google/android/gms/internal/gtm/zztq;->zza:[I

    aput v4, v3, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_1b} :catch_1b

    :catch_1b
    const/4 v3, 0x6

    :try_start_1c
    sget-object v4, Lcom/google/android/gms/internal/gtm/zztq;->zza:[I

    aput v1, v4, v3
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_20} :catch_20

    :catch_20
    :try_start_20
    sget-object v1, Lcom/google/android/gms/internal/gtm/zztq;->zza:[I

    const/4 v4, 0x0

    aput v3, v1, v4
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_25} :catch_25

    :catch_25
    :try_start_25
    sget-object v1, Lcom/google/android/gms/internal/gtm/zztq;->zza:[I

    aput v0, v1, v2
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_29} :catch_29

    :catch_29
    return-void
.end method
