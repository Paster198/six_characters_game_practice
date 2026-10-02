.class public Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;
.super Ljava/lang/Object;
.source "EnglishReasonPhraseCatalog.java"

# interfaces
.implements Lcz/msebera/android/httpclient/ReasonPhraseCatalog;


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;

.field private static final REASON_PHRASES:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 54
    new-instance v0, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->INSTANCE:Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;

    const/4 v0, 0x6

    .line 91
    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-array v3, v2, [Ljava/lang/String;

    aput-object v3, v0, v1

    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v2, [Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->REASON_PHRASES:[[Ljava/lang/String;

    const/16 v0, 0xc8

    .line 121
    const-string v1, "OK"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xc9

    .line 123
    const-string v1, "Created"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xca

    .line 125
    const-string v1, "Accepted"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcc

    .line 127
    const-string v1, "No Content"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12d

    .line 129
    const-string v1, "Moved Permanently"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12e

    .line 131
    const-string v1, "Moved Temporarily"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x130

    .line 133
    const-string v1, "Not Modified"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x190

    .line 135
    const-string v1, "Bad Request"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x191

    .line 137
    const-string v1, "Unauthorized"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x193

    .line 139
    const-string v1, "Forbidden"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x194

    .line 141
    const-string v1, "Not Found"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f4

    .line 143
    const-string v1, "Internal Server Error"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f5

    .line 145
    const-string v1, "Not Implemented"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f6

    .line 147
    const-string v1, "Bad Gateway"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f7

    .line 149
    const-string v1, "Service Unavailable"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x64

    .line 153
    const-string v1, "Continue"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x133

    .line 155
    const-string v1, "Temporary Redirect"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x195

    .line 157
    const-string v1, "Method Not Allowed"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x199

    .line 159
    const-string v1, "Conflict"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19c

    .line 161
    const-string v1, "Precondition Failed"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19d

    .line 163
    const-string v1, "Request Too Long"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19e

    .line 165
    const-string v1, "Request-URI Too Long"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19f

    .line 167
    const-string v1, "Unsupported Media Type"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12c

    .line 169
    const-string v1, "Multiple Choices"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x12f

    .line 171
    const-string v1, "See Other"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x131

    .line 173
    const-string v1, "Use Proxy"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x192

    .line 175
    const-string v1, "Payment Required"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x196

    .line 177
    const-string v1, "Not Acceptable"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x197

    .line 179
    const-string v1, "Proxy Authentication Required"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x198

    .line 181
    const-string v1, "Request Timeout"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x65

    .line 184
    const-string v1, "Switching Protocols"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcb

    .line 186
    const-string v1, "Non Authoritative Information"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcd

    .line 188
    const-string v1, "Reset Content"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xce

    .line 190
    const-string v1, "Partial Content"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f8

    .line 192
    const-string v1, "Gateway Timeout"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1f9

    .line 194
    const-string v1, "Http Version Not Supported"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19a

    .line 196
    const-string v1, "Gone"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x19b

    .line 198
    const-string v1, "Length Required"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a0

    .line 200
    const-string v1, "Requested Range Not Satisfiable"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a1

    .line 202
    const-string v1, "Expectation Failed"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x66

    .line 206
    const-string v1, "Processing"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0xcf

    .line 208
    const-string v1, "Multi-Status"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a6

    .line 210
    const-string v1, "Unprocessable Entity"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a3

    .line 212
    const-string v1, "Insufficient Space On Resource"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a4

    .line 214
    const-string v1, "Method Failure"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a7

    .line 216
    const-string v1, "Locked"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1fb

    .line 218
    const-string v1, "Insufficient Storage"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    const/16 v0, 0x1a8

    .line 220
    const-string v1, "Failed Dependency"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->setReason(ILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setReason(ILjava/lang/String;)V
    .registers 4

    .line 110
    div-int/lit8 v0, p0, 0x64

    mul-int/lit8 v1, v0, 0x64

    sub-int/2addr p0, v1

    .line 112
    sget-object v1, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object v0, v1, v0

    aput-object p1, v0, p0

    return-void
.end method


# virtual methods
.method public getReason(ILjava/util/Locale;)Ljava/lang/String;
    .registers 5

    const/16 p2, 0x64

    if-lt p1, p2, :cond_a

    const/16 p2, 0x258

    if-ge p1, p2, :cond_a

    const/4 p2, 0x1

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    .line 77
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown category for status code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 78
    div-int/lit8 p2, p1, 0x64

    mul-int/lit8 v0, p2, 0x64

    sub-int/2addr p1, v0

    .line 82
    sget-object v0, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->REASON_PHRASES:[[Ljava/lang/String;

    aget-object p2, v0, p2

    array-length v0, p2

    if-le v0, p1, :cond_2c

    .line 83
    aget-object p1, p2, p1

    return-object p1

    :cond_2c
    const/4 p1, 0x0

    return-object p1
.end method
