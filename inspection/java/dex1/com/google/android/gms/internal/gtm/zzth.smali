.class final Lcom/google/android/gms/internal/gtm/zzth;
.super Lcom/google/android/gms/internal/gtm/zztj;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field private final zze:Ljava/io/InputStream;

.field private final zzf:[B

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I


# direct methods
.method synthetic constructor <init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/gtm/zztg;)V
    .registers 4

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gtm/zztj;-><init>(Lcom/google/android/gms/internal/gtm/zzti;)V

    const p2, 0x7fffffff

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzl:I

    const-string p2, "input"

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zzvi;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zze:Ljava/io/InputStream;

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    return-void
.end method

.method private final zzu(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-lez p1, :cond_2e

    const/16 v1, 0x1000

    .line 2
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_29

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzth;->zze:Ljava/io/InputStream;

    sub-int v5, v1, v3

    .line 3
    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_24

    .line 5
    iget v5, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    add-int/2addr v3, v4

    goto :goto_10

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzj()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1

    :cond_29
    sub-int/2addr p1, v1

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2e
    return-object v0
.end method

.method private final zzv()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzh:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzl:I

    if-le v1, v2, :cond_15

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzh:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    return-void

    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzh:I

    return-void
.end method

.method private final zzw(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzx(I)Z

    move-result v0

    if-nez v0, :cond_1b

    const v0, 0x7fffffff

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_16

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzi()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1

    .line 3
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzj()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1

    :cond_1b
    return-void
.end method

.method private final zzx(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    add-int v2, v0, p1

    if-le v2, v1, :cond_9a

    .line 1
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    const v3, 0x7fffffff

    sub-int v4, v3, v2

    sub-int/2addr v4, v0

    const/4 v5, 0x0

    if-le p1, v4, :cond_14

    return v5

    :cond_14
    add-int v4, v2, v0

    add-int/2addr v4, p1

    iget v6, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzl:I

    if-le v4, v6, :cond_1c

    return v5

    :cond_1c
    if-lez v0, :cond_33

    if-le v1, v0, :cond_26

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    sub-int/2addr v1, v0

    .line 2
    invoke-static {v2, v0, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_26
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    add-int v2, v1, v0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    iput v5, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zze:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    rsub-int v6, v1, 0x1000

    sub-int/2addr v3, v2

    sub-int/2addr v3, v1

    .line 3
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    :try_start_3f
    invoke-virtual {v0, v4, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_43
    .catch Lcom/google/android/gms/internal/gtm/zzvk; {:try_start_3f .. :try_end_43} :catch_95

    if-eqz v0, :cond_62

    const/4 v1, -0x1

    if-lt v0, v1, :cond_62

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_62

    if-lez v0, :cond_61

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzv()V

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    if-lt v0, p1, :cond_5c

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_5c
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzx(I)Z

    move-result p1

    return p1

    :cond_61
    return v5

    .line 4
    :cond_62
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zze:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x5b

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#read(byte[]) returned invalid result: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_95
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzvk;->zzk()V

    .line 6
    throw p1

    .line 0
    :cond_9a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x4d

    .line 1
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzy(IZ)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzz(I)[B

    move-result-object p2

    if-eqz p2, :cond_7

    return-object p2

    :cond_7
    iget p2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    sub-int v1, v0, p2

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    sub-int v2, p1, v1

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/gtm/zzth;->zzu(I)Ljava/util/List;

    move-result-object v2

    .line 3
    new-array p1, p1, [B

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    .line 4
    invoke-static {v3, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_28
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 6
    array-length v3, v2

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    goto :goto_28

    :cond_3a
    return-object p1
.end method

.method private final zzz(I)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_5

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzvi;->zzc:[B

    return-object p1

    :cond_5
    if-ltz p1, :cond_74

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    const v3, -0x7fffffff

    add-int/2addr v3, v2

    if-gtz v3, :cond_6f

    .line 3
    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzl:I

    if-gt v2, v3, :cond_65

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_31

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zze:Ljava/io/InputStream;

    .line 6
    :try_start_23
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_27
    .catch Lcom/google/android/gms/internal/gtm/zzvk; {:try_start_23 .. :try_end_27} :catch_2c

    if-gt v1, v2, :cond_2a

    goto :goto_31

    :cond_2a
    const/4 p1, 0x0

    return-object p1

    :catch_2c
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzvk;->zzk()V

    .line 8
    throw p1

    .line 6
    :cond_31
    :goto_31
    new-array v1, p1, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    const/4 v4, 0x0

    .line 9
    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    iput v4, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    iput v4, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    :goto_46
    if-ge v0, p1, :cond_64

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zze:Ljava/io/InputStream;

    sub-int v3, p1, v0

    .line 10
    :try_start_4c
    invoke-virtual {v2, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_50
    .catch Lcom/google/android/gms/internal/gtm/zzvk; {:try_start_4c .. :try_end_50} :catch_5f

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5a

    .line 13
    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    add-int/2addr v0, v2

    goto :goto_46

    :cond_5a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzj()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1

    :catch_5f
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzvk;->zzk()V

    .line 12
    throw p1

    :cond_64
    return-object v1

    :cond_65
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 4
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/gtm/zzth;->zzr(I)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzj()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1

    .line 3
    :cond_6f
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzi()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1

    .line 2
    :cond_74
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzf()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final zza()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzb(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzvk;
        }
    .end annotation

    if-ltz p1, :cond_17

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzl:I

    if-gt p1, v0, :cond_12

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzl:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzv()V

    return v0

    .line 2
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzj()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1

    .line 1
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzf()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1
.end method

.method public final zzc()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzi()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzj:I

    return v0

    .line 2
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzj:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_15

    return v0

    .line 3
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzc()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object v0

    throw v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/gtm/zztd;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1a

    if-gtz v0, :cond_e

    goto :goto_1a

    .line 10
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    .line 11
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zztd;->zzn([BII)Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    return-object v1

    :cond_1a
    :goto_1a
    if-eqz v0, :cond_5f

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzz(I)[B

    move-result-object v1

    if-eqz v1, :cond_27

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zztd;->zzm([B)Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object v0

    return-object v0

    :cond_27
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    sub-int v3, v2, v1

    iget v4, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    sub-int v4, v0, v3

    .line 4
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/gtm/zzth;->zzu(I)Ljava/util/List;

    move-result-object v4

    .line 5
    new-array v0, v0, [B

    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    .line 6
    invoke-static {v5, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 8
    array-length v5, v4

    invoke-static {v4, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    goto :goto_48

    .line 9
    :cond_5a
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztd;->zzp([B)Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object v0

    return-object v0

    .line 10
    :cond_5f
    sget-object v0, Lcom/google/android/gms/internal/gtm/zztd;->zzb:Lcom/google/android/gms/internal/gtm/zztd;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    if-lez v0, :cond_1d

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_e

    goto :goto_1d

    .line 4
    :cond_e
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    .line 5
    sget-object v4, Lcom/google/android/gms/internal/gtm/zzvi;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    return-object v1

    :cond_1d
    :goto_1d
    if-nez v0, :cond_22

    .line 1
    const-string v0, ""

    return-object v0

    :cond_22
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    if-gt v0, v1, :cond_3a

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzw(I)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    .line 3
    sget-object v4, Lcom/google/android/gms/internal/gtm/zzvi;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    return-object v1

    :cond_3a
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/gtm/zzth;->zzy(IZ)[B

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzvi;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final zzf()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    sub-int v3, v2, v1

    if-gt v0, v3, :cond_15

    if-lez v0, :cond_15

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    add-int v3, v1, v0

    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    goto :goto_29

    :cond_15
    if-nez v0, :cond_1a

    .line 4
    const-string v0, ""

    return-object v0

    :cond_1a
    const/4 v1, 0x0

    if-gt v0, v2, :cond_25

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzw(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    goto :goto_29

    .line 3
    :cond_25
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzth;->zzy(IZ)[B

    move-result-object v2

    .line 4
    :goto_29
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/gtm/zzyd;->zzd([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzg(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzvk;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzj:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzb()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1
.end method

.method public final zzh(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzl:I

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzv()V

    return-void
.end method

.method public final zzi()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzx(I)Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zzk(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    if-eq v0, v2, :cond_39

    const/4 v3, 0x2

    if-eq v0, v3, :cond_31

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1e

    if-eq v0, v3, :cond_1d

    const/4 p1, 0x5

    if-ne v0, p1, :cond_18

    .line 8
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/gtm/zzth;->zzr(I)V

    return v2

    .line 11
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zza()Lcom/google/android/gms/internal/gtm/zzvj;

    move-result-object p1

    throw p1

    :cond_1d
    return v1

    .line 5
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzc()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzk(I)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_2a
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzg(I)V

    return v2

    .line 9
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzn()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzr(I)V

    return v2

    :cond_39
    const/16 p1, 0x8

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzth;->zzr(I)V

    return v2

    .line 0
    :cond_3f
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_5f

    :goto_48
    if-ge v1, v0, :cond_5a

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    .line 3
    aget-byte p1, p1, v3

    if-ltz p1, :cond_57

    goto :goto_6a

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 4
    :cond_5a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zze()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1

    :cond_5f
    :goto_5f
    if-ge v1, v0, :cond_6b

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzl()B

    move-result p1

    if-gez p1, :cond_6a

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_6a
    :goto_6a
    return v2

    .line 2
    :cond_6b
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zze()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1
.end method

.method public final zzl()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzw(I)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    .line 2
    aget-byte v0, v0, v1

    return v0
.end method

.method public final zzm()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    .line 1
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/gtm/zzth;->zzw(I)V

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    .line 2
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public final zzn()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_76

    .line 7
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    add-int/lit8 v3, v0, 0x1

    .line 1
    aget-byte v4, v2, v0

    if-ltz v4, :cond_13

    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    return v4

    :cond_13
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-lt v1, v5, :cond_76

    add-int/lit8 v1, v0, 0x2

    .line 2
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_24

    xor-int/lit8 v0, v3, -0x80

    goto :goto_73

    :cond_24
    add-int/lit8 v4, v0, 0x3

    .line 3
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_31

    xor-int/lit16 v0, v1, 0x3f80

    :goto_2f
    move v1, v4

    goto :goto_73

    :cond_31
    add-int/lit8 v3, v0, 0x4

    .line 4
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_40

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    :goto_3e
    move v1, v3

    goto :goto_73

    :cond_40
    add-int/lit8 v4, v0, 0x5

    .line 5
    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v3, :cond_71

    add-int/lit8 v3, v0, 0x6

    .line 6
    aget-byte v4, v2, v4

    if-gez v4, :cond_6f

    add-int/lit8 v4, v0, 0x7

    aget-byte v3, v2, v3

    if-gez v3, :cond_71

    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v4

    if-gez v4, :cond_6f

    add-int/lit8 v4, v0, 0x9

    aget-byte v3, v2, v3

    if-gez v3, :cond_71

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v2, v4

    if-ltz v2, :cond_76

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_73

    :cond_6f
    move v0, v1

    goto :goto_3e

    :cond_71
    move v0, v1

    goto :goto_2f

    .line 2
    :goto_73
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    return v0

    .line 7
    :cond_76
    :goto_76
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzq()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final zzo()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    .line 1
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/gtm/zzth;->zzw(I)V

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    .line 2
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzp()J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_c0

    .line 11
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzf:[B

    add-int/lit8 v3, v0, 0x1

    .line 1
    aget-byte v4, v2, v0

    if-ltz v4, :cond_14

    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    int-to-long v0, v4

    return-wide v0

    :cond_14
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-lt v1, v5, :cond_c0

    add-int/lit8 v1, v0, 0x2

    .line 2
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_27

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_bd

    :cond_27
    add-int/lit8 v4, v0, 0x3

    .line 3
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_36

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    :goto_33
    move v1, v4

    goto/16 :goto_bd

    :cond_36
    add-int/lit8 v3, v0, 0x4

    .line 4
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_49

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v11, v0

    move v1, v3

    move-wide v2, v11

    goto/16 :goto_bd

    :cond_49
    add-int/lit8 v4, v0, 0x5

    int-to-long v5, v1

    .line 5
    aget-byte v1, v2, v3

    int-to-long v7, v1

    const/16 v1, 0x1c

    shl-long/2addr v7, v1

    xor-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_5f

    const-wide/32 v0, 0xfe03f80

    xor-long v2, v5, v0

    goto :goto_33

    :cond_5f
    add-int/lit8 v1, v0, 0x6

    .line 6
    aget-byte v3, v2, v4

    int-to-long v3, v3

    const/16 v9, 0x23

    shl-long/2addr v3, v9

    xor-long/2addr v3, v5

    cmp-long v5, v3, v7

    if-gez v5, :cond_74

    const-wide v5, -0x7f01fc080L

    :goto_71
    xor-long v2, v3, v5

    goto :goto_bd

    :cond_74
    add-int/lit8 v5, v0, 0x7

    .line 7
    aget-byte v1, v2, v1

    int-to-long v9, v1

    const/16 v1, 0x2a

    shl-long/2addr v9, v1

    xor-long/2addr v3, v9

    cmp-long v1, v3, v7

    if-ltz v1, :cond_8a

    const-wide v0, 0x3f80fe03f80L

    xor-long v2, v3, v0

    :goto_88
    move v1, v5

    goto :goto_bd

    :cond_8a
    add-int/lit8 v1, v0, 0x8

    .line 8
    aget-byte v5, v2, v5

    int-to-long v5, v5

    const/16 v9, 0x31

    shl-long/2addr v5, v9

    xor-long/2addr v3, v5

    cmp-long v5, v3, v7

    if-gez v5, :cond_9d

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_71

    :cond_9d
    add-int/lit8 v5, v0, 0x9

    .line 9
    aget-byte v1, v2, v1

    int-to-long v9, v1

    const/16 v1, 0x38

    shl-long/2addr v9, v1

    xor-long/2addr v3, v9

    const-wide v9, 0xfe03f80fe03f80L

    xor-long/2addr v3, v9

    cmp-long v1, v3, v7

    if-gez v1, :cond_bb

    add-int/lit8 v1, v0, 0xa

    .line 10
    aget-byte v0, v2, v5

    int-to-long v5, v0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_c0

    move-wide v2, v3

    goto :goto_bd

    :cond_bb
    move-wide v2, v3

    goto :goto_88

    .line 2
    :goto_bd
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    return-wide v2

    .line 11
    :cond_c0
    :goto_c0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzq()J

    move-result-wide v0

    return-wide v0
.end method

.method final zzq()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzl()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 2
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zze()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object v0

    throw v0
.end method

.method public final zzr(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_e

    if-gez p1, :cond_a

    goto :goto_e

    :cond_a
    add-int/2addr v1, p1

    .line 9
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    return-void

    :cond_e
    :goto_e
    if-ltz p1, :cond_ae

    .line 1
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    add-int v3, v2, v1

    iget v4, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzl:I

    add-int v5, v3, p1

    if-gt v5, v4, :cond_a4

    .line 3
    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    :goto_21
    if-ge v0, p1, :cond_7e

    sub-int v1, p1, v0

    :try_start_25
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zze:Ljava/io/InputStream;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_74

    int-to-long v3, v1

    .line 4
    :try_start_28
    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1
    :try_end_2c
    .catch Lcom/google/android/gms/internal/gtm/zzvk; {:try_start_28 .. :try_end_2c} :catch_6f
    .catchall {:try_start_28 .. :try_end_2c} :catchall_74

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-ltz v5, :cond_3c

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3c

    if-nez v5, :cond_39

    goto :goto_7e

    :cond_39
    long-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_21

    :cond_3c
    :try_start_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zze:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#skip returned invalid result: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_6f
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzvk;->zzk()V

    .line 6
    throw p1
    :try_end_74
    .catchall {:try_start_3c .. :try_end_74} :catchall_74

    :catchall_74
    move-exception p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzv()V

    .line 9
    throw p1

    .line 7
    :cond_7e
    :goto_7e
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzk:I

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzth;->zzv()V

    if-ge v0, p1, :cond_a3

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    sub-int v1, v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzw(I)V

    :goto_94
    sub-int v2, p1, v1

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzg:I

    if-le v2, v3, :cond_a1

    add-int/2addr v1, v3

    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    .line 11
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzth;->zzw(I)V

    goto :goto_94

    :cond_a1
    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzth;->zzi:I

    :cond_a3
    return-void

    :cond_a4
    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    .line 2
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/gtm/zzth;->zzr(I)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzj()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1

    .line 1
    :cond_ae
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzf()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1
.end method
