.class final Lcom/google/android/gms/internal/play_billing/zzco;
.super Lcom/google/android/gms/internal/play_billing/zzcd;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzcd;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:Ljava/lang/Object;

.field private final transient zzd:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzco;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzco;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzco;->zza:Lcom/google/android/gms/internal/play_billing/zzcd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzc:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzb:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzd:I

    return-void
.end method

.method static zzg(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzcc;)Lcom/google/android/gms/internal/play_billing/zzco;
    .registers 22

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v0, :cond_d

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzco;->zza:Lcom/google/android/gms/internal/play_billing/zzcd;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzco;

    return-object v0

    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_27

    .line 2
    aget-object v0, v1, v4

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzbt;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzco;

    invoke-direct {v0, v3, v1, v5}, Lcom/google/android/gms/internal/play_billing/zzco;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    .line 4
    :cond_27
    array-length v6, v1

    shr-int/2addr v6, v5

    const-string v7, "index"

    .line 5
    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzbl;->zzb(IILjava/lang/String;)I

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzh(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v0, v5, :cond_4d

    .line 7
    aget-object v0, v1, v4

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aget-object v6, v1, v5

    .line 9
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 7
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/play_billing/zzbt;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    move/from16 v16, v4

    move v0, v5

    move/from16 v17, v0

    :goto_49
    move/from16 v18, v7

    goto/16 :goto_1ba

    :cond_4d
    add-int/lit8 v8, v6, -0x1

    const/16 v9, 0x80

    const/4 v10, 0x3

    const/4 v11, -0x1

    if-gt v6, v9, :cond_d1

    .line 10
    new-array v6, v6, [B

    .line 11
    invoke-static {v6, v11}, Ljava/util/Arrays;->fill([BB)V

    move v9, v4

    move v11, v9

    :goto_5c
    if-ge v9, v0, :cond_ba

    add-int v12, v11, v11

    add-int v13, v9, v9

    .line 12
    aget-object v14, v1, v13

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    xor-int/2addr v13, v5

    .line 13
    aget-object v13, v1, v13

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 14
    invoke-static {v14, v13}, Lcom/google/android/gms/internal/play_billing/zzbt;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-static {v15}, Lcom/google/android/gms/internal/play_billing/zzbu;->zza(I)I

    move-result v15

    :goto_7a
    and-int/2addr v15, v8

    move/from16 v16, v4

    .line 16
    aget-byte v4, v6, v15

    move/from16 v17, v5

    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_94

    int-to-byte v4, v12

    .line 18
    aput-byte v4, v6, v15

    if-ge v11, v9, :cond_91

    .line 19
    aput-object v14, v1, v12

    xor-int/lit8 v4, v12, 0x1

    .line 20
    aput-object v13, v1, v4

    :cond_91
    add-int/lit8 v11, v11, 0x1

    goto :goto_ac

    .line 17
    :cond_94
    aget-object v5, v1, v4

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    xor-int/lit8 v3, v4, 0x1

    new-instance v4, Lcom/google/android/gms/internal/play_billing/zzcb;

    .line 21
    aget-object v5, v1, v3

    .line 22
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v14, v13, v5}, Lcom/google/android/gms/internal/play_billing/zzcb;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    aput-object v13, v1, v3

    move-object v3, v4

    :goto_ac
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_5c

    :cond_b3
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_7a

    :cond_ba
    move/from16 v16, v4

    move/from16 v17, v5

    if-ne v11, v0, :cond_c2

    move-object v3, v6

    goto :goto_49

    :cond_c2
    new-array v4, v10, [Ljava/lang/Object;

    aput-object v6, v4, v16

    .line 24
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v17

    aput-object v3, v4, v7

    :goto_ce
    move-object v3, v4

    goto/16 :goto_49

    :cond_d1
    move/from16 v16, v4

    move/from16 v17, v5

    const v4, 0x8000

    if-gt v6, v4, :cond_148

    new-array v4, v6, [S

    .line 25
    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([SS)V

    move/from16 v5, v16

    move v6, v5

    :goto_e2
    if-ge v5, v0, :cond_136

    add-int v9, v6, v6

    add-int v11, v5, v5

    .line 26
    aget-object v12, v1, v11

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    xor-int/lit8 v11, v11, 0x1

    .line 27
    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 28
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/play_billing/zzbt;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zzbu;->zza(I)I

    move-result v13

    :goto_101
    and-int/2addr v13, v8

    .line 30
    aget-short v14, v4, v13

    int-to-char v14, v14

    const v15, 0xffff

    if-ne v14, v15, :cond_118

    int-to-short v14, v9

    .line 32
    aput-short v14, v4, v13

    if-ge v6, v5, :cond_115

    .line 33
    aput-object v12, v1, v9

    xor-int/lit8 v9, v9, 0x1

    .line 34
    aput-object v11, v1, v9

    :cond_115
    add-int/lit8 v6, v6, 0x1

    goto :goto_130

    .line 31
    :cond_118
    aget-object v15, v1, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_133

    xor-int/lit8 v3, v14, 0x1

    new-instance v9, Lcom/google/android/gms/internal/play_billing/zzcb;

    .line 35
    aget-object v13, v1, v3

    .line 36
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v9, v12, v11, v13}, Lcom/google/android/gms/internal/play_billing/zzcb;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    aput-object v11, v1, v3

    move-object v3, v9

    :goto_130
    add-int/lit8 v5, v5, 0x1

    goto :goto_e2

    :cond_133
    add-int/lit8 v13, v13, 0x1

    goto :goto_101

    :cond_136
    if-ne v6, v0, :cond_139

    goto :goto_ce

    :cond_139
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v4, v5, v16

    .line 38
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v17

    aput-object v3, v5, v7

    move-object v3, v5

    goto/16 :goto_49

    :cond_148
    new-array v4, v6, [I

    .line 39
    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([II)V

    move/from16 v5, v16

    move v6, v5

    :goto_150
    if-ge v5, v0, :cond_1a7

    add-int v9, v6, v6

    add-int v12, v5, v5

    .line 40
    aget-object v13, v1, v12

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    xor-int/lit8 v12, v12, 0x1

    .line 41
    aget-object v12, v1, v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 42
    invoke-static {v13, v12}, Lcom/google/android/gms/internal/play_billing/zzbt;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/zzbu;->zza(I)I

    move-result v14

    :goto_16f
    and-int/2addr v14, v8

    .line 44
    aget v15, v4, v14

    if-ne v15, v11, :cond_183

    .line 46
    aput v9, v4, v14

    if-ge v6, v5, :cond_17e

    .line 47
    aput-object v13, v1, v9

    xor-int/lit8 v9, v9, 0x1

    .line 48
    aput-object v12, v1, v9

    :cond_17e
    add-int/lit8 v6, v6, 0x1

    move/from16 v18, v7

    goto :goto_19d

    :cond_183
    move/from16 v18, v7

    .line 45
    aget-object v7, v1, v15

    invoke-virtual {v13, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a2

    xor-int/lit8 v3, v15, 0x1

    new-instance v7, Lcom/google/android/gms/internal/play_billing/zzcb;

    .line 49
    aget-object v9, v1, v3

    .line 50
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v7, v13, v12, v9}, Lcom/google/android/gms/internal/play_billing/zzcb;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    aput-object v12, v1, v3

    move-object v3, v7

    :goto_19d
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v18

    goto :goto_150

    :cond_1a2
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v18

    goto :goto_16f

    :cond_1a7
    move/from16 v18, v7

    if-ne v6, v0, :cond_1ad

    move-object v3, v4

    goto :goto_1ba

    :cond_1ad
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v4, v5, v16

    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v17

    aput-object v3, v5, v18

    move-object v3, v5

    .line 53
    :goto_1ba
    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_1e0

    .line 54
    check-cast v3, [Ljava/lang/Object;

    .line 55
    aget-object v0, v3, v18

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcb;

    if-eqz v2, :cond_1db

    .line 56
    iput-object v0, v2, Lcom/google/android/gms/internal/play_billing/zzcc;->zzc:Lcom/google/android/gms/internal/play_billing/zzcb;

    .line 57
    aget-object v0, v3, v16

    .line 58
    aget-object v2, v3, v17

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v3, v2, v2

    .line 59
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v0

    move v0, v2

    goto :goto_1e0

    .line 56
    :cond_1db
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 59
    :cond_1e0
    :goto_1e0
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzco;

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzco;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v2
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_6

    :cond_3
    :goto_3
    move-object p1, v0

    goto/16 :goto_9e

    .line 1
    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzd:I

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_22

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    aget-object p1, v2, v3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_9e

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzc:Ljava/lang/Object;

    if-nez v1, :cond_27

    goto :goto_3

    .line 3
    :cond_27
    instance-of v4, v1, [B

    const/4 v5, -0x1

    if-eqz v4, :cond_53

    .line 4
    move-object v4, v1

    check-cast v4, [B

    array-length v1, v4

    add-int/lit8 v6, v1, -0x1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzbu;->zza(I)I

    move-result v1

    :goto_3a
    and-int/2addr v1, v6

    .line 6
    aget-byte v5, v4, v1

    const/16 v7, 0xff

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_43

    goto :goto_3

    .line 7
    :cond_43
    aget-object v7, v2, v5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    xor-int/lit8 p1, v5, 0x1

    .line 8
    aget-object p1, v2, p1

    goto :goto_9e

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 9
    :cond_53
    instance-of v4, v1, [S

    if-eqz v4, :cond_7f

    .line 10
    move-object v4, v1

    check-cast v4, [S

    array-length v1, v4

    add-int/lit8 v6, v1, -0x1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzbu;->zza(I)I

    move-result v1

    :goto_65
    and-int/2addr v1, v6

    .line 12
    aget-short v5, v4, v1

    int-to-char v5, v5

    const v7, 0xffff

    if-ne v5, v7, :cond_6f

    goto :goto_3

    .line 13
    :cond_6f
    aget-object v7, v2, v5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    xor-int/lit8 p1, v5, 0x1

    .line 14
    aget-object p1, v2, p1

    goto :goto_9e

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 15
    :cond_7f
    check-cast v1, [I

    array-length v4, v1

    add-int/2addr v4, v5

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzbu;->zza(I)I

    move-result v6

    :goto_8b
    and-int/2addr v6, v4

    .line 17
    aget v7, v1, v6

    if-ne v7, v5, :cond_92

    goto/16 :goto_3

    .line 18
    :cond_92
    aget-object v8, v2, v7

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a2

    xor-int/lit8 p1, v7, 0x1

    .line 19
    aget-object p1, v2, p1

    :goto_9e
    if-nez p1, :cond_a1

    return-object v0

    :cond_a1
    return-object p1

    :cond_a2
    add-int/lit8 v6, v6, 0x1

    goto :goto_8b
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzd:I

    return v0
.end method

.method final zza()Lcom/google/android/gms/internal/play_billing/zzbx;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzd:I

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcn;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzcn;-><init>([Ljava/lang/Object;II)V

    return-object v1
.end method

.method final zzd()Lcom/google/android/gms/internal/play_billing/zzcf;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzb:[Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzcl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzcl;-><init>(Lcom/google/android/gms/internal/play_billing/zzcd;[Ljava/lang/Object;II)V

    return-object v2
.end method

.method final zze()Lcom/google/android/gms/internal/play_billing/zzcf;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzd:I

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcn;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzcn;-><init>([Ljava/lang/Object;II)V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcm;

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/play_billing/zzcm;-><init>(Lcom/google/android/gms/internal/play_billing/zzcd;Lcom/google/android/gms/internal/play_billing/zzca;)V

    return-object v0
.end method
