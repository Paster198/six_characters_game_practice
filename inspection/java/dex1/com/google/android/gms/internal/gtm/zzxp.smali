.class public final Lcom/google/android/gms/internal/gtm/zzxp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzxp;


# instance fields
.field private zzb:I

.field private zzc:[I

.field private zzd:[Ljava/lang/Object;

.field private zze:I

.field private zzf:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzxp;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    .line 1
    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/gtm/zzxp;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzxp;->zza:Lcom/google/android/gms/internal/gtm/zzxp;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    invoke-direct {p0, v3, v1, v0, v2}, Lcom/google/android/gms/internal/gtm/zzxp;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzc:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzf:Z

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzxp;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzxp;->zza:Lcom/google/android/gms/internal/gtm/zzxp;

    return-object v0
.end method

.method static zzd(Lcom/google/android/gms/internal/gtm/zzxp;Lcom/google/android/gms/internal/gtm/zzxp;)Lcom/google/android/gms/internal/gtm/zzxp;
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    iget v1, p1, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzc:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/gtm/zzxp;->zzc:[I

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    iget v4, p1, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    iget p1, p1, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzxp;

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/gtm/zzxp;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method static zze()Lcom/google/android/gms/internal/gtm/zzxp;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzxp;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1
    invoke-direct {v0, v4, v2, v1, v3}, Lcom/google/android/gms/internal/gtm/zzxp;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1
    :cond_8
    instance-of v2, p1, Lcom/google/android/gms/internal/gtm/zzxp;

    if-nez v2, :cond_d

    return v1

    .line 2
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzxp;

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    if-ne v2, v3, :cond_3d

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzc:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/gtm/zzxp;->zzc:[I

    move v5, v1

    :goto_1a
    if-ge v5, v2, :cond_26

    .line 3
    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_23

    goto :goto_3d

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_26
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    move v4, v1

    :goto_2d
    if-ge v4, v3, :cond_3c

    .line 4
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_3c
    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method public final hashCode()I
    .registers 9

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    add-int/lit16 v1, v0, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzc:[I

    const/16 v3, 0x11

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    :goto_d
    if-ge v5, v0, :cond_17

    mul-int/lit8 v6, v6, 0x1f

    .line 1
    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_17
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    :goto_1e
    if-ge v4, v2, :cond_2c

    mul-int/lit8 v3, v3, 0x1f

    .line 2
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_2c
    add-int/2addr v1, v3

    return v1
.end method

.method public final zza()I
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zze:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_94

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    if-ge v0, v2, :cond_91

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzc:[I

    .line 1
    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_77

    const/4 v4, 0x1

    if-eq v2, v4, :cond_65

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4d

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3d

    const/4 v4, 0x5

    if-ne v2, v4, :cond_33

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    .line 2
    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    shl-int/lit8 v2, v3, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    goto :goto_8c

    .line 8
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3
    :cond_3d
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzto;->zzC(I)I

    move-result v2

    add-int/2addr v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzxp;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzxp;->zza()I

    move-result v3

    goto :goto_8b

    :cond_4d
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    .line 5
    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/gms/internal/gtm/zztd;

    shl-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v3

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zztd;->zzd()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    goto :goto_8d

    :cond_65
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    .line 7
    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    shl-int/lit8 v2, v3, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    goto :goto_8c

    :cond_77
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    .line 8
    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    shl-int/lit8 v2, v3, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/gtm/zzto;->zzE(J)I

    move-result v3

    :goto_8b
    add-int/2addr v2, v3

    :goto_8c
    add-int/2addr v1, v2

    :goto_8d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_91
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zze:I

    return v1

    :cond_94
    return v0
.end method

.method public final zzb()I
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zze:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_42

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    if-ge v0, v2, :cond_3f

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzc:[I

    .line 1
    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    .line 2
    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/gtm/zztd;

    const/16 v4, 0x8

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v4

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zztd;->zzd()I

    move-result v3

    add-int/2addr v4, v4

    const/16 v5, 0x10

    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v5

    ushr-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v2

    add-int/2addr v5, v2

    add-int/2addr v4, v5

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v2

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v2, v5

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_3f
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zze:I

    return v1

    :cond_42
    return v0
.end method

.method public final zzf()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzf:Z

    return-void
.end method

.method final zzg(Ljava/lang/StringBuilder;I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzc:[I

    .line 1
    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/gtm/zzwm;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method final zzh(ILjava/lang/Object;)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzf:Z

    if-eqz v0, :cond_31

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzc:[I

    .line 1
    array-length v2, v1

    if-ne v0, v2, :cond_22

    const/4 v2, 0x4

    if-ge v0, v2, :cond_11

    const/16 v2, 0x8

    goto :goto_13

    :cond_11
    shr-int/lit8 v2, v0, 0x1

    :goto_13
    add-int/2addr v0, v2

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzc:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    .line 3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzc:[I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    .line 4
    aput p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    .line 5
    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    return-void

    :cond_31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 6
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method final zzi(Lcom/google/android/gms/internal/gtm/zztp;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzc:[I

    .line 1
    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    .line 2
    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zztp;->zzw(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/gtm/zztp;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    if-eqz v0, :cond_5f

    const/4 v0, 0x0

    :goto_5
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzb:I

    if-ge v0, v1, :cond_5f

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzc:[I

    .line 1
    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzxp;->zzd:[Ljava/lang/Object;

    aget-object v2, v2, v0

    ushr-int/lit8 v3, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_53

    const/4 v4, 0x1

    if-eq v1, v4, :cond_49

    const/4 v4, 0x2

    if-eq v1, v4, :cond_43

    const/4 v4, 0x3

    if-eq v1, v4, :cond_37

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2d

    .line 5
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/internal/gtm/zztp;->zzk(II)V

    goto :goto_5c

    .line 8
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2
    :cond_37
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/gtm/zztp;->zzF(I)V

    .line 3
    check-cast v2, Lcom/google/android/gms/internal/gtm/zzxp;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/gtm/zzxp;->zzj(Lcom/google/android/gms/internal/gtm/zztp;)V

    .line 4
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/gtm/zztp;->zzh(I)V

    goto :goto_5c

    .line 6
    :cond_43
    check-cast v2, Lcom/google/android/gms/internal/gtm/zztd;

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/gtm/zztp;->zzd(ILcom/google/android/gms/internal/gtm/zztd;)V

    goto :goto_5c

    .line 7
    :cond_49
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/gms/internal/gtm/zztp;->zzm(IJ)V

    goto :goto_5c

    .line 8
    :cond_53
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/gms/internal/gtm/zztp;->zzt(IJ)V

    :goto_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5f
    return-void
.end method
