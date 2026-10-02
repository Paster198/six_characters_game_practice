.class public Lcom/google/android/gms/auth/api/proxy/AuthApiStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# static fields
.field public static final AUTH_API_ACCESS_FORBIDDEN:I = 0xbb9

.field public static final AUTH_API_CLIENT_ERROR:I = 0xbba

.field public static final AUTH_API_INVALID_CREDENTIALS:I = 0xbb8

.field public static final AUTH_API_SERVER_ERROR:I = 0xbbb

.field public static final AUTH_APP_CERT_ERROR:I = 0xbbe

.field public static final AUTH_TOKEN_ERROR:I = 0xbbc

.field public static final AUTH_URL_RESOLUTION:I = 0xbbd


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string p0, "AUTH_APP_CERT_ERROR"

    return-object p0

    :pswitch_b
    const-string p0, "AUTH_URL_RESOLUTION"

    return-object p0

    :pswitch_e
    const-string p0, "AUTH_TOKEN_ERROR"

    return-object p0

    :pswitch_11
    const-string p0, "AUTH_API_SERVER_ERROR"

    return-object p0

    :pswitch_14
    const-string p0, "AUTH_API_CLIENT_ERROR"

    return-object p0

    :pswitch_17
    const-string p0, "AUTH_API_ACCESS_FORBIDDEN"

    return-object p0

    :pswitch_1a
    const-string p0, "AUTH_API_INVALID_CREDENTIALS"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0xbb8
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
