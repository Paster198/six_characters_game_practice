.class public abstract Lcom/google/android/gms/internal/play_billing/zzfp;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/play_billing/zzfp;


# instance fields
.field private zzb:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfn;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfn;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    .line 2
    sget v0, Lcom/google/android/gms/internal/play_billing/zzfc;->zza:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfp;->zzb:I

    return-void
.end method

.method static zzj(III)I
    .registers 6

    or-int v0, p0, p1

    sub-int v1, p1, p0

    or-int/2addr v0, v1

    sub-int v2, p2, p1

    or-int/2addr v0, v2

    if-gez v0, :cond_5f

    if-ltz p0, :cond_46

    if-ge p1, p0, :cond_2a

    .line 3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Beginning index larger than ending index: "

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1
    :cond_2a
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End index: "

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_46
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Beginning index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5f
    return v1
.end method

.method public static zzk([BII)Lcom/google/android/gms/internal/play_billing/zzfp;
    .registers 5

    add-int v0, p1, p2

    .line 1
    :try_start_2
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzj(III)I

    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzfn;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzfn;-><init>([B)V
    :try_end_11
    .catch Lcom/google/android/gms/internal/play_billing/zzhb; {:try_start_2 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Expected no InvalidProtocolBufferException as data UTF8 validity is not checked."

    .line 4
    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static bridge synthetic zzl([BI[BII)Z
    .registers 7

    add-int v0, p1, p4

    .line 1
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzj(III)I

    add-int/2addr p4, p3

    array-length v1, p2

    .line 2
    invoke-static {p3, p4, v1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzj(III)I

    :goto_b
    if-ge p1, v0, :cond_1a

    .line 3
    aget-byte p4, p0, p1

    aget-byte v1, p2, p3

    if-eq p4, v1, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    if-eqz v1, :cond_29

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfp;->zzb:I

    iget v1, p1, Lcom/google/android/gms/internal/play_billing/zzfp;->zzb:I

    if-eqz v0, :cond_24

    if-eqz v1, :cond_24

    if-eq v0, v1, :cond_24

    return v2

    .line 3
    :cond_24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzh(Lcom/google/android/gms/internal/play_billing/zzfp;)Z

    move-result p1

    return p1

    :cond_29
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfp;->zzb:I

    if-nez v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v1

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzc(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :cond_10
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfp;->zzb:I

    :cond_12
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzfh;-><init>(Lcom/google/android/gms/internal/play_billing/zzfp;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v2

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v3

    const/16 v4, 0x32

    if-gt v3, v4, :cond_23

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzm()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzio;->zza([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_38

    :cond_23
    const/4 v3, 0x0

    const/16 v4, 0x2f

    .line 4
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfp;->zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzm()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzio;->zza([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_38
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    .line 5
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract zza(I)B
.end method

.method protected abstract zzc(III)I
.end method

.method public abstract zzd()I
.end method

.method public abstract zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;
.end method

.method protected abstract zzf([BIII)V
.end method

.method abstract zzg(Lcom/google/android/gms/internal/play_billing/zzfg;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract zzh(Lcom/google/android/gms/internal/play_billing/zzfp;)Z
.end method

.method public final zzm()[B
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    return-object v0

    .line 2
    :cond_9
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzf([BIII)V

    return-object v1
.end method
