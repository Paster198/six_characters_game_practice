.class public Lcz/msebera/android/httpclient/message/BasicTokenIterator;
.super Ljava/lang/Object;
.source "BasicTokenIterator.java"

# interfaces
.implements Lcz/msebera/android/httpclient/TokenIterator;


# static fields
.field public static final HTTP_SEPARATORS:Ljava/lang/String; = " ,;=()<>@:\\\"/[]?{}\t"


# instance fields
.field protected currentHeader:Ljava/lang/String;

.field protected currentToken:Ljava/lang/String;

.field protected final headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

.field protected searchPos:I


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HeaderIterator;)V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "Header iterator"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/HeaderIterator;

    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

    const/4 p1, -0x1

    .line 86
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->findNext(I)I

    move-result p1

    iput p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->searchPos:I

    return-void
.end method


# virtual methods
.method protected createToken(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    .line 215
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected findNext(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    const/4 v0, -0x1

    if-gez p1, :cond_1a

    .line 171
    iget-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_c

    return v0

    .line 174
    :cond_c
    iget-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderIterator;->nextHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    const/4 p1, 0x0

    goto :goto_1e

    .line 178
    :cond_1a
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->findTokenSeparator(I)I

    move-result p1

    .line 181
    :goto_1e
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->findTokenStart(I)I

    move-result p1

    if-gez p1, :cond_28

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    return v0

    .line 187
    :cond_28
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->findTokenEnd(I)I

    move-result v0

    .line 188
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->createToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    return v0
.end method

.method protected findTokenEnd(I)I
    .registers 4

    .line 318
    const-string v0, "Search position"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_b
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_1c

    .line 321
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_b

    :cond_1c
    return p1
.end method

.method protected findTokenSeparator(I)I
    .registers 6

    .line 282
    const-string v0, "Search position"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    move-result p1

    .line 284
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-nez v1, :cond_6e

    if-ge p1, v0, :cond_6e

    .line 286
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 287
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isTokenSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v1, 0x1

    goto :goto_d

    .line 289
    :cond_1f
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_28

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 291
    :cond_28
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v0

    const-string v1, "): "

    if-eqz v0, :cond_4f

    .line 292
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tokens without separator (pos "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_4f
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid character after token (pos "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    return p1
.end method

.method protected findTokenStart(I)I
    .registers 7

    .line 230
    const-string v0, "Search position"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :cond_8
    :goto_8
    if-nez v1, :cond_77

    .line 232
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    if-eqz v2, :cond_77

    .line 234
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_12
    if-nez v1, :cond_5b

    if-ge p1, v2, :cond_5b

    .line 237
    iget-object v3, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 238
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isTokenSeparator(C)Z

    move-result v4

    if-nez v4, :cond_58

    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_58

    .line 241
    :cond_29
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    goto :goto_12

    .line 245
    :cond_37
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid character before token (pos "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    :goto_58
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_5b
    if-nez v1, :cond_8

    .line 251
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 252
    iget-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderIterator;->nextHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    move p1, v0

    goto :goto_8

    :cond_73
    const/4 v2, 0x0

    .line 255
    iput-object v2, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    goto :goto_8

    :cond_77
    if-eqz v1, :cond_7a

    return p1

    :cond_7a
    const/4 p1, -0x1

    return p1
.end method

.method public hasNext()Z
    .registers 2

    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method protected isHttpSeparator(C)Z
    .registers 3

    .line 414
    const-string v0, " ,;=()<>@:\\\"/[]?{}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method protected isTokenChar(C)Z
    .registers 5

    .line 379
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 384
    :cond_8
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    return v2

    .line 389
    :cond_10
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isHttpSeparator(C)Z

    move-result p1

    if-eqz p1, :cond_17

    return v2

    :cond_17
    return v1
.end method

.method protected isTokenSeparator(C)Z
    .registers 3

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method protected isWhitespace(C)Z
    .registers 3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_d

    .line 360
    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    return p1

    :cond_d
    :goto_d
    const/4 p1, 0x1

    return p1
.end method

.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 115
    iget v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->searchPos:I

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->searchPos:I

    return-object v0

    .line 110
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remove()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing tokens is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
