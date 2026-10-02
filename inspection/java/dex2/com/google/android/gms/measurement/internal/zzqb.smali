.class public final Lcom/google/android/gms/measurement/internal/zzqb;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zzqb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:Ljava/lang/String;

.field public final zzc:J

.field public final zzd:Ljava/lang/Long;

.field public final zze:Ljava/lang/String;

.field public final zzf:Ljava/lang/String;

.field public final zzg:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzqc;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzqc;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzqb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzc:J

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzd:Ljava/lang/Long;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1a

    if-eqz p6, :cond_19

    .line 2
    invoke-virtual {p6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p9

    goto :goto_1a

    :cond_19
    const/4 p9, 0x0

    :cond_1a
    :goto_1a
    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzg:Ljava/lang/Double;

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zze:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzf:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzqd;)V
    .registers 8

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzqd;->zzc:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzqd;->zzd:J

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzqd;->zzb:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzqb;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzc:J

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzf:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p4, :cond_19

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzd:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzg:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zze:Ljava/lang/String;

    return-void

    .line 6
    :cond_19
    instance-of p2, p4, Ljava/lang/Long;

    if-eqz p2, :cond_26

    .line 7
    check-cast p4, Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzd:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzg:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zze:Ljava/lang/String;

    return-void

    .line 8
    :cond_26
    instance-of p2, p4, Ljava/lang/String;

    if-eqz p2, :cond_33

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzd:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzg:Ljava/lang/Double;

    .line 9
    check-cast p4, Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zze:Ljava/lang/String;

    return-void

    .line 10
    :cond_33
    instance-of p2, p4, Ljava/lang/Double;

    if-eqz p2, :cond_40

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzd:Ljava/lang/Long;

    .line 11
    check-cast p4, Ljava/lang/Double;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzg:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zze:Ljava/lang/String;

    return-void

    .line 10
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User attribute given of un-supported type"

    .line 12
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzqc;->zza(Lcom/google/android/gms/measurement/internal/zzqb;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzd:Ljava/lang/Long;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zzg:Ljava/lang/Double;

    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzqb;->zze:Ljava/lang/String;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method
