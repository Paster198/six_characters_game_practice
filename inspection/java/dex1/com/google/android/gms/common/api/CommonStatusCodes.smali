.class public Lcom/google/android/gms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# static fields
.field public static final API_NOT_CONNECTED:I = 0x11

.field public static final CANCELED:I = 0x10

.field public static final CONNECTION_SUSPENDED_DURING_CALL:I = 0x14

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final ERROR:I = 0xd

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xe

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RECONNECTION_TIMED_OUT:I = 0x16

.field public static final RECONNECTION_TIMED_OUT_DURING_UPDATE:I = 0x15

.field public static final REMOTE_EXCEPTION:I = 0x13

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final SERVICE_DISABLED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_CACHE:I = -0x1

.field public static final TIMEOUT:I = 0xf


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_5c

    .line 1
    :pswitch_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x15

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "unknown status code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1f
    const-string p0, "RECONNECTION_TIMED_OUT"

    return-object p0

    :pswitch_22
    const-string p0, "RECONNECTION_TIMED_OUT_DURING_UPDATE"

    return-object p0

    :pswitch_25
    const-string p0, "CONNECTION_SUSPENDED_DURING_CALL"

    return-object p0

    :pswitch_28
    const-string p0, "REMOTE_EXCEPTION"

    return-object p0

    :pswitch_2b
    const-string p0, "DEAD_CLIENT"

    return-object p0

    :pswitch_2e
    const-string p0, "API_NOT_CONNECTED"

    return-object p0

    :pswitch_31
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_34
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_37
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_3a
    const-string p0, "ERROR"

    return-object p0

    :pswitch_3d
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :pswitch_40
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_43
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :pswitch_46
    const-string p0, "RESOLUTION_REQUIRED"

    return-object p0

    :pswitch_49
    const-string p0, "INVALID_ACCOUNT"

    return-object p0

    :pswitch_4c
    const-string p0, "SIGN_IN_REQUIRED"

    return-object p0

    :pswitch_4f
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    :pswitch_52
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_55
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_58
    const-string p0, "SUCCESS_CACHE"

    return-object p0

    nop

    :pswitch_data_5c
    .packed-switch -0x1
        :pswitch_58
        :pswitch_55
        :pswitch_3
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3
        :pswitch_3d
        :pswitch_3
        :pswitch_3
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method
