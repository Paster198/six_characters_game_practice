.class public final Lcom/google/android/gms/internal/fido/zzhs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final zza:Ljava/io/InputStream;

.field private zzb:Lcom/google/android/gms/internal/fido/zzhr;

.field private final zzc:[B

.field private final zzd:Lcom/google/android/gms/internal/fido/zzht;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzc:[B

    invoke-static {}, Lcom/google/android/gms/internal/fido/zzht;->zza()Lcom/google/android/gms/internal/fido/zzht;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzd:Lcom/google/android/gms/internal/fido/zzht;

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzhs;->zza:Ljava/io/InputStream;

    return-void
.end method

.method private final zzh()J
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhr;->zza()B

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-ge v1, v3, :cond_17

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhr;->zza()B

    move-result v1

    int-to-long v3, v1

    iput-object v2, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    return-wide v3

    :cond_17
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhr;->zza()B

    move-result v1

    const-wide/16 v4, 0xff

    if-ne v1, v3, :cond_35

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzhs;->zza:Ljava/io/InputStream;

    .line 4
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2f

    .line 5
    iput-object v2, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    int-to-long v1, v1

    and-long/2addr v1, v4

    return-wide v1

    :cond_2f
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_35
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhr;->zza()B

    move-result v1

    const/16 v2, 0x19

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/16 v9, 0x8

    if-ne v1, v2, :cond_58

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzc:[B

    .line 7
    invoke-direct {v0, v1, v8}, Lcom/google/android/gms/internal/fido/zzhs;->zzk([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzc:[B

    aget-byte v2, v1, v7

    int-to-long v2, v2

    aget-byte v1, v1, v6

    int-to-long v6, v1

    and-long v1, v2, v4

    shl-long/2addr v1, v9

    and-long v3, v6, v4

    or-long/2addr v1, v3

    return-wide v1

    :cond_58
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhr;->zza()B

    move-result v1

    const/16 v2, 0x1a

    const/16 v10, 0x10

    const/4 v11, 0x3

    const/4 v12, 0x4

    if-ne v1, v2, :cond_87

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzc:[B

    .line 9
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/fido/zzhs;->zzk([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzc:[B

    aget-byte v2, v1, v7

    int-to-long v12, v2

    aget-byte v2, v1, v6

    int-to-long v6, v2

    aget-byte v2, v1, v8

    int-to-long v14, v2

    aget-byte v1, v1, v11

    int-to-long v1, v1

    and-long v11, v12, v4

    shl-long/2addr v11, v3

    and-long/2addr v6, v4

    and-long v13, v14, v4

    shl-long/2addr v6, v10

    or-long/2addr v6, v11

    shl-long v8, v13, v9

    or-long/2addr v6, v8

    and-long/2addr v1, v4

    or-long/2addr v1, v6

    return-wide v1

    :cond_87
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhr;->zza()B

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_e6

    .line 13
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzc:[B

    .line 11
    invoke-direct {v0, v1, v9}, Lcom/google/android/gms/internal/fido/zzhs;->zzk([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzc:[B

    aget-byte v2, v1, v7

    int-to-long v13, v2

    aget-byte v2, v1, v6

    int-to-long v6, v2

    aget-byte v2, v1, v8

    move v8, v3

    move-wide v15, v4

    int-to-long v3, v2

    aget-byte v2, v1, v11

    move v11, v8

    move v5, v9

    int-to-long v8, v2

    aget-byte v2, v1, v12

    move-wide/from16 v17, v6

    move v7, v5

    int-to-long v5, v2

    const/4 v2, 0x5

    aget-byte v2, v1, v2

    move-wide/from16 v19, v8

    move v9, v7

    int-to-long v7, v2

    const/4 v2, 0x6

    aget-byte v2, v1, v2

    move/from16 v21, v9

    move v12, v10

    int-to-long v9, v2

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    int-to-long v1, v1

    and-long/2addr v5, v15

    shl-long/2addr v5, v11

    and-long/2addr v13, v15

    and-long v17, v17, v15

    and-long/2addr v3, v15

    and-long v19, v19, v15

    and-long/2addr v7, v15

    and-long/2addr v9, v15

    const/16 v11, 0x38

    shl-long/2addr v13, v11

    const/16 v11, 0x30

    shl-long v17, v17, v11

    or-long v13, v13, v17

    const/16 v11, 0x28

    shl-long/2addr v3, v11

    or-long/2addr v3, v13

    const/16 v11, 0x20

    shl-long v13, v19, v11

    or-long/2addr v3, v13

    or-long/2addr v3, v5

    shl-long v5, v7, v12

    or-long/2addr v3, v5

    shl-long v5, v9, v21

    or-long/2addr v3, v5

    and-long/2addr v1, v15

    or-long/2addr v1, v3

    return-wide v1

    .line 10
    :cond_e6
    new-instance v1, Ljava/io/IOException;

    iget-object v2, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzhr;->zza()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/fido/zzhr;->zzc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "invalid additional information %s for major type %s"

    .line 13
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final zzi()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzhs;->zzd()Lcom/google/android/gms/internal/fido/zzhr;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzhr;->zza()B

    move-result v0

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_e

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhr;->zza()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "expected definite length but found %s"

    .line 4
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzj(B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzhs;->zzd()Lcom/google/android/gms/internal/fido/zzhr;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzhr;->zzb()B

    move-result v0

    if-ne v0, p1, :cond_c

    return-void

    :cond_c
    shr-int/lit8 p1, p1, 0x5

    new-instance v0, Ljava/lang/IllegalStateException;

    and-int/lit8 p1, p1, 0x7

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhr;->zzc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "expected major type %s but found %s"

    .line 4
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzk([BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-eq v0, p2, :cond_16

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzhs;->zza:Ljava/io/InputStream;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    add-int/2addr v0, v1

    goto :goto_1

    .line 2
    :cond_10
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_16
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    return-void
.end method

.method private final zzl()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhs;->zzi()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhs;->zzh()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2c

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2c

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzhs;->zza:Ljava/io/InputStream;

    .line 5
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_26

    long-to-int v0, v0

    .line 6
    new-array v1, v0, [B

    .line 7
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/fido/zzhs;->zzk([BI)V

    return-object v1

    .line 6
    :cond_26
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 2
    :cond_2c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const v1, 0x7fffffff

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "the maximum supported byte/text string length is %s bytes"

    .line 4
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zza:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzd:Lcom/google/android/gms/internal/fido/zzht;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzht;->zzb()V

    return-void
.end method

.method public final zza()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x80

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzhs;->zzj(B)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhs;->zzi()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhs;->zzh()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1a

    if-lez v2, :cond_19

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzd:Lcom/google/android/gms/internal/fido/zzht;

    .line 5
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/fido/zzht;->zzg(J)V

    :cond_19
    return-wide v0

    .line 3
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-wide v1, 0x7fffffffffffffffL

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "the maximum supported array length is %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzhs;->zzd()Lcom/google/android/gms/internal/fido/zzhr;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzhr;->zzb()B

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_18

    .line 5
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzhr;->zzb()B

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_40

    const/4 v0, 0x0

    .line 4
    :goto_18
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhs;->zzh()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_27

    if-eqz v0, :cond_25

    return-wide v1

    :cond_25
    not-long v0, v1

    return-wide v0

    :cond_27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-wide v1, 0x7fffffffffffffffL

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "the maximum supported unsigned/negative integer is %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhr;->zzc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "expected major type 0 or 1 but found %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzc()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x60

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzhs;->zzj(B)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhs;->zzi()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhs;->zzh()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_25

    const-wide v3, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v3, v0, v3

    if-gtz v3, :cond_25

    if-lez v2, :cond_24

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzd:Lcom/google/android/gms/internal/fido/zzht;

    add-long v3, v0, v0

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/fido/zzht;->zzg(J)V

    :cond_24
    return-wide v0

    .line 3
    :cond_25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "the maximum supported map length is 4611686018427387903L"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/fido/zzhr;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    if-nez v0, :cond_81

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zza:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzd:Lcom/google/android/gms/internal/fido/zzht;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzht;->zzb()V

    const/4 v0, 0x0

    return-object v0

    :cond_14
    new-instance v1, Lcom/google/android/gms/internal/fido/zzhr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/fido/zzhr;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhr;->zzb()B

    move-result v0

    const/16 v1, -0x80

    if-eq v0, v1, :cond_77

    const/16 v1, -0x60

    if-eq v0, v1, :cond_77

    const/16 v1, -0x40

    if-eq v0, v1, :cond_77

    const/16 v1, -0x20

    if-eq v0, v1, :cond_67

    if-eqz v0, :cond_77

    const/16 v1, 0x20

    if-eq v0, v1, :cond_77

    const/16 v1, 0x40

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x60

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzd:Lcom/google/android/gms/internal/fido/zzht;

    const-wide/16 v1, -0x2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzht;->zze(J)V

    goto :goto_7c

    .line 7
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhr;->zzc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "invalid major type: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzd:Lcom/google/android/gms/internal/fido/zzht;

    const-wide/16 v1, -0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzht;->zze(J)V

    goto :goto_7c

    :cond_67
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzhr;->zza()B

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_77

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzd:Lcom/google/android/gms/internal/fido/zzht;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzht;->zzc()V

    goto :goto_81

    .line 10
    :cond_77
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzd:Lcom/google/android/gms/internal/fido/zzht;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzht;->zzd()V

    .line 4
    :goto_7c
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzd:Lcom/google/android/gms/internal/fido/zzht;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzht;->zzf()V

    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x60

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzhs;->zzj(B)V

    new-instance v0, Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhs;->zzl()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final zzf()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x20

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzhs;->zzj(B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhs;->zzb:Lcom/google/android/gms/internal/fido/zzhr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzhr;->zza()B

    move-result v0

    const/16 v1, 0x18

    if-gt v0, v1, :cond_2e

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhs;->zzh()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1a

    return v2

    :cond_1a
    const/16 v1, 0x15

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "expected FALSE or TRUE"

    .line 5
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expected simple value"

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzg()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzhs;->zzj(B)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhs;->zzl()[B

    move-result-object v0

    return-object v0
.end method
