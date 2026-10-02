.class public final Lcom/google/android/gms/internal/gtm/zzvi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field static final zza:Ljava/nio/charset/Charset;

.field static final zzb:Ljava/nio/charset/Charset;

.field public static final zzc:[B

.field public static final zzd:Ljava/nio/ByteBuffer;

.field public static final zze:Lcom/google/android/gms/internal/gtm/zztj;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzvi;->zza:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzvi;->zzb:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v2, v0, [B

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzvi;->zzc:[B

    .line 3
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzvi;->zzd:Ljava/nio/ByteBuffer;

    .line 4
    sget v1, Lcom/google/android/gms/internal/gtm/zztj;->zzd:I

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/gtm/zztf;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/gtm/zztf;-><init>([BIIZLcom/google/android/gms/internal/gtm/zzte;)V

    .line 7
    :try_start_26
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zztf;->zzb(I)I
    :try_end_29
    .catch Lcom/google/android/gms/internal/gtm/zzvk; {:try_start_26 .. :try_end_29} :catch_2c

    .line 8
    sput-object v1, Lcom/google/android/gms/internal/gtm/zzvi;->zze:Lcom/google/android/gms/internal/gtm/zztj;

    return-void

    :catch_2c
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 8
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza(Z)I
    .registers 1

    if-eqz p0, :cond_5

    const/16 p0, 0x4cf

    return p0

    :cond_5
    const/16 p0, 0x4d5

    return p0
.end method

.method public static zzb([B)I
    .registers 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzvi;->zzd(I[BII)I

    move-result p0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    :cond_9
    return p0
.end method

.method public static zzc(J)I
    .registers 4

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method static zzd(I[BII)I
    .registers 6

    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_d

    mul-int/lit8 p0, p0, 0x1f

    .line 1
    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return p0
.end method

.method static zze(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method static zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzwk;

    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzwk;->zzap()Lcom/google/android/gms/internal/gtm/zzwj;

    move-result-object p0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzwk;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/gtm/zzwj;->zzx(Lcom/google/android/gms/internal/gtm/zzwk;)Lcom/google/android/gms/internal/gtm/zzwj;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzwj;->zzD()Lcom/google/android/gms/internal/gtm/zzwk;

    move-result-object p0

    return-object p0
.end method

.method public static zzh([B)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzvi;->zza:Ljava/nio/charset/Charset;

    .line 1
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method static zzi(Lcom/google/android/gms/internal/gtm/zzwk;)Z
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzsi;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzsi;

    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static zzj([B)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzyd;->zze([B)Z

    move-result p0

    return p0
.end method
