.class final Lcom/google/android/gms/tagmanager/zzfu;
.super Ljava/lang/Number;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/tagmanager/zzfu;",
        ">;"
    }
.end annotation


# instance fields
.field private zza:D

.field private zzb:J

.field private final zzc:Z


# direct methods
.method private constructor <init>(D)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzfu;->zza:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzfu;->zzc:Z

    return-void
.end method

.method private constructor <init>(J)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzfu;->zzb:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzfu;->zzc:Z

    return-void
.end method

.method public static zzc(Ljava/lang/Double;)Lcom/google/android/gms/tagmanager/zzfu;
    .registers 4

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfu;

    .line 1
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzfu;-><init>(D)V

    return-object v0
.end method

.method public static zzd(J)Lcom/google/android/gms/tagmanager/zzfu;
    .registers 3

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfu;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzfu;-><init>(J)V

    return-object v0
.end method

.method public static zze(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzfu;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/gms/tagmanager/zzfu;

    .line 1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzfu;-><init>(J)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    :try_start_a
    new-instance v0, Lcom/google/android/gms/tagmanager/zzfu;

    .line 2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzfu;-><init>(D)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " is not a valid TypedNumber"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final byteValue()B
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzb()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/tagmanager/zzfu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzfu;->zza(Lcom/google/android/gms/tagmanager/zzfu;)I

    move-result p1

    return p1
.end method

.method public final doubleValue()D
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzfu;->zzc:Z

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzfu;->zzb:J

    long-to-double v0, v0

    return-wide v0

    :cond_8
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzfu;->zza:D

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/tagmanager/zzfu;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/android/gms/tagmanager/zzfu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzfu;->zza(Lcom/google/android/gms/tagmanager/zzfu;)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final floatValue()F
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzfu;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final hashCode()I
    .registers 4

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzb()J

    move-result-wide v1

    .line 1
    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public final intValue()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzb()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final longValue()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final shortValue()S
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzfu;->zzb()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzfu;->zzc:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzfu;->zzb:J

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzfu;->zza:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/tagmanager/zzfu;)I
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzfu;->zzc:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p1, Lcom/google/android/gms/tagmanager/zzfu;->zzc:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzfu;->zzb:J

    .line 2
    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-wide v1, p1, Lcom/google/android/gms/tagmanager/zzfu;->zzb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1

    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzfu;->doubleValue()D

    move-result-wide v0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzfu;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public final zzb()J
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzfu;->zzc:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzfu;->zzb:J

    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzfu;->zza:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public final zzf()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzfu;->zzc:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzfu;->zzc:Z

    return v0
.end method
