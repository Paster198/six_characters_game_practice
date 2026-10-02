.class public final Lcom/google/android/gms/internal/fido/zzhg;
.super Lcom/google/android/gms/internal/fido/zzhp;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/fido/zzcc;

.field private final zzb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fido/zzcc;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/fido/zzhf;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzhp;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzhg;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    const/4 p1, 0x0

    move v0, p1

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzhg;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v2

    if-ge p1, v2, :cond_22

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/fido/zzcc;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fido/zzhp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzhp;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_1f

    move v0, v1

    :cond_1f
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_22
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/fido/zzhg;->zzb:I

    const/16 p1, 0x8

    if-gt v0, p1, :cond_2b

    return-void

    :cond_2b
    new-instance p1, Lcom/google/android/gms/internal/fido/zzhf;

    const-string v0, "Exceeded cutoff limit for max depth of cbor value"

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/fido/zzhf;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhp;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhp;->zza()I

    move-result v0

    const/16 v1, -0x80

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzhg;->zzd(B)I

    move-result v2

    if-eq v2, v0, :cond_18

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhp;->zza()I

    move-result p1

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzhg;->zzd(B)I

    move-result v0

    sub-int/2addr v0, p1

    return v0

    .line 4
    :cond_18
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhg;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhg;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v1

    .line 5
    iget-object v2, p1, Lcom/google/android/gms/internal/fido/zzhg;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v3

    if-eq v1, v3, :cond_32

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v0

    sub-int/2addr p1, v0

    return p1

    :cond_32
    const/4 v0, 0x0

    move v1, v0

    :goto_34
    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzhg;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzcc;->size()I

    move-result v3

    if-ge v1, v3, :cond_54

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/fido/zzcc;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/fido/zzhp;

    .line 7
    iget-object v3, p1, Lcom/google/android/gms/internal/fido/zzhg;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/fido/zzcc;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/fido/zzhp;

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fido/zzhp;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_51

    return v2

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_54
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 1
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    :cond_13
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhg;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhg;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    iget-object p1, p1, Lcom/google/android/gms/internal/fido/zzhg;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fido/zzcc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 3

    const/16 v0, -0x80

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhg;->zzd(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzhg;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhg;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "[]"

    return-object v0

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzhg;->zza:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_31

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3
    check-cast v4, Lcom/google/android/gms/internal/fido/zzhp;

    .line 4
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, "\n  "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_31
    const-string v1, ",\n  "

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzbd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/fido/zzbd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[\n  "

    .line 5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/fido/zzbd;->zzc(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    const-string v0, "\n]"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zza()I
    .registers 2

    const/16 v0, -0x80

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhg;->zzd(B)I

    move-result v0

    return v0
.end method

.method protected final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/fido/zzhg;->zzb:I

    return v0
.end method
