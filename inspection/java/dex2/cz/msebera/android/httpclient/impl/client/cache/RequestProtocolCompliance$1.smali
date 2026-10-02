.class synthetic Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance$1;
.super Ljava/lang/Object;
.source "RequestProtocolCompliance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cz$msebera$android$httpclient$impl$client$cache$RequestProtocolError:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 284
    invoke-static {}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->values()[Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance$1;->$SwitchMap$cz$msebera$android$httpclient$impl$client$cache$RequestProtocolError:[I

    :try_start_9
    sget-object v1, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->BODY_BUT_NO_LENGTH_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance$1;->$SwitchMap$cz$msebera$android$httpclient$impl$client$cache$RequestProtocolError:[I

    sget-object v1, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->WEAK_ETAG_AND_RANGE_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance$1;->$SwitchMap$cz$msebera$android$httpclient$impl$client$cache$RequestProtocolError:[I

    sget-object v1, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance$1;->$SwitchMap$cz$msebera$android$httpclient$impl$client$cache$RequestProtocolError:[I

    sget-object v1, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->NO_CACHE_DIRECTIVE_WITH_FIELD_NAME:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
