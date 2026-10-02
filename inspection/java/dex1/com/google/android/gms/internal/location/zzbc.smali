.class public final Lcom/google/android/gms/internal/location/zzbc;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-location@@18.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/location/zzbc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zza:I

.field final zzb:Lcom/google/android/gms/internal/location/zzba;

.field final zzc:Lcom/google/android/gms/location/zzbd;

.field final zzd:Landroid/app/PendingIntent;

.field final zze:Lcom/google/android/gms/location/zzba;

.field final zzf:Lcom/google/android/gms/internal/location/zzai;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzbd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzbd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzbc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/location/zzbc;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzbc;->zzb:Lcom/google/android/gms/internal/location/zzba;

    const/4 p1, 0x0

    if-nez p3, :cond_c

    move-object p2, p1

    goto :goto_10

    .line 2
    :cond_c
    invoke-static {p3}, Lcom/google/android/gms/location/zzbc;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzbd;

    move-result-object p2

    .line 1
    :goto_10
    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzbc;->zzc:Lcom/google/android/gms/location/zzbd;

    iput-object p4, p0, Lcom/google/android/gms/internal/location/zzbc;->zzd:Landroid/app/PendingIntent;

    if-nez p5, :cond_18

    move-object p2, p1

    goto :goto_1c

    .line 3
    :cond_18
    invoke-static {p5}, Lcom/google/android/gms/location/zzaz;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzba;

    move-result-object p2

    .line 1
    :goto_1c
    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzbc;->zze:Lcom/google/android/gms/location/zzba;

    if-nez p6, :cond_21

    goto :goto_33

    :cond_21
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    .line 4
    invoke-interface {p6, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 5
    instance-of p2, p1, Lcom/google/android/gms/internal/location/zzai;

    if-eqz p2, :cond_2e

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/location/zzai;

    goto :goto_33

    :cond_2e
    new-instance p1, Lcom/google/android/gms/internal/location/zzag;

    .line 7
    invoke-direct {p1, p6}, Lcom/google/android/gms/internal/location/zzag;-><init>(Landroid/os/IBinder;)V

    .line 1
    :goto_33
    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbc;->zzf:Lcom/google/android/gms/internal/location/zzai;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/location/zzbd;Lcom/google/android/gms/internal/location/zzai;)Lcom/google/android/gms/internal/location/zzbc;
    .registers 9

    new-instance v0, Lcom/google/android/gms/internal/location/zzbc;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    :cond_5
    move-object v6, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object v3, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/location/zzba;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/location/zzai;)Lcom/google/android/gms/internal/location/zzbc;
    .registers 10

    new-instance v0, Lcom/google/android/gms/internal/location/zzbc;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/location/zzba;Lcom/google/android/gms/internal/location/zzai;)Lcom/google/android/gms/internal/location/zzbc;
    .registers 9

    new-instance v0, Lcom/google/android/gms/internal/location/zzbc;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    :cond_5
    move-object v6, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object v5, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/location/zzbc;->zza:I

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbc;->zzb:Lcom/google/android/gms/internal/location/zzba;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbc;->zzc:Lcom/google/android/gms/location/zzbd;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    move-object v1, v2

    goto :goto_1c

    .line 8
    :cond_18
    invoke-interface {v1}, Lcom/google/android/gms/location/zzbd;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1c
    const/4 v4, 0x3

    .line 4
    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x4

    iget-object v4, p0, Lcom/google/android/gms/internal/location/zzbc;->zzd:Landroid/app/PendingIntent;

    .line 5
    invoke-static {p1, v1, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/location/zzbc;->zze:Lcom/google/android/gms/location/zzba;

    if-nez p2, :cond_2c

    move-object p2, v2

    goto :goto_30

    .line 8
    :cond_2c
    invoke-interface {p2}, Lcom/google/android/gms/location/zzba;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_30
    const/4 v1, 0x5

    .line 6
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/location/zzbc;->zzf:Lcom/google/android/gms/internal/location/zzai;

    if-nez p2, :cond_39

    goto :goto_3d

    .line 8
    :cond_39
    invoke-interface {p2}, Lcom/google/android/gms/internal/location/zzai;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_3d
    const/4 p2, 0x6

    .line 7
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
