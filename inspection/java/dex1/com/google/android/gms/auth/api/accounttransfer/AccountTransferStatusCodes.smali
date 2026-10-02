.class public final Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# static fields
.field public static final CHALLENGE_NOT_ALLOWED:I = 0x5017

.field public static final INVALID_REQUEST:I = 0x5016

.field public static final NOT_ALLOWED_SECURITY:I = 0x5014

.field public static final NO_DATA_AVAILABLE:I = 0x5015

.field public static final SESSION_INACTIVE:I = 0x5018


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_18

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string p0, "SESSION_INACTIVE"

    return-object p0

    :pswitch_b
    const-string p0, "CHALLENGE_NOT_ALLOWED"

    return-object p0

    :pswitch_e
    const-string p0, "INVALID_REQUEST"

    return-object p0

    :pswitch_11
    const-string p0, "NO_DATA_AVAILABLE"

    return-object p0

    :pswitch_14
    const-string p0, "NOT_ALLOWED_SECURITY"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x5014
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
