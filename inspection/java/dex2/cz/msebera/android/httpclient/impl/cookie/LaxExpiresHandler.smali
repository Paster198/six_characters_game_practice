.class public Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;
.super Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;
.source "LaxExpiresHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final DELIMS:Ljava/util/BitSet;

.field private static final MONTHS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field static final UTC:Ljava/util/TimeZone;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 53
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->UTC:Ljava/util/TimeZone;

    .line 57
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/16 v1, 0x9

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v2, 0x20

    :goto_14
    const/16 v3, 0x2f

    if-gt v2, v3, :cond_1e

    .line 60
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1e
    const/16 v2, 0x3b

    :goto_20
    const/16 v3, 0x40

    if-gt v2, v3, :cond_2a

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2a
    const/16 v2, 0x5b

    :goto_2c
    const/16 v3, 0x60

    if-gt v2, v3, :cond_36

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_36
    const/16 v2, 0x7b

    :goto_38
    const/16 v3, 0x7e

    if-gt v2, v3, :cond_42

    .line 69
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 71
    :cond_42
    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->DELIMS:Ljava/util/BitSet;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    const/4 v2, 0x0

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "jan"

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v2, "feb"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v2, "mar"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "apr"

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "may"

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "jun"

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "jul"

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "aug"

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x8

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "sep"

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v2, "oct"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "nov"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dec"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->MONTHS:Ljava/util/Map;

    .line 91
    const-string v0, "^([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2})([^0-9].*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 93
    const-string v0, "^([0-9]{1,2})([^0-9].*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 95
    const-string v0, "^(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)(.*)?$"

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 97
    const-string v0, "^([0-9]{2,4})([^0-9].*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    return-void
.end method

.method private copyContent(Ljava/lang/CharSequence;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/lang/StringBuilder;)V
    .registers 9

    .line 200
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 201
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    .line 202
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_23

    .line 204
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 205
    sget-object v4, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->DELIMS:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_23

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 209
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 212
    :cond_23
    :goto_23
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    return-void
.end method

.method private skipDelims(Ljava/lang/CharSequence;Lcz/msebera/android/httpclient/message/ParserCursor;)V
    .registers 8

    .line 185
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 186
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    .line 187
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_1f

    .line 189
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 190
    sget-object v4, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->DELIMS:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 196
    :cond_1f
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .registers 2

    .line 217
    const-string v0, "max-age"

    return-object v0
.end method

.method public parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 106
    const-string v3, "Invalid \'expires\' attribute: "

    const-string v4, "Cookie"

    invoke-static {v1, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    new-instance v4, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    .line 113
    :goto_27
    :try_start_27
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v17

    if-nez v17, :cond_cc

    .line 114
    invoke-direct {v0, v2, v4}, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->skipDelims(Ljava/lang/CharSequence;Lcz/msebera/android/httpclient/message/ParserCursor;)V

    const/4 v6, 0x0

    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 116
    invoke-direct {v0, v2, v4, v5}, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->copyContent(Ljava/lang/CharSequence;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/lang/StringBuilder;)V

    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-nez v18, :cond_3f

    goto/16 :goto_cc

    :cond_3f
    if-nez v7, :cond_6b

    .line 122
    sget-object v6, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 123
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v19

    if-eqz v19, :cond_6b

    const/4 v0, 0x1

    .line 125
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v0, 0x2

    .line 126
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v0, 0x3

    .line 127
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_c8

    :cond_6b
    if-nez v9, :cond_85

    .line 132
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_85

    const/4 v6, 0x1

    .line 135
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v6, 0x0

    const/4 v9, 0x1

    goto :goto_c8

    :cond_85
    if-nez v10, :cond_ad

    .line 140
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 143
    sget-object v6, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->MONTHS:Ljava/util/Map;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto :goto_c8

    :cond_ad
    if-nez v11, :cond_c7

    .line 148
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_c7

    const/4 v6, 0x1

    .line 151
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_c4
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_c4} :catch_154

    const/4 v6, 0x0

    const/4 v11, 0x1

    goto :goto_c8

    :cond_c7
    const/4 v6, 0x0

    :goto_c8
    move-object/from16 v0, p0

    goto/16 :goto_27

    :cond_cc
    :goto_cc
    if-eqz v7, :cond_141

    if-eqz v9, :cond_141

    if-eqz v10, :cond_141

    if-eqz v11, :cond_141

    const/16 v0, 0x46

    if-lt v8, v0, :cond_de

    const/16 v0, 0x63

    if-gt v8, v0, :cond_de

    add-int/lit16 v8, v8, 0x76c

    :cond_de
    if-ltz v8, :cond_e6

    const/16 v0, 0x45

    if-gt v8, v0, :cond_e6

    add-int/lit16 v8, v8, 0x7d0

    :cond_e6
    const/4 v6, 0x1

    if-lt v12, v6, :cond_12e

    const/16 v0, 0x1f

    if-gt v12, v0, :cond_12e

    const/16 v0, 0x641

    if-lt v8, v0, :cond_12e

    const/16 v0, 0x17

    if-gt v13, v0, :cond_12e

    const/16 v0, 0x3b

    if-gt v14, v0, :cond_12e

    if-gt v15, v0, :cond_12e

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 173
    sget-object v2, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const-wide/16 v2, 0x0

    .line 174
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xd

    .line 175
    invoke-virtual {v0, v2, v15}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 176
    invoke-virtual {v0, v2, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    .line 177
    invoke-virtual {v0, v2, v13}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    .line 178
    invoke-virtual {v0, v2, v12}, Ljava/util/Calendar;->set(II)V

    move/from16 v6, v16

    const/4 v2, 0x2

    .line 179
    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x1

    .line 180
    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 181
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/cookie/SetCookie;->setExpiryDate(Ljava/util/Date;)V

    return-void

    .line 169
    :cond_12e
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_141
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :catch_154
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
