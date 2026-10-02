.class public Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;
.super Ljava/lang/Object;
.source "BasicHeaderValueFormatter.java"

# interfaces
.implements Lcz/msebera/android/httpclient/message/HeaderValueFormatter;


# static fields
.field public static final DEFAULT:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

.field public static final SEPARATORS:Ljava/lang/String; = " ;,:@()<>\\\"/[]?={}\t"

.field public static final UNSAFE_CHARS:Ljava/lang/String; = "\"\\"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->DEFAULT:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    .line 58
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatElements([Lcz/msebera/android/httpclient/HeaderElement;ZLcz/msebera/android/httpclient/message/HeaderValueFormatter;)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_3

    goto :goto_5

    .line 92
    :cond_3
    sget-object p2, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    :goto_5
    const/4 v0, 0x0

    .line 93
    invoke-interface {p2, v0, p0, p1}, Lcz/msebera/android/httpclient/message/HeaderValueFormatter;->formatElements(Lcz/msebera/android/httpclient/util/CharArrayBuffer;[Lcz/msebera/android/httpclient/HeaderElement;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatHeaderElement(Lcz/msebera/android/httpclient/HeaderElement;ZLcz/msebera/android/httpclient/message/HeaderValueFormatter;)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_3

    goto :goto_5

    .line 159
    :cond_3
    sget-object p2, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    :goto_5
    const/4 v0, 0x0

    .line 160
    invoke-interface {p2, v0, p0, p1}, Lcz/msebera/android/httpclient/message/HeaderValueFormatter;->formatHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/HeaderElement;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatNameValuePair(Lcz/msebera/android/httpclient/NameValuePair;ZLcz/msebera/android/httpclient/message/HeaderValueFormatter;)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_3

    goto :goto_5

    .line 311
    :cond_3
    sget-object p2, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    :goto_5
    const/4 v0, 0x0

    .line 312
    invoke-interface {p2, v0, p0, p1}, Lcz/msebera/android/httpclient/message/HeaderValueFormatter;->formatNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatParameters([Lcz/msebera/android/httpclient/NameValuePair;ZLcz/msebera/android/httpclient/message/HeaderValueFormatter;)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_3

    goto :goto_5

    .line 245
    :cond_3
    sget-object p2, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    :goto_5
    const/4 v0, 0x0

    .line 246
    invoke-interface {p2, v0, p0, p1}, Lcz/msebera/android/httpclient/message/HeaderValueFormatter;->formatParameters(Lcz/msebera/android/httpclient/util/CharArrayBuffer;[Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected doFormatValue(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/lang/String;Z)V
    .registers 8

    const/4 v0, 0x0

    if-nez p3, :cond_17

    move v1, v0

    .line 379
    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    if-nez p3, :cond_17

    .line 380
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-virtual {p0, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->isSeparator(C)Z

    move-result p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_17
    const/16 v1, 0x22

    if-eqz p3, :cond_1e

    .line 385
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 387
    :cond_1e
    :goto_1e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_39

    .line 388
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 389
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->isUnsafe(C)Z

    move-result v3

    if-eqz v3, :cond_33

    const/16 v3, 0x5c

    .line 390
    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 392
    :cond_33
    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_39
    if-eqz p3, :cond_3e

    .line 395
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    :cond_3e
    return-void
.end method

.method protected estimateElementsLen([Lcz/msebera/android/httpclient/HeaderElement;)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 130
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_8

    goto :goto_1a

    .line 134
    :cond_8
    array-length v1, p1

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    .line 135
    array-length v2, p1

    :goto_d
    if-ge v0, v2, :cond_19

    aget-object v3, p1, v0

    .line 136
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lcz/msebera/android/httpclient/HeaderElement;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_19
    return v1

    :cond_1a
    :goto_1a
    return v0
.end method

.method protected estimateHeaderElementLen(Lcz/msebera/android/httpclient/HeaderElement;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 209
    :cond_4
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 210
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 213
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 216
    :cond_19
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterCount()I

    move-result v2

    if-lez v2, :cond_2f

    :goto_1f
    if-ge v0, v2, :cond_2f

    .line 220
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HeaderElement;->getParameter(I)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lcz/msebera/android/httpclient/NameValuePair;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2f
    return v1
.end method

.method protected estimateNameValuePairLen(Lcz/msebera/android/httpclient/NameValuePair;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 353
    :cond_4
    invoke-interface {p1}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 354
    invoke-interface {p1}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    :cond_19
    return v0
.end method

.method protected estimateParametersLen([Lcz/msebera/android/httpclient/NameValuePair;)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 283
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_8

    goto :goto_1a

    .line 287
    :cond_8
    array-length v1, p1

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    .line 288
    array-length v2, p1

    :goto_d
    if-ge v0, v2, :cond_19

    aget-object v3, p1, v0

    .line 289
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lcz/msebera/android/httpclient/NameValuePair;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_19
    return v1

    :cond_1a
    :goto_1a
    return v0
.end method

.method public formatElements(Lcz/msebera/android/httpclient/util/CharArrayBuffer;[Lcz/msebera/android/httpclient/HeaderElement;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 6

    .line 102
    const-string v0, "Header element array"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->estimateElementsLen([Lcz/msebera/android/httpclient/HeaderElement;)I

    move-result v0

    if-nez p1, :cond_11

    .line 106
    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    goto :goto_14

    .line 108
    :cond_11
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->ensureCapacity(I)V

    :goto_14
    const/4 v0, 0x0

    .line 111
    :goto_15
    array-length v1, p2

    if-ge v0, v1, :cond_27

    if-lez v0, :cond_1f

    .line 113
    const-string v1, ", "

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 115
    :cond_1f
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->formatHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/HeaderElement;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_27
    return-object p1
.end method

.method public formatHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/HeaderElement;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 7

    .line 169
    const-string v0, "Header element"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->estimateHeaderElementLen(Lcz/msebera/android/httpclient/HeaderElement;)I

    move-result v0

    if-nez p1, :cond_11

    .line 173
    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    goto :goto_14

    .line 175
    :cond_11
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 178
    :goto_14
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 179
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    const/16 v1, 0x3d

    .line 181
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 182
    invoke-virtual {p0, p1, v0, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->doFormatValue(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/lang/String;Z)V

    .line 185
    :cond_29
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterCount()I

    move-result v0

    if-lez v0, :cond_41

    const/4 v1, 0x0

    :goto_30
    if-ge v1, v0, :cond_41

    .line 188
    const-string v2, "; "

    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 189
    invoke-interface {p2, v1}, Lcz/msebera/android/httpclient/HeaderElement;->getParameter(I)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->formatNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_41
    return-object p1
.end method

.method public formatNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 5

    .line 321
    const-string v0, "Name / value pair"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->estimateNameValuePairLen(Lcz/msebera/android/httpclient/NameValuePair;)I

    move-result v0

    if-nez p1, :cond_11

    .line 325
    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    goto :goto_14

    .line 327
    :cond_11
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 330
    :goto_14
    invoke-interface {p2}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 331
    invoke-interface {p2}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_29

    const/16 v0, 0x3d

    .line 333
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 334
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->doFormatValue(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/lang/String;Z)V

    :cond_29
    return-object p1
.end method

.method public formatParameters(Lcz/msebera/android/httpclient/util/CharArrayBuffer;[Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 6

    .line 255
    const-string v0, "Header parameter array"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->estimateParametersLen([Lcz/msebera/android/httpclient/NameValuePair;)I

    move-result v0

    if-nez p1, :cond_11

    .line 259
    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    goto :goto_14

    .line 261
    :cond_11
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->ensureCapacity(I)V

    :goto_14
    const/4 v0, 0x0

    .line 264
    :goto_15
    array-length v1, p2

    if-ge v0, v1, :cond_27

    if-lez v0, :cond_1f

    .line 266
    const-string v1, "; "

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 268
    :cond_1f
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->formatNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_27
    return-object p1
.end method

.method protected isSeparator(C)Z
    .registers 3

    .line 409
    const-string v0, " ;,:@()<>\\\"/[]?={}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method protected isUnsafe(C)Z
    .registers 3

    .line 422
    const-string v0, "\"\\"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
