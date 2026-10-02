.class public Lcz/msebera/android/httpclient/message/TokenParser;
.super Ljava/lang/Object;
.source "TokenParser.java"


# static fields
.field public static final CR:C = '\r'

.field public static final DQUOTE:C = '\"'

.field public static final ESCAPE:C = '\\'

.field public static final HT:C = '\t'

.field public static final INSTANCE:Lcz/msebera/android/httpclient/message/TokenParser;

.field public static final LF:C = '\n'

.field public static final SP:C = ' '


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Lcz/msebera/android/httpclient/message/TokenParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/TokenParser;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/TokenParser;->INSTANCE:Lcz/msebera/android/httpclient/message/TokenParser;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs INIT_BITSET([I)Ljava/util/BitSet;
    .registers 5

    .line 47
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 48
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    return-object v0
.end method

.method public static isWhitespace(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_13

    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0xa

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public copyContent(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .registers 10

    .line 179
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 180
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    .line 181
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_29

    .line 183
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    if-eqz p3, :cond_1a

    .line 184
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_29

    :cond_1a
    invoke-static {v3}, Lcz/msebera/android/httpclient/message/TokenParser;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_29

    :cond_21
    add-int/lit8 v0, v0, 0x1

    .line 188
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 191
    :cond_29
    :goto_29
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    return-void
.end method

.method public copyQuotedContent(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/lang/StringBuilder;)V
    .registers 13

    .line 231
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1b

    .line 234
    :cond_7
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 235
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    .line 236
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v2

    .line 237
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1c

    :goto_1b
    return-void

    :cond_1c
    const/4 v3, 0x1

    add-int/2addr v0, v3

    add-int/2addr v1, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_21
    if-ge v1, v2, :cond_50

    .line 245
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-eqz v6, :cond_37

    if-eq v7, v4, :cond_32

    if-eq v7, v8, :cond_32

    .line 248
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    :cond_32
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v5

    goto :goto_4b

    :cond_37
    if-ne v7, v4, :cond_3c

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_3c
    if-ne v7, v8, :cond_40

    move v6, v3

    goto :goto_4b

    :cond_40
    const/16 v8, 0xd

    if-eq v7, v8, :cond_4b

    const/16 v8, 0xa

    if-eq v7, v8, :cond_4b

    .line 260
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 264
    :cond_50
    :goto_50
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    return-void
.end method

.method public copyUnquotedContent(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .registers 10

    .line 206
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 207
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    .line 208
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_2d

    .line 210
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    if-eqz p3, :cond_1a

    .line 211
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 212
    :cond_1a
    invoke-static {v3}, Lcz/msebera/android/httpclient/message/TokenParser;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2d

    const/16 v4, 0x22

    if-ne v3, v4, :cond_25

    goto :goto_2d

    :cond_25
    add-int/lit8 v0, v0, 0x1

    .line 216
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 219
    :cond_2d
    :goto_2d
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    return-void
.end method

.method public parseToken(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .registers 9

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    move v2, v1

    .line 90
    :goto_7
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 91
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v3

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    if-eqz p3, :cond_1e

    .line 92
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_3a

    .line 94
    :cond_1e
    invoke-static {v3}, Lcz/msebera/android/httpclient/message/TokenParser;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 95
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/TokenParser;->skipWhiteSpace(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V

    const/4 v2, 0x1

    goto :goto_7

    :cond_29
    if-eqz v2, :cond_36

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_36

    const/16 v2, 0x20

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_36
    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/message/TokenParser;->copyContent(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    goto :goto_6

    .line 105
    :cond_3a
    :goto_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseValue(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .registers 10

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    move v2, v1

    .line 121
    :goto_7
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 122
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v3

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    if-eqz p3, :cond_1e

    .line 123
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_4d

    .line 125
    :cond_1e
    invoke-static {v3}, Lcz/msebera/android/httpclient/message/TokenParser;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 126
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/TokenParser;->skipWhiteSpace(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V

    const/4 v2, 0x1

    goto :goto_7

    :cond_29
    const/16 v4, 0x22

    const/16 v5, 0x20

    if-ne v3, v4, :cond_3e

    if-eqz v2, :cond_3a

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3a

    .line 130
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    :cond_3a
    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/message/TokenParser;->copyQuotedContent(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/lang/StringBuilder;)V

    goto :goto_6

    :cond_3e
    if-eqz v2, :cond_49

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_49

    .line 136
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    :cond_49
    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/message/TokenParser;->copyUnquotedContent(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    goto :goto_6

    .line 142
    :cond_4d
    :goto_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public skipWhiteSpace(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)V
    .registers 7

    .line 153
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 154
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    .line 155
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_1e

    .line 157
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    .line 158
    invoke-static {v3}, Lcz/msebera/android/httpclient/message/TokenParser;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_1e

    :cond_19
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 164
    :cond_1e
    :goto_1e
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    return-void
.end method
