.class final Lcom/google/android/gms/internal/auth/zzgg;
.super Lcom/google/android/gms/internal/auth/zzdr;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/auth/zzgg;


# instance fields
.field private zzb:[Ljava/lang/Object;

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzgg;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/auth/zzgg;-><init>([Ljava/lang/Object;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzgg;->zza:Lcom/google/android/gms/internal/auth/zzgg;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    const/16 v0, 0xa

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/auth/zzgg;-><init>([Ljava/lang/Object;IZ)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;IZ)V
    .registers 4

    .line 2
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzdr;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/auth/zzgg;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgg;->zza:Lcom/google/android/gms/internal/auth/zzgg;

    return-object v0
.end method

.method private final zzf(I)Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

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
    iget v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    if-ge p1, v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzgg;->zzf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    if-ltz p1, :cond_3e

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    if-gt p1, v0, :cond_3e

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzb:[Ljava/lang/Object;

    .line 3
    array-length v2, v1

    if-ge v0, v2, :cond_15

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 4
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    :cond_15
    mul-int/lit8 v0, v0, 0x3

    .line 9
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzb:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    sub-int/2addr v3, p1

    .line 7
    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzb:[Ljava/lang/Object;

    .line 4
    :goto_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzb:[Ljava/lang/Object;

    .line 8
    aput-object p2, v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->modCount:I

    return-void

    .line 1
    :cond_3e
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzgg;->zzf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 6

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzb:[Ljava/lang/Object;

    .line 11
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_16

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    .line 12
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzb:[Ljava/lang/Object;

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    .line 13
    aput-object p1, v0, v1

    .line 14
    iget p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->modCount:I

    return v3
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzgg;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzb:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzgg;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzb:[Ljava/lang/Object;

    .line 3
    aget-object v1, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_18

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 4
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    iget p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->modCount:I

    return-object v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzgg;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzb:[Ljava/lang/Object;

    .line 3
    aget-object v1, v0, p1

    .line 4
    aput-object p2, v0, p1

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzgg;->modCount:I

    return-object v1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    return v0
.end method

.method public final bridge synthetic zzd(I)Lcom/google/android/gms/internal/auth/zzez;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    if-lt p1, v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzb:[Ljava/lang/Object;

    .line 2
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/auth/zzgg;

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzgg;->zzc:I

    const/4 v2, 0x1

    .line 3
    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/auth/zzgg;-><init>([Ljava/lang/Object;IZ)V

    return-object v0

    .line 1
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
