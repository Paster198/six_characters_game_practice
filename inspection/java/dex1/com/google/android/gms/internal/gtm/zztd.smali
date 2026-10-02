.class public abstract Lcom/google/android/gms/internal/gtm/zztd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/gms/internal/gtm/zztd;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/gtm/zztd;

.field private static final zzd:Lcom/google/android/gms/internal/gtm/zztc;


# instance fields
.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzta;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzvi;->zzc:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzta;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zztd;->zzb:Lcom/google/android/gms/internal/gtm/zztd;

    .line 2
    sget v0, Lcom/google/android/gms/internal/gtm/zzsk;->zza:I

    new-instance v0, Lcom/google/android/gms/internal/gtm/zztc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zztc;-><init>(Lcom/google/android/gms/internal/gtm/zztb;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zztd;->zzd:Lcom/google/android/gms/internal/gtm/zztc;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzsv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzsv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zztd;->zza:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztd;->zzc:I

    return-void
.end method

.method static zzk(III)I
    .registers 6

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_6e

    if-ltz p0, :cond_50

    if-ge p1, p0, :cond_2f

    .line 3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x42

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Beginning index larger than ending index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1
    :cond_2f
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 0
    :cond_50
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 1
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    return v0
.end method

.method public static zzm([B)Lcom/google/android/gms/internal/gtm/zztd;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zztd;->zzn([BII)Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object p0

    return-object p0
.end method

.method public static zzn([BII)Lcom/google/android/gms/internal/gtm/zztd;
    .registers 6

    add-int v0, p1, p2

    .line 1
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zztd;->zzk(III)I

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzta;

    new-array v1, p2, [B

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzta;-><init>([B)V

    return-object v0
.end method

.method public static zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zztd;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzta;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzvi;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzta;-><init>([B)V

    return-object v0
.end method

.method static zzp([B)Lcom/google/android/gms/internal/gtm/zztd;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzta;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzta;-><init>([B)V

    return-object v0
.end method

.method static zzq([BII)Lcom/google/android/gms/internal/gtm/zztd;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzsx;

    .line 1
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzsx;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztd;->zzc:I

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zztd;->zzd()I

    move-result v0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/gtm/zztd;->zzf(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :cond_10
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztd;->zzc:I

    :cond_12
    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzst;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzst;-><init>(Lcom/google/android/gms/internal/gtm/zztd;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zztd;->zzd()I

    move-result v2

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zztd;->zzd()I

    move-result v3

    const/16 v4, 0x32

    if-gt v3, v4, :cond_1f

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzxm;->zza(Lcom/google/android/gms/internal/gtm/zztd;)Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    :cond_1f
    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/gtm/zztd;->zzg(II)Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzxm;->zza(Lcom/google/android/gms/internal/gtm/zztd;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_34
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    .line 4
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza(I)B
.end method

.method abstract zzb(I)B
.end method

.method public abstract zzd()I
.end method

.method protected abstract zze([BIII)V
.end method

.method protected abstract zzf(III)I
.end method

.method public abstract zzg(II)Lcom/google/android/gms/internal/gtm/zztd;
.end method

.method protected abstract zzh(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract zzi(Lcom/google/android/gms/internal/gtm/zzss;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzj()Z
.end method

.method protected final zzl()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zztd;->zzc:I

    return v0
.end method

.method public final zzr(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zztd;->zzd()I

    move-result v0

    if-nez v0, :cond_9

    const-string p1, ""

    return-object p1

    .line 1
    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zztd;->zzh(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
