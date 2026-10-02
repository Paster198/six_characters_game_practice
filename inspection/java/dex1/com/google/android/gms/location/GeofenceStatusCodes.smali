.class public final Lcom/google/android/gms/location/GeofenceStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;
.source "com.google.android.gms:play-services-location@@18.0.0"


# static fields
.field public static final GEOFENCE_INSUFFICIENT_LOCATION_PERMISSION:I = 0x3ec

.field public static final GEOFENCE_NOT_AVAILABLE:I = 0x3e8

.field public static final GEOFENCE_REQUEST_TOO_FREQUENT:I = 0x3ed

.field public static final GEOFENCE_TOO_MANY_GEOFENCES:I = 0x3e9

.field public static final GEOFENCE_TOO_MANY_PENDING_INTENTS:I = 0x3ea


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_14

    .line 1
    :pswitch_3
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string p0, "GEOFENCE_INSUFFICIENT_LOCATION_PERMISSION"

    return-object p0

    :pswitch_b
    const-string p0, "GEOFENCE_TOO_MANY_PENDING_INTENTS"

    return-object p0

    :pswitch_e
    const-string p0, "GEOFENCE_TOO_MANY_GEOFENCES"

    return-object p0

    :pswitch_11
    const-string p0, "GEOFENCE_NOT_AVAILABLE"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x3e8
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method
