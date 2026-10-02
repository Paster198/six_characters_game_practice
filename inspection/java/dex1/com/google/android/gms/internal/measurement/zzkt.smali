.class final Lcom/google/android/gms/internal/measurement/zzkt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"


# static fields
.field public static final synthetic zza:I = 0x0

.field private static volatile zzb:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method static zza([BILcom/google/android/gms/internal/measurement/zzks;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmm;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ltz v0, :cond_23

    .line 4
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1b

    if-nez v0, :cond_13

    .line 7
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzld;->zzb:Lcom/google/android/gms/internal/measurement/zzld;

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    return p1

    .line 8
    :cond_13
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzld;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzld;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 4
    :cond_1b
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmm;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0

    .line 1
    :cond_23
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmm;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 3
    throw p0
.end method

.method static zzb([BI)I
    .registers 5

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method static zzc(Lcom/google/android/gms/internal/measurement/zzns;[BIIILcom/google/android/gms/internal/measurement/zzks;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzns;->zze()Ljava/lang/Object;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 2
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;[BIIILcom/google/android/gms/internal/measurement/zzks;)I

    move-result p0

    .line 3
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzns;->zzf(Ljava/lang/Object;)V

    iput-object v0, v6, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    return p0
.end method

.method static zzd(Lcom/google/android/gms/internal/measurement/zzns;[BIILcom/google/android/gms/internal/measurement/zzks;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzns;->zze()Ljava/lang/Object;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;[BIILcom/google/android/gms/internal/measurement/zzks;)I

    move-result p0

    .line 3
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzns;->zzf(Ljava/lang/Object;)V

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    return p0
.end method

.method static zze(Lcom/google/android/gms/internal/measurement/zzns;I[BIILcom/google/android/gms/internal/measurement/zzmj;Lcom/google/android/gms/internal/measurement/zzks;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzd(Lcom/google/android/gms/internal/measurement/zzns;[BIILcom/google/android/gms/internal/measurement/zzks;)I

    move-result p3

    iget-object v0, p6, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    .line 2
    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    :goto_9
    if-ge p3, p4, :cond_1e

    .line 3
    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v0

    iget v1, p6, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-eq p1, v1, :cond_14

    goto :goto_1e

    .line 4
    :cond_14
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzd(Lcom/google/android/gms/internal/measurement/zzns;[BIILcom/google/android/gms/internal/measurement/zzks;)I

    move-result p3

    iget-object v0, p6, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    .line 5
    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1e
    :goto_1e
    return p3
.end method

.method static zzf([BILcom/google/android/gms/internal/measurement/zzmj;Lcom/google/android/gms/internal/measurement/zzks;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzme;

    .line 2
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result p1

    iget v0, p3, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    add-int/2addr v0, p1

    :goto_9
    if-ge p1, v0, :cond_15

    .line 3
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result p1

    iget v1, p3, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    .line 4
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzme;->zzh(I)V

    goto :goto_9

    :cond_15
    if-ne p1, v0, :cond_18

    return p1

    :cond_18
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmm;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
.end method

.method static zzg(I[BIILcom/google/android/gms/internal/measurement/zzof;Lcom/google/android/gms/internal/measurement/zzks;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmm;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    .line 1
    const-string v1, "Protocol message contained an invalid tag (zero)."

    if-eqz v0, :cond_b7

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_a7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_98

    const/4 v3, 0x2

    if-eq v0, v3, :cond_69

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2a

    const/4 p3, 0x5

    if-ne v0, p3, :cond_24

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzof;->zzj(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 1
    :cond_24
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmm;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 2
    throw p0

    :cond_2a
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzof;->zzf()Lcom/google/android/gms/internal/measurement/zzof;

    move-result-object v7

    iget v1, p5, Lcom/google/android/gms/internal/measurement/zzks;->zze:I

    add-int/2addr v1, v2

    iput v1, p5, Lcom/google/android/gms/internal/measurement/zzks;->zze:I

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzo(I)V

    const/4 v1, 0x0

    :goto_3b
    if-ge p2, p3, :cond_51

    .line 5
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v5

    iget v3, p5, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ne v3, v0, :cond_48

    move v1, v3

    move p2, v5

    goto :goto_51

    :cond_48
    move-object v4, p1

    move v6, p3

    move-object v8, p5

    .line 6
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzkt;->zzg(I[BIILcom/google/android/gms/internal/measurement/zzof;Lcom/google/android/gms/internal/measurement/zzks;)I

    move-result p2

    move v1, v3

    goto :goto_3b

    :cond_51
    :goto_51
    move v6, p3

    move-object v8, p5

    .line 5
    iget p1, v8, Lcom/google/android/gms/internal/measurement/zzks;->zze:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v8, Lcom/google/android/gms/internal/measurement/zzks;->zze:I

    if-gt p2, v6, :cond_61

    if-ne v1, v0, :cond_61

    .line 9
    invoke-virtual {p4, p0, v7}, Lcom/google/android/gms/internal/measurement/zzof;->zzj(ILjava/lang/Object;)V

    return p2

    .line 5
    :cond_61
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmm;

    const-string p1, "Failed to parse the message."

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 8
    throw p0

    :cond_69
    move-object v4, p1

    move-object v8, p5

    .line 10
    invoke-static {v4, p2, v8}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result p1

    iget p2, v8, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ltz p2, :cond_90

    .line 13
    array-length p3, v4

    sub-int/2addr p3, p1

    if-gt p2, p3, :cond_88

    if-nez p2, :cond_7f

    .line 16
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzld;->zzb:Lcom/google/android/gms/internal/measurement/zzld;

    invoke-virtual {p4, p0, p3}, Lcom/google/android/gms/internal/measurement/zzof;->zzj(ILjava/lang/Object;)V

    goto :goto_86

    .line 17
    :cond_7f
    invoke-static {v4, p1, p2}, Lcom/google/android/gms/internal/measurement/zzld;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzld;

    move-result-object p3

    invoke-virtual {p4, p0, p3}, Lcom/google/android/gms/internal/measurement/zzof;->zzj(ILjava/lang/Object;)V

    :goto_86
    add-int/2addr p1, p2

    return p1

    .line 13
    :cond_88
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmm;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0

    .line 10
    :cond_90
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmm;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 12
    throw p0

    :cond_98
    move-object v4, p1

    .line 18
    invoke-static {v4, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzn([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzof;->zzj(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_a7
    move-object v4, p1

    move-object v8, p5

    .line 19
    invoke-static {v4, p2, v8}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result p1

    iget-wide p2, v8, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/measurement/zzof;->zzj(ILjava/lang/Object;)V

    return p1

    :cond_b7
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 21
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0
.end method

.method static zzh([BILcom/google/android/gms/internal/measurement/zzks;)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte p1, p0, p1

    if-ltz p1, :cond_9

    iput p1, p2, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    return v0

    .line 2
    :cond_9
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzi(I[BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result p0

    return p0
.end method

.method static zzi(I[BILcom/google/android/gms/internal/measurement/zzks;)I
    .registers 6

    .line 1
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    and-int/lit8 p0, p0, 0x7f

    if-ltz v0, :cond_e

    shl-int/lit8 p1, v0, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    return v1

    :cond_e
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    if-ltz v1, :cond_1f

    shl-int/lit8 p1, v1, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    return v0

    :cond_1f
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr p0, v1

    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v0, p1, v0

    if-ltz v0, :cond_30

    shl-int/lit8 p1, v0, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    return v1

    :cond_30
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x15

    or-int/2addr p0, v0

    add-int/lit8 p2, p2, 0x4

    .line 4
    aget-byte v0, p1, v1

    if-ltz v0, :cond_41

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    return p2

    :cond_41
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_46
    add-int/lit8 v0, p2, 0x1

    .line 5
    aget-byte p2, p1, p2

    if-gez p2, :cond_4e

    move p2, v0

    goto :goto_46

    :cond_4e
    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    return v0
.end method

.method static zzj(I[BIILcom/google/android/gms/internal/measurement/zzmj;Lcom/google/android/gms/internal/measurement/zzks;)I
    .registers 8

    .line 1
    check-cast p4, Lcom/google/android/gms/internal/measurement/zzme;

    .line 2
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    .line 3
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/measurement/zzme;->zzh(I)V

    :goto_b
    if-ge p2, p3, :cond_20

    .line 4
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-eq p0, v1, :cond_16

    goto :goto_20

    .line 5
    :cond_16
    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    .line 6
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/measurement/zzme;->zzh(I)V

    goto :goto_b

    :cond_20
    :goto_20
    return p2
.end method

.method static zzk([BILcom/google/android/gms/internal/measurement/zzks;)I
    .registers 12

    .line 1
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    add-int/lit8 v3, p1, 0x1

    if-ltz v2, :cond_e

    iput-wide v0, p2, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    return v3

    :cond_e
    add-int/lit8 p1, p1, 0x2

    .line 2
    aget-byte v2, p0, v3

    and-int/lit8 v3, v2, 0x7f

    const-wide/16 v4, 0x7f

    and-long/2addr v0, v4

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    move v3, v5

    :goto_1c
    if-gez v2, :cond_2c

    add-int/lit8 v2, p1, 0x1

    .line 3
    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v0, v6

    move v8, v2

    move v2, p1

    move p1, v8

    goto :goto_1c

    :cond_2c
    iput-wide v0, p2, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    return p1
.end method

.method static zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;[BIIILcom/google/android/gms/internal/measurement/zzks;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zznk;

    iget v0, p6, Lcom/google/android/gms/internal/measurement/zzks;->zze:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p6, Lcom/google/android/gms/internal/measurement/zzks;->zze:I

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkt;->zzo(I)V

    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    .line 3
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/internal/measurement/zznk;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzks;)I

    move-result p0

    iget p2, p6, Lcom/google/android/gms/internal/measurement/zzks;->zze:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p6, Lcom/google/android/gms/internal/measurement/zzks;->zze:I

    iput-object p1, p6, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    return p0
.end method

.method static zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;[BIILcom/google/android/gms/internal/measurement/zzks;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p3, 0x1

    .line 1
    aget-byte p3, p2, p3

    if-gez p3, :cond_c

    .line 2
    invoke-static {p3, p2, v0, p5}, Lcom/google/android/gms/internal/measurement/zzkt;->zzi(I[BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v0

    iget p3, p5, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    :cond_c
    move v3, v0

    if-ltz p3, :cond_2d

    sub-int/2addr p4, v3

    if-gt p3, p4, :cond_2d

    .line 4
    iget p4, p5, Lcom/google/android/gms/internal/measurement/zzks;->zze:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p5, Lcom/google/android/gms/internal/measurement/zzks;->zze:I

    .line 5
    invoke-static {p4}, Lcom/google/android/gms/internal/measurement/zzkt;->zzo(I)V

    add-int v4, v3, p3

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    move-object v5, p5

    .line 6
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzns;->zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzks;)V

    iget p0, v5, Lcom/google/android/gms/internal/measurement/zzks;->zze:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v5, Lcom/google/android/gms/internal/measurement/zzks;->zze:I

    iput-object v1, v5, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    return v4

    .line 2
    :cond_2d
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmm;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 4
    throw p0
.end method

.method static zzn([BI)J
    .registers 20

    .line 1
    aget-byte v0, p0, p1

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    add-int/lit8 v6, p1, 0x3

    aget-byte v6, p0, v6

    int-to-long v6, v6

    add-int/lit8 v8, p1, 0x4

    aget-byte v8, p0, v8

    int-to-long v8, v8

    add-int/lit8 v10, p1, 0x5

    aget-byte v10, p0, v10

    int-to-long v10, v10

    add-int/lit8 v12, p1, 0x6

    aget-byte v12, p0, v12

    int-to-long v12, v12

    add-int/lit8 v14, p1, 0x7

    aget-byte v14, p0, v14

    int-to-long v14, v14

    const-wide/16 v16, 0xff

    and-long v2, v2, v16

    and-long v4, v4, v16

    and-long v6, v6, v16

    and-long v8, v8, v16

    and-long v10, v10, v16

    and-long v12, v12, v16

    and-long v14, v14, v16

    and-long v0, v0, v16

    const/16 v16, 0x8

    shl-long v2, v2, v16

    or-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long v2, v6, v2

    or-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long v2, v8, v2

    or-long/2addr v0, v2

    const/16 v2, 0x28

    shl-long v2, v10, v2

    or-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long v2, v12, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, v14, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static zzo(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmm;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/measurement/zzkt;->zzb:I

    if-ge p0, v0, :cond_5

    return-void

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmm;

    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 2
    throw p0
.end method
