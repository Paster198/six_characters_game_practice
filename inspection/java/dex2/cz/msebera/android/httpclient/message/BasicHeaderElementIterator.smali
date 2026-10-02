.class public Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;
.super Ljava/lang/Object;
.source "BasicHeaderElementIterator.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HeaderElementIterator;


# instance fields
.field private buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

.field private currentElement:Lcz/msebera/android/httpclient/HeaderElement;

.field private cursor:Lcz/msebera/android/httpclient/message/ParserCursor;

.field private final headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

.field private final parser:Lcz/msebera/android/httpclient/message/HeaderValueParser;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HeaderIterator;)V
    .registers 3

    .line 68
    sget-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;Lcz/msebera/android/httpclient/message/HeaderValueParser;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HeaderIterator;Lcz/msebera/android/httpclient/message/HeaderValueParser;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->currentElement:Lcz/msebera/android/httpclient/HeaderElement;

    .line 53
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 54
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->cursor:Lcz/msebera/android/httpclient/message/ParserCursor;

    .line 62
    const-string v0, "Header iterator"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/HeaderIterator;

    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

    .line 63
    const-string p1, "Parser"

    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/message/HeaderValueParser;

    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->parser:Lcz/msebera/android/httpclient/message/HeaderValueParser;

    return-void
.end method

.method private bufferHeaderValue()V
    .registers 5

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->cursor:Lcz/msebera/android/httpclient/message/ParserCursor;

    .line 74
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 75
    :cond_5
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 76
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->nextHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 77
    instance-of v1, v0, Lcz/msebera/android/httpclient/FormattedHeader;

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 78
    check-cast v0, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 79
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    iget-object v3, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->cursor:Lcz/msebera/android/httpclient/message/ParserCursor;

    .line 80
    invoke-interface {v0}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result v0

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    return-void

    .line 83
    :cond_35
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 85
    new-instance v1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 86
    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcz/msebera/android/httpclient/message/ParserCursor;

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->cursor:Lcz/msebera/android/httpclient/message/ParserCursor;

    :cond_56
    return-void
.end method

.method private parseNextElement()V
    .registers 4

    .line 96
    :cond_0
    :goto_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->cursor:Lcz/msebera/android/httpclient/message/ParserCursor;

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 97
    :cond_e
    :goto_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->cursor:Lcz/msebera/android/httpclient/message/ParserCursor;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 99
    :cond_18
    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->bufferHeaderValue()V

    .line 102
    :cond_1b
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->cursor:Lcz/msebera/android/httpclient/message/ParserCursor;

    if-eqz v0, :cond_0

    .line 104
    :cond_1f
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->cursor:Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v0

    if-nez v0, :cond_44

    .line 105
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->parser:Lcz/msebera/android/httpclient/message/HeaderValueParser;

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->cursor:Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/message/HeaderValueParser;->parseHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_41

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 108
    :cond_41
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->currentElement:Lcz/msebera/android/httpclient/HeaderElement;

    return-void

    .line 113
    :cond_44
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->cursor:Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->cursor:Lcz/msebera/android/httpclient/message/ParserCursor;

    .line 116
    iput-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 124
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->currentElement:Lcz/msebera/android/httpclient/HeaderElement;

    if-nez v0, :cond_7

    .line 125
    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->parseNextElement()V

    .line 127
    :cond_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->currentElement:Lcz/msebera/android/httpclient/HeaderElement;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->nextElement()Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lcz/msebera/android/httpclient/HeaderElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->currentElement:Lcz/msebera/android/httpclient/HeaderElement;

    if-nez v0, :cond_7

    .line 133
    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->parseNextElement()V

    .line 136
    :cond_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->currentElement:Lcz/msebera/android/httpclient/HeaderElement;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 141
    iput-object v1, p0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;->currentElement:Lcz/msebera/android/httpclient/HeaderElement;

    return-object v0

    .line 137
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more header elements available"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
