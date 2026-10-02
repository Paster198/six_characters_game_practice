.class synthetic Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase$1;
.super Ljava/lang/Object;
.source "RequestAuthenticationBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cz$msebera$android$httpclient$auth$AuthProtocolState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 61
    invoke-static {}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->values()[Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase$1;->$SwitchMap$cz$msebera$android$httpclient$auth$AuthProtocolState:[I

    :try_start_9
    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->FAILURE:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase$1;->$SwitchMap$cz$msebera$android$httpclient$auth$AuthProtocolState:[I

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->SUCCESS:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase$1;->$SwitchMap$cz$msebera$android$httpclient$auth$AuthProtocolState:[I

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->CHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
