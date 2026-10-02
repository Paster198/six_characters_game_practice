.class final enum Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;
.super Ljava/lang/Enum;
.source "RequestProtocolError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

.field public static final enum BODY_BUT_NO_LENGTH_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

.field public static final enum NO_CACHE_DIRECTIVE_WITH_FIELD_NAME:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

.field public static final enum UNKNOWN:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

.field public static final enum WEAK_ETAG_AND_RANGE_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

.field public static final enum WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 34
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->UNKNOWN:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    .line 35
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    const-string v2, "BODY_BUT_NO_LENGTH_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->BODY_BUT_NO_LENGTH_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    .line 36
    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    const-string v3, "WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    .line 37
    new-instance v3, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    const-string v4, "WEAK_ETAG_AND_RANGE_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->WEAK_ETAG_AND_RANGE_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    .line 38
    new-instance v4, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    const-string v5, "NO_CACHE_DIRECTIVE_WITH_FIELD_NAME"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->NO_CACHE_DIRECTIVE_WITH_FIELD_NAME:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    .line 32
    filled-new-array {v0, v1, v2, v3, v4}, [Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->$VALUES:[Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;
    .registers 2

    .line 32
    const-class v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    return-object p0
.end method

.method public static values()[Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;
    .registers 1

    .line 32
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->$VALUES:[Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    return-object v0
.end method
