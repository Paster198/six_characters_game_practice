.class public final Lcom/google/android/gms/internal/play_billing/zzgv;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field public static final zza:[B


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x0

    .line 1
    new-array v2, v0, [B

    sput-object v2, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 2
    sget v1, Lcom/google/android/gms/internal/play_billing/zzft;->zza:I

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzfr;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzfr;-><init>([BIIZLcom/google/android/gms/internal/play_billing/zzfs;)V

    .line 4
    :try_start_13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzfq;->zza(I)I
    :try_end_16
    .catch Lcom/google/android/gms/internal/play_billing/zzhb; {:try_start_13 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza(Z)I
    .registers 1

    if-eqz p0, :cond_5

    const/16 p0, 0x4cf

    return p0

    :cond_5
    const/16 p0, 0x4d5

    return p0
.end method

.method static zzb(I[BII)I
    .registers 6

    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_d

    mul-int/lit8 p0, p0, 0x1f

    .line 1
    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return p0
.end method
