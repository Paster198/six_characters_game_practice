.class final Lcom/google/android/gms/internal/auth/zzek;
.super Lcom/google/android/gms/internal/auth/zzdr;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/auth/zzez;
.implements Lcom/google/android/gms/internal/auth/zzge;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/auth/zzek;


# instance fields
.field private zzb:[D

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzek;

    const/4 v1, 0x0

    new-array v2, v1, [D

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/auth/zzek;-><init>([DIZ)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzek;->zza:Lcom/google/android/gms/internal/auth/zzek;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    const/16 v0, 0xa

    .line 1
    new-array v0, v0, [D

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/auth/zzek;-><init>([DIZ)V

    return-void
.end method

.method private constructor <init>([DIZ)V
    .registers 4

    .line 2
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzdr;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    iput p2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    return-void
.end method

.method private final zzf(I)Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zzg(I)V
    .registers 3

    if-ltz p1, :cond_7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    if-ge p1, v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzek;->zzf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .registers 8

    .line 1
    check-cast p2, Ljava/lang/Double;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    if-ltz p1, :cond_44

    iget p2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    if-gt p1, p2, :cond_44

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    .line 5
    array-length v3, v2

    if-ge p2, v3, :cond_1b

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr p2, p1

    .line 6
    invoke-static {v2, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_33

    :cond_1b
    mul-int/lit8 p2, p2, 0x3

    .line 11
    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    .line 7
    new-array p2, p2, [D

    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    sub-int/2addr v4, p1

    .line 9
    invoke-static {v2, p1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    .line 6
    :goto_33
    iget-object p2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    .line 10
    aput-wide v0, p2, p1

    iget p1, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    .line 11
    iget p1, p0, Lcom/google/android/gms/internal/auth/zzek;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzek;->modCount:I

    return-void

    .line 3
    :cond_44
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzek;->zzf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .registers 4

    .line 12
    check-cast p1, Ljava/lang/Double;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/auth/zzek;->zze(D)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/auth/zzek;

    if-nez v0, :cond_11

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/auth/zzdr;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 4
    :cond_11
    check-cast p1, Lcom/google/android/gms/internal/auth/zzek;

    iget v0, p1, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return v1

    :cond_19
    iget v2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_41

    add-int/2addr v2, v0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    .line 6
    array-length v3, v0

    if-le v2, v3, :cond_2d

    .line 7
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    .line 10
    :cond_2d
    iget-object v0, p1, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    iget v4, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    iget p1, p1, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    .line 8
    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/auth/zzek;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzek;->modCount:I

    return v0

    .line 4
    :cond_41
    new-instance p1, Ljava/lang/OutOfMemoryError;

    .line 5
    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzek;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/auth/zzek;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/auth/zzdr;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/auth/zzek;

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    .line 3
    iget v2, p1, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 4
    :cond_17
    iget-object p1, p1, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    move v1, v3

    :goto_1a
    iget v2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    if-ge v1, v2, :cond_34

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    .line 5
    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    aget-wide v6, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_31

    return v3

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_34
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzek;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    .line 2
    aget-wide v1, v0, p1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    if-ge v0, v2, :cond_1c

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    sget-object v4, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1c
    return v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 9

    .line 1
    instance-of v0, p1, Ljava/lang/Double;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget p1, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p1, :cond_1d

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    .line 3
    aget-wide v5, v4, v0

    cmpl-double v4, v5, v2

    if-nez v4, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    return v1
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzek;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    .line 3
    aget-wide v1, v0, p1

    iget v3, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_18

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 4
    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    iget p1, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/auth/zzek;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzek;->modCount:I

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method protected final removeRange(II)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    if-lt p2, p1, :cond_1a

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    sub-int/2addr v1, p2

    .line 3
    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/auth/zzek;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzek;->modCount:I

    return-void

    .line 1
    :cond_1a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    check-cast p2, Ljava/lang/Double;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzek;->zzg(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    .line 5
    aget-wide v2, p2, p1

    .line 6
    aput-wide v0, p2, p1

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    return v0
.end method

.method public final bridge synthetic zzd(I)Lcom/google/android/gms/internal/auth/zzez;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    if-lt p1, v0, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/auth/zzek;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    .line 2
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/auth/zzek;-><init>([DIZ)V

    return-object v0

    .line 1
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zze(D)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    .line 2
    array-length v2, v1

    if-ne v0, v2, :cond_18

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 3
    new-array v2, v2, [D

    const/4 v3, 0x0

    .line 4
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzek;->zzb:[D

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/auth/zzek;->zzc:I

    .line 5
    aput-wide p1, v0, v1

    return-void
.end method
