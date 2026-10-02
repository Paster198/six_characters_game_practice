.class public final Lcom/google/android/gms/location/LocationStatusCodes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@18.0.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ERROR:I = 0x1

.field public static final GEOFENCE_NOT_AVAILABLE:I = 0x3e8

.field public static final GEOFENCE_TOO_MANY_GEOFENCES:I = 0x3e9

.field public static final GEOFENCE_TOO_MANY_PENDING_INTENTS:I = 0x3ea

.field public static final SUCCESS:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(I)I
    .registers 3

    const/4 v0, 0x1

    if-ltz p0, :cond_5

    if-le p0, v0, :cond_d

    :cond_5
    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_e

    const/16 v1, 0x3ee

    if-ge p0, v1, :cond_e

    :cond_d
    return p0

    :cond_e
    return v0
.end method

.method public static zzb(I)Lcom/google/android/gms/common/api/Status;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    goto :goto_6

    :cond_4
    const/16 p0, 0xd

    .line 1
    :goto_6
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    return-object v0
.end method
