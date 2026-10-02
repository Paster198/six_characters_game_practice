.class final Lcom/google/android/gms/internal/play_billing/zzff;
.super Lcom/google/android/gms/internal/play_billing/zzfb;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/play_billing/zzgu;


# static fields
.field private static final zza:[Z


# instance fields
.field private zzb:[Z

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/play_billing/zzff;->zza:[Z

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzff;

    invoke-direct {v2, v1, v0, v0}, Lcom/google/android/gms/internal/play_billing/zzff;-><init>([ZIZ)V

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzff;->zza:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzff;-><init>([ZIZ)V

    return-void
.end method

.method private constructor <init>([ZIZ)V
    .registers 4

    .line 2
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzfb;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    return-void
.end method

.method private static zzg(I)I
    .registers 2

    mul-int/lit8 p0, p0, 0x3

    .line 1
    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final zzh(I)Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

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

.method private final zzi(I)V
    .registers 3

    if-ltz p1, :cond_7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    if-ge p1, v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzff;->zzh(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .registers 7

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfb;->zza()V

    if-ltz p1, :cond_42

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    if-gt p1, v0, :cond_42

    add-int/lit8 v1, p1, 0x1

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    .line 5
    array-length v3, v2

    if-ge v0, v3, :cond_1b

    sub-int/2addr v0, p1

    .line 6
    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_31

    .line 7
    :cond_1b
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzff;->zzg(I)I

    move-result v0

    .line 8
    new-array v0, v0, [Z

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    const/4 v3, 0x0

    .line 9
    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    iget v3, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    sub-int/2addr v3, p1

    .line 10
    invoke-static {v2, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    .line 6
    :goto_31
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    .line 11
    aput-boolean p2, v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->modCount:I

    return-void

    .line 3
    :cond_42
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzff;->zzh(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzff;->zze(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfb;->zza()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzff;

    if-nez v0, :cond_f

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfb;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 4
    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzff;

    iget v0, p1, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    :cond_17
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_3f

    add-int/2addr v2, v0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    .line 6
    array-length v3, v0

    if-le v2, v3, :cond_2b

    .line 7
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    :cond_2b
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    iget v4, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    iget p1, p1, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    .line 8
    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->modCount:I

    return v0

    .line 4
    :cond_3f
    new-instance p1, Ljava/lang/OutOfMemoryError;

    .line 5
    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzff;->indexOf(Ljava/lang/Object;)I

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
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/zzff;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfb;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzff;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    .line 3
    iget v2, p1, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 4
    :cond_17
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    move v1, v3

    :goto_1a
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    if-ge v1, v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    .line 5
    aget-boolean v2, v2, v1

    aget-boolean v4, p1, v1

    if-eq v2, v4, :cond_27

    return v3

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2a
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzff;->zzi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    .line 2
    aget-boolean p1, v0, p1

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    if-ge v0, v2, :cond_14

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    aget-boolean v2, v2, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzgv;->zza(Z)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    return v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 6

    .line 1
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_1b

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    .line 3
    aget-boolean v3, v3, v2

    if-ne v3, p1, :cond_18

    return v2

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1b
    return v1
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfb;->zza()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzff;->zzi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    .line 3
    aget-boolean v1, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_18

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 4
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->modCount:I

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final removeRange(II)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfb;->zza()V

    if-lt p2, p1, :cond_1a

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    sub-int/2addr v1, p2

    .line 3
    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->modCount:I

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
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfb;->zza()V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzff;->zzi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    .line 5
    aget-boolean v1, v0, p1

    .line 6
    aput-boolean p2, v0, p1

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    return v0
.end method

.method public final bridge synthetic zzd(I)Lcom/google/android/gms/internal/play_billing/zzgu;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    if-lt p1, v0, :cond_18

    if-nez p1, :cond_9

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzff;->zza:[Z

    goto :goto_f

    .line 3
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    .line 2
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    .line 1
    :goto_f
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzff;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    const/4 v2, 0x1

    .line 3
    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzff;-><init>([ZIZ)V

    return-object v0

    .line 1
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zze(Z)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfb;->zza()V

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    .line 2
    array-length v1, v1

    if-ne v0, v1, :cond_1a

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzff;->zzg(I)I

    move-result v0

    .line 4
    new-array v0, v0, [Z

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    const/4 v3, 0x0

    .line 5
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzc:I

    .line 6
    aput-boolean p1, v0, v1

    return-void
.end method

.method public final zzf(I)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzff;->zzi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:[Z

    .line 2
    aget-boolean p1, v0, p1

    return p1
.end method
