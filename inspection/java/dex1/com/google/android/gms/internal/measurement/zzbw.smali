.class final Lcom/google/android/gms/internal/measurement/zzbw;
.super Lcom/google/android/gms/internal/measurement/zzcc;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field private final zzc:Ljava/lang/String;

.field private final zzd:I

.field private final zze:I


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;ZILcom/google/android/gms/internal/measurement/zzbs;Lcom/google/android/gms/internal/measurement/zzbt;ILcom/google/android/gms/internal/measurement/zzbv;)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zzc:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zzd:I

    iput p6, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zze:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzcc;

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcc;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zzc:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcc;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcc;->zzd()Z

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zzd:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcc;->zze()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v1, :cond_37

    if-ne v1, v3, :cond_38

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcc;->zza()Lcom/google/android/gms/internal/measurement/zzbs;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcc;->zzb()Lcom/google/android/gms/internal/measurement/zzbt;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zze:I

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcc;->zzf()I

    move-result p1

    if-eqz v1, :cond_36

    if-ne p1, v0, :cond_38

    return v0

    :cond_36
    throw v4

    .line 4
    :cond_37
    throw v4

    :cond_38
    return v2
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zzc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zzd:I

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    mul-int/2addr v0, v1

    xor-int/lit16 v0, v0, 0x4d5

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zze:I

    if-eqz v1, :cond_1f

    const v1, 0x22cd8cdb

    mul-int/2addr v0, v1

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 2
    :cond_1f
    throw v3

    .line 3
    :cond_20
    throw v3
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zzd:I

    const-string v1, "null"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_18

    const/4 v3, 0x3

    if-eq v0, v3, :cond_15

    const/4 v3, 0x4

    if-eq v0, v3, :cond_12

    move-object v0, v1

    goto :goto_1d

    :cond_12
    const-string v0, "NO_CHECKS"

    goto :goto_1d

    :cond_15
    const-string v0, "SKIP_SECURITY_CHECK"

    goto :goto_1d

    :cond_18
    const-string v0, "SKIP_COMPLIANCE_CHECK"

    goto :goto_1d

    :cond_1b
    const-string v0, "ALL_CHECKS"

    :goto_1d
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zze:I

    if-eq v3, v2, :cond_22

    goto :goto_24

    :cond_22
    const-string v1, "READ_AND_WRITE"

    :goto_24
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zzc:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FileComplianceOptions{fileOwner="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hasDifferentDmaOwner=false, fileChecks="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/measurement/zzbs;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzbt;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zze()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zzd:I

    return v0
.end method

.method public final zzf()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzbw;->zze:I

    return v0
.end method
