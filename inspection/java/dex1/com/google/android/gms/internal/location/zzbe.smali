.class public final Lcom/google/android/gms/internal/location/zzbe;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-location@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/location/Geofence;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/location/zzbe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:J

.field private final zzc:S

.field private final zzd:D

.field private final zze:D

.field private final zzf:F

.field private final zzg:I

.field private final zzh:I

.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzbf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzbf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzbe;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ISDDFJII)V
    .registers 15

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    if-eqz p1, :cond_b3

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_f

    goto/16 :goto_b3

    :cond_f
    const/4 v0, 0x0

    cmpg-float v0, p8, v0

    if-lez v0, :cond_9a

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p4, v0

    if-gtz v0, :cond_81

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p4, v0

    if-ltz v0, :cond_81

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p6, v0

    if-gtz v0, :cond_68

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p6, v0

    if-ltz v0, :cond_68

    and-int/lit8 v0, p2, 0x7

    if-eqz v0, :cond_4f

    .line 6
    iput-short p3, p0, Lcom/google/android/gms/internal/location/zzbe;->zzc:S

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbe;->zza:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/location/zzbe;->zzd:D

    iput-wide p6, p0, Lcom/google/android/gms/internal/location/zzbe;->zze:D

    iput p8, p0, Lcom/google/android/gms/internal/location/zzbe;->zzf:F

    iput-wide p9, p0, Lcom/google/android/gms/internal/location/zzbe;->zzb:J

    iput v0, p0, Lcom/google/android/gms/internal/location/zzbe;->zzg:I

    iput p11, p0, Lcom/google/android/gms/internal/location/zzbe;->zzh:I

    iput p12, p0, Lcom/google/android/gms/internal/location/zzbe;->zzi:I

    return-void

    .line 5
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const/16 p4, 0x2e

    .line 6
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "No supported transition specified: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p3, 0x2b

    .line 5
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "invalid longitude: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p3, 0x2a

    .line 4
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "invalid latitude: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_9a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p3, 0x1f

    .line 7
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "invalid radius: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_b3
    :goto_b3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const-string p4, "requestId is null or too long: "

    if-eqz p3, :cond_c6

    invoke-virtual {p4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_cb

    .line 7
    :cond_c6
    new-instance p1, Ljava/lang/String;

    .line 3
    invoke-direct {p1, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_cb
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/location/zzbe;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/location/zzbe;

    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzf:F

    .line 3
    iget v3, p1, Lcom/google/android/gms/internal/location/zzbe;->zzf:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2a

    iget-wide v3, p0, Lcom/google/android/gms/internal/location/zzbe;->zzd:D

    iget-wide v5, p1, Lcom/google/android/gms/internal/location/zzbe;->zzd:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2a

    iget-wide v3, p0, Lcom/google/android/gms/internal/location/zzbe;->zze:D

    iget-wide v5, p1, Lcom/google/android/gms/internal/location/zzbe;->zze:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2a

    iget-short v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzc:S

    iget-short p1, p1, Lcom/google/android/gms/internal/location/zzbe;->zzc:S

    if-ne v1, p1, :cond_2a

    return v0

    :cond_2a
    return v2
.end method

.method public final getRequestId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbe;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/location/zzbe;->zzd:D

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/location/zzbe;->zze:D

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long v5, v0, v4

    xor-long/2addr v0, v5

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long v1, v2, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzf:F

    .line 3
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzc:S

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzg:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 13

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-short v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzc:S

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    const-string v1, "UNKNOWN"

    goto :goto_12

    .line 9
    :cond_d
    const-string v1, "CIRCLE"

    goto :goto_12

    :cond_10
    const-string v1, "INVALID"

    :goto_12
    move-object v2, v1

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zza:Ljava/lang/String;

    const-string v3, "\\p{C}"

    const-string v4, "?"

    .line 1
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzg:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gms/internal/location/zzbe;->zzd:D

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide v6, p0, Lcom/google/android/gms/internal/location/zzbe;->zze:D

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzf:F

    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzh:I

    div-int/lit16 v1, v1, 0x3e8

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzi:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-wide v10, p0, Lcom/google/android/gms/internal/location/zzbe;->zzb:J

    .line 8
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array/range {v2 .. v10}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]"

    .line 9
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbe;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzb:J

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x3

    iget-short v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzc:S

    .line 4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeShort(Landroid/os/Parcel;IS)V

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzd:D

    .line 5
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zze:D

    .line 6
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzf:F

    .line 7
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzg:I

    .line 8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzh:I

    .line 9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v0, 0x9

    iget v1, p0, Lcom/google/android/gms/internal/location/zzbe;->zzi:I

    .line 10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 11
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
