.class public final Lcom/google/android/gms/internal/fido/zzhk;
.super Lcom/google/android/gms/internal/fido/zzhp;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final zza:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhp;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/fido/zzhk;->zza:J

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzhk;->zza()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhp;->zza()I

    move-result v1

    if-eq v0, v1, :cond_16

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzhk;->zza()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhp;->zza()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    .line 4
    :cond_16
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhk;

    iget-wide v0, p0, Lcom/google/android/gms/internal/fido/zzhk;->zza:J

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 6
    iget-wide v2, p1, Lcom/google/android/gms/internal/fido/zzhk;->zza:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2a

    const/4 p1, -0x1

    return p1

    :cond_2a
    if-lez p1, :cond_2e

    const/4 p1, 0x1

    return p1

    :cond_2e
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhk;

    iget-wide v2, p0, Lcom/google/android/gms/internal/fido/zzhk;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/fido/zzhk;->zza:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1e

    return v0

    :cond_1e
    return v1
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzhk;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/fido/zzhk;->zza:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/fido/zzhk;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zza()I
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/fido/zzhk;->zza:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_c

    :cond_a
    const/16 v0, 0x20

    :goto_c
    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhk;->zzd(B)I

    move-result v0

    return v0
.end method

.method public final zzc()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/fido/zzhk;->zza:J

    return-wide v0
.end method
