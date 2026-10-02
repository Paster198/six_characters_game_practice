.class Lcom/google/android/gms/internal/fido/zzge;
.super Lcom/google/android/gms/internal/fido/zzgf;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private volatile zza:Lcom/google/android/gms/internal/fido/zzgf;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final zzb:Lcom/google/android/gms/internal/fido/zzgb;

.field final zzc:Ljava/lang/Character;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fido/zzgb;Ljava/lang/Character;)V
    .registers 4
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzgf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    if-eqz p2, :cond_23

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/fido/zzgb;->zzc(C)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_23

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Padding character %s was already in alphabet"

    .line 2
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/fido/zzbo;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    :goto_23
    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzge;->zzc:Ljava/lang/Character;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .registers 5
    .param p3    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/fido/zzgb;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/fido/zzgb;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/fido/zzge;-><init>(Lcom/google/android/gms/internal/fido/zzgb;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/fido/zzge;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/google/android/gms/internal/fido/zzge;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    .line 2
    iget-object v2, p1, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/fido/zzgb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzge;->zzc:Ljava/lang/Character;

    iget-object p1, p1, Lcom/google/android/gms/internal/fido/zzge;->zzc:Ljava/lang/Character;

    .line 3
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    return p1

    :cond_1d
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzge;->zzc:Ljava/lang/Character;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzgb;->hashCode()I

    move-result v1

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    iget v1, v1, Lcom/google/android/gms/internal/fido/zzgb;->zzb:I

    const/16 v2, 0x8

    .line 3
    rem-int/2addr v2, v1

    if-eqz v2, :cond_2e

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzge;->zzc:Ljava/lang/Character;

    if-nez v1, :cond_1f

    const-string v1, ".omitPadding()"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_1f
    const-string v1, ".withPadChar(\'"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzge;->zzc:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zza(Lcom/google/android/gms/internal/fido/zzgb;Ljava/lang/Character;)Lcom/google/android/gms/internal/fido/zzgf;
    .registers 4
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzge;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/fido/zzge;-><init>(Lcom/google/android/gms/internal/fido/zzgb;Ljava/lang/Character;)V

    return-object v0
.end method

.method zzb(Ljava/lang/Appendable;[BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length p3, p2

    const/4 v0, 0x0

    invoke-static {v0, p4, p3}, Lcom/google/android/gms/internal/fido/zzbm;->zze(III)V

    :goto_5
    if-ge v0, p4, :cond_1a

    iget-object p3, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    iget p3, p3, Lcom/google/android/gms/internal/fido/zzgb;->zzd:I

    sub-int v1, p4, v0

    .line 2
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/fido/zzge;->zze(Ljava/lang/Appendable;[BII)V

    iget-object p3, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    iget p3, p3, Lcom/google/android/gms/internal/fido/zzgb;->zzd:I

    add-int/2addr v0, p3

    goto :goto_5

    :cond_1a
    return-void
.end method

.method final zzc(I)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    iget v1, v0, Lcom/google/android/gms/internal/fido/zzgb;->zzd:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/fido/zzgh;->zza(IILjava/math/RoundingMode;)I

    move-result p1

    iget v0, v0, Lcom/google/android/gms/internal/fido/zzgb;->zzc:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/fido/zzgf;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzge;->zza:Lcom/google/android/gms/internal/fido/zzgf;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzgb;->zzb()Lcom/google/android/gms/internal/fido/zzgb;

    move-result-object v1

    if-ne v1, v0, :cond_e

    move-object v0, p0

    goto :goto_14

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzge;->zzc:Ljava/lang/Character;

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/fido/zzge;->zza(Lcom/google/android/gms/internal/fido/zzgb;Ljava/lang/Character;)Lcom/google/android/gms/internal/fido/zzgf;

    move-result-object v0

    .line 1
    :goto_14
    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzge;->zza:Lcom/google/android/gms/internal/fido/zzgf;

    :cond_16
    return-object v0
.end method

.method final zze(Ljava/lang/Appendable;[BII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p3, p4

    .line 1
    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/fido/zzbm;->zze(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    iget v0, v0, Lcom/google/android/gms/internal/fido/zzgb;->zzd:I

    const/4 v1, 0x0

    if-gt p4, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    move v0, v1

    .line 2
    :goto_10
    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzbm;->zzc(Z)V

    const-wide/16 v2, 0x0

    move v0, v1

    :goto_16
    const/16 v4, 0x8

    if-ge v0, p4, :cond_26

    add-int v5, p3, v0

    .line 3
    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v2, v5

    shl-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_26
    add-int/lit8 p2, p4, 0x1

    mul-int/2addr p2, v4

    iget-object p3, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    :goto_2b
    mul-int/lit8 v0, p4, 0x8

    if-ge v1, v0, :cond_49

    iget v0, p3, Lcom/google/android/gms/internal/fido/zzgb;->zzb:I

    sub-int v0, p2, v0

    sub-int/2addr v0, v1

    ushr-long v5, v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    long-to-int v5, v5

    iget v6, v0, Lcom/google/android/gms/internal/fido/zzgb;->zza:I

    and-int/2addr v5, v6

    .line 4
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/fido/zzgb;->zza(I)C

    move-result v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    iget v0, v0, Lcom/google/android/gms/internal/fido/zzgb;->zzb:I

    add-int/2addr v1, v0

    goto :goto_2b

    :cond_49
    iget-object p2, p0, Lcom/google/android/gms/internal/fido/zzge;->zzc:Ljava/lang/Character;

    if-eqz p2, :cond_64

    :goto_4d
    iget-object p2, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    iget p2, p2, Lcom/google/android/gms/internal/fido/zzgb;->zzd:I

    mul-int/2addr p2, v4

    if-ge v1, p2, :cond_64

    iget-object p2, p0, Lcom/google/android/gms/internal/fido/zzge;->zzc:Ljava/lang/Character;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    const/16 p2, 0x3d

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object p2, p0, Lcom/google/android/gms/internal/fido/zzge;->zzb:Lcom/google/android/gms/internal/fido/zzgb;

    iget p2, p2, Lcom/google/android/gms/internal/fido/zzgb;->zzb:I

    add-int/2addr v1, p2

    goto :goto_4d

    :cond_64
    return-void
.end method
