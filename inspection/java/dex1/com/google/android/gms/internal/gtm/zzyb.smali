.class final Lcom/google/android/gms/internal/gtm/zzyb;
.super Lcom/google/android/gms/internal/gtm/zzya;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzya;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(I[BII)I
    .registers 12

    :goto_0
    if-ge p3, p4, :cond_9

    .line 1
    aget-byte p1, p2, p3

    if-ltz p1, :cond_9

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    if-lt p3, p4, :cond_d

    return p1

    :cond_d
    :goto_d
    if-lt p3, p4, :cond_10

    return p1

    :cond_10
    add-int/lit8 v0, p3, 0x1

    .line 2
    aget-byte v1, p2, p3

    if-gez v1, :cond_7a

    const/16 v2, -0x20

    const/16 v3, -0x41

    const/4 v4, -0x1

    if-ge v1, v2, :cond_2b

    if-ge v0, p4, :cond_2a

    const/16 v2, -0x3e

    if-lt v1, v2, :cond_29

    add-int/lit8 p3, p3, 0x2

    .line 3
    aget-byte v0, p2, v0

    if-le v0, v3, :cond_d

    :cond_29
    return v4

    :cond_2a
    return v1

    :cond_2b
    const/16 v5, -0x10

    if-ge v1, v5, :cond_55

    add-int/lit8 v5, p4, -0x1

    if-lt v0, v5, :cond_38

    .line 6
    invoke-static {p2, v0, p4}, Lcom/google/android/gms/internal/gtm/zzyd;->zza([BII)I

    move-result p1

    return p1

    :cond_38
    add-int/lit8 v5, p3, 0x2

    .line 4
    aget-byte v0, p2, v0

    if-gt v0, v3, :cond_54

    const/16 v6, -0x60

    if-ne v1, v2, :cond_46

    if-lt v0, v6, :cond_45

    goto :goto_46

    :cond_45
    return v4

    :cond_46
    :goto_46
    const/16 v2, -0x13

    if-ne v1, v2, :cond_4e

    if-ge v0, v6, :cond_4d

    goto :goto_4e

    :cond_4d
    return v4

    :cond_4e
    :goto_4e
    add-int/lit8 p3, p3, 0x3

    aget-byte v0, p2, v5

    if-le v0, v3, :cond_d

    :cond_54
    return v4

    :cond_55
    add-int/lit8 v2, p4, -0x2

    if-lt v0, v2, :cond_5e

    .line 7
    invoke-static {p2, v0, p4}, Lcom/google/android/gms/internal/gtm/zzyd;->zza([BII)I

    move-result p1

    return p1

    :cond_5e
    add-int/lit8 v2, p3, 0x2

    .line 5
    aget-byte v0, p2, v0

    if-gt v0, v3, :cond_79

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_79

    add-int/lit8 v0, p3, 0x3

    aget-byte v1, p2, v2

    if-gt v1, v3, :cond_79

    add-int/lit8 p3, p3, 0x4

    aget-byte v0, p2, v0

    if-le v0, v3, :cond_d

    :cond_79
    return v4

    :cond_7a
    move p3, v0

    goto :goto_d
.end method
