.class Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;
.super Ljava/lang/Object;
.source "RFC6265CookieSpecBase.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpec;


# static fields
.field private static final COMMA_CHAR:C = ','

.field private static final DQUOTE_CHAR:C = '\"'

.field private static final EQUAL_CHAR:C = '='

.field private static final ESCAPE_CHAR:C = '\\'

.field private static final PARAM_DELIMITER:C = ';'

.field private static final SPECIAL_CHARS:Ljava/util/BitSet;

.field private static final TOKEN_DELIMS:Ljava/util/BitSet;

.field private static final VALUE_DELIMS:Ljava/util/BitSet;


# instance fields
.field private final attribHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final attribHandlers:[Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

.field private final tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x3d

    const/16 v1, 0x3b

    .line 74
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/message/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->TOKEN_DELIMS:Ljava/util/BitSet;

    .line 75
    filled-new-array {v1}, [I

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/message/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->VALUE_DELIMS:Ljava/util/BitSet;

    const/16 v0, 0x2c

    const/16 v2, 0x5c

    const/16 v3, 0x20

    const/16 v4, 0x22

    .line 76
    filled-new-array {v3, v4, v0, v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/message/TokenParser;->INIT_BITSET([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->SPECIAL_CHARS:Ljava/util/BitSet;

    return-void
.end method

.method varargs constructor <init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V
    .registers 8

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlers:[Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlerMap:Ljava/util/Map;

    .line 87
    array-length v0, p1

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_2b

    aget-object v2, p1, v1

    .line 88
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlerMap:Ljava/util/Map;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 90
    :cond_2b
    sget-object p1, Lcz/msebera/android/httpclient/message/TokenParser;->INSTANCE:Lcz/msebera/android/httpclient/message/TokenParser;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    return-void
.end method

.method static getDefaultDomain(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;
    .registers 1

    .line 107
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDefaultPath(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;
    .registers 3

    .line 94
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_14

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :cond_f
    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_14
    return-object p0
.end method


# virtual methods
.method containsChars(Ljava/lang/CharSequence;Ljava/util/BitSet;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 257
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 258
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 259
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return v0
.end method

.method containsSpecialChar(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 253
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->SPECIAL_CHARS:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->containsChars(Ljava/lang/CharSequence;Ljava/util/BitSet;)Z

    move-result p1

    return p1
.end method

.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation

    .line 210
    const-string v0, "List of cookies"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    sget-object p1, Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;->INSTANCE:Lcz/msebera/android/httpclient/cookie/CookiePriorityComparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object p1, v0

    .line 219
    :cond_17
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 220
    const-string v2, "Cookie"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 221
    const-string v2, ": "

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    .line 222
    :goto_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_87

    .line 223
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/cookie/Cookie;

    if-lez v3, :cond_46

    const/16 v5, 0x3b

    .line 225
    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    const/16 v5, 0x20

    .line 226
    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 228
    :cond_46
    invoke-interface {v4}, Lcz/msebera/android/httpclient/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 229
    invoke-interface {v4}, Lcz/msebera/android/httpclient/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_84

    const/16 v5, 0x3d

    .line 231
    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 232
    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->containsSpecialChar(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_81

    const/16 v5, 0x22

    .line 233
    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    move v6, v2

    .line 234
    :goto_64
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_7d

    .line 235
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-eq v7, v5, :cond_74

    if-ne v7, v8, :cond_77

    .line 237
    :cond_74
    invoke-virtual {v0, v8}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 239
    :cond_77
    invoke-virtual {v0, v7}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 241
    :cond_7d
    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    goto :goto_84

    .line 243
    :cond_81
    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_84
    :goto_84
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 247
    :cond_87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    new-instance v1, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final getVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getVersionHeader()Lcz/msebera/android/httpclient/Header;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .registers 8

    .line 198
    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlers:[Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_1d

    aget-object v4, v0, v3

    .line 201
    invoke-interface {v4, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v4

    if-nez v4, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1d
    const/4 p1, 0x1

    return p1
.end method

.method public final parse(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 112
    const-string v0, "Header"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "\'"

    if-eqz v0, :cond_197

    .line 119
    instance-of v0, p1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v0, :cond_31

    .line 120
    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v2

    .line 121
    new-instance v3, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result v0

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    goto :goto_4d

    .line 123
    :cond_31
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18f

    .line 127
    new-instance v2, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 128
    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 129
    new-instance v3, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 131
    :goto_4d
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    sget-object v4, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->TOKEN_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v0, v2, v3, v4}, Lcz/msebera/android/httpclient/message/TokenParser;->parseToken(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_172

    .line 135
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v4

    const-string v5, "Cookie value is invalid: \'"

    if-nez v4, :cond_157

    .line 138
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v4

    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v4

    .line 139
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    const/16 v6, 0x3d

    if-ne v4, v6, :cond_13c

    .line 143
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    sget-object v1, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->VALUE_DELIMS:Ljava/util/BitSet;

    invoke-virtual {p1, v2, v3, v1}, Lcz/msebera/android/httpclient/message/TokenParser;->parseValue(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 145
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 147
    :cond_8f
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-direct {v1, v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->getDefaultPath(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 149
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->getDefaultDomain(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 150
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, p1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setCreationDate(Ljava/util/Date;)V

    .line 152
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 153
    :goto_af
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result p2

    if-nez p2, :cond_fc

    .line 154
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->TOKEN_DELIMS:Ljava/util/BitSet;

    invoke-virtual {p2, v2, v3, v0}, Lcz/msebera/android/httpclient/message/TokenParser;->parseToken(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v0

    if-nez v0, :cond_ee

    .line 157
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 158
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    if-ne v0, v6, :cond_ee

    .line 160
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->tokenParser:Lcz/msebera/android/httpclient/message/TokenParser;

    sget-object v4, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->VALUE_DELIMS:Ljava/util/BitSet;

    invoke-virtual {v0, v2, v3, v4}, Lcz/msebera/android/httpclient/message/TokenParser;->parseToken(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v4

    if-nez v4, :cond_ef

    .line 162
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    goto :goto_ef

    :cond_ee
    const/4 v0, 0x0

    .line 166
    :cond_ef
    :goto_ef
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_af

    .line 170
    :cond_fc
    const-string p2, "max-age"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_109

    .line 171
    const-string p2, "expires"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_109
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_111
    :goto_111
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_137

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 177
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    if-eqz v0, :cond_111

    .line 179
    invoke-interface {v0, v1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V

    goto :goto_111

    .line 183
    :cond_137
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 141
    :cond_13c
    new-instance p2, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 136
    :cond_157
    new-instance p2, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 133
    :cond_172
    new-instance p2, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cookie name is invalid: \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 125
    :cond_18f
    new-instance p1, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string p2, "Header value is null"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_197
    new-instance p2, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized cookie header: \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 189
    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecBase;->attribHandlers:[Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 192
    invoke-interface {v3, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_18
    return-void
.end method
