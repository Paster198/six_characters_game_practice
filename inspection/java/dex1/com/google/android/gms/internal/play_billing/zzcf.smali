.class public abstract Lcom/google/android/gms/internal/play_billing/zzcf;
.super Lcom/google/android/gms/internal/play_billing/zzbx;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private transient zza:Lcom/google/android/gms/internal/play_billing/zzca;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzbx;-><init>()V

    return-void
.end method

.method static zzh(I)I
    .registers 6

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    if-ge p0, v0, :cond_1f

    add-int/lit8 v0, p0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_10
    add-int/2addr v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1e

    goto :goto_10

    :cond_1e
    return v0

    :cond_1f
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_24

    return v0

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "collection too large"

    .line 3
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static bridge synthetic zzj(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcf;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzm(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object p0

    return-object p0
.end method

.method public static zzk()Lcom/google/android/gms/internal/play_billing/zzcf;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcp;->zza:Lcom/google/android/gms/internal/play_billing/zzcp;

    return-object v0
.end method

.method private static varargs zzm(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcf;
    .registers 15

    if-eqz p0, :cond_79

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6d

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzh(I)I

    move-result v2

    .line 5
    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    move v3, v0

    move v5, v3

    move v8, v5

    :goto_11
    if-ge v3, p0, :cond_3b

    .line 6
    aget-object v4, p1, v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/play_billing/zzci;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 8
    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzbu;->zza(I)I

    move-result v10

    :goto_20
    and-int v11, v10, v7

    .line 9
    aget-object v12, v6, v11

    if-nez v12, :cond_2f

    add-int/lit8 v10, v8, 0x1

    .line 11
    aput-object v4, p1, v8

    .line 12
    aput-object v4, v6, v11

    add-int/2addr v5, v9

    move v8, v10

    goto :goto_38

    .line 10
    :cond_2f
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_38

    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_3b
    const/4 v3, 0x0

    .line 13
    invoke-static {p1, v8, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_4d

    .line 14
    aget-object p0, p1, v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzcr;

    .line 15
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzcr;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_4d
    div-int/lit8 v2, v2, 0x2

    .line 16
    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzh(I)I

    move-result p0

    if-ge p0, v2, :cond_5a

    .line 17
    invoke-static {v8, p1}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzm(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object p0

    return-object p0

    .line 18
    :cond_5a
    array-length p0, p1

    shr-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-ge v8, v0, :cond_66

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_66
    move-object v4, p1

    .line 19
    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzcp;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/play_billing/zzcp;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object v3

    .line 2
    :cond_6d
    aget-object p0, p1, v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzcr;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzcr;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 1
    :cond_79
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzcp;->zza:Lcom/google/android/gms/internal/play_billing/zzcp;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/zzcf;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzl()Z

    move-result v1

    if-eqz v1, :cond_24

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzcf;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzl()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcf;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_23

    goto :goto_24

    :cond_23
    return v2

    :cond_24
    :goto_24
    if-ne p1, p0, :cond_27

    return v0

    .line 4
    :cond_27
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_3f

    .line 5
    check-cast p1, Ljava/util/Set;

    .line 6
    :try_start_2d
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_3f

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_3b} :catch_3f
    .catch Ljava/lang/ClassCastException; {:try_start_2d .. :try_end_3b} :catch_3f

    if-nez p1, :cond_3e

    return v2

    :cond_3e
    return v0

    :catch_3f
    :cond_3f
    return v2
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzcq;->zza(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcf;->zze()Lcom/google/android/gms/internal/play_billing/zzcs;

    move-result-object v0

    return-object v0
.end method

.method public zzd()Lcom/google/android/gms/internal/play_billing/zzca;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zza:Lcom/google/android/gms/internal/play_billing/zzca;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzi()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcf;->zza:Lcom/google/android/gms/internal/play_billing/zzca;

    :cond_a
    return-object v0
.end method

.method public abstract zze()Lcom/google/android/gms/internal/play_billing/zzcs;
.end method

.method zzi()Lcom/google/android/gms/internal/play_billing/zzca;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbx;->toArray()[Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/play_billing/zzca;->zzd:I

    .line 2
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzca;->zzi([Ljava/lang/Object;I)Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object v0

    return-object v0
.end method

.method zzl()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
