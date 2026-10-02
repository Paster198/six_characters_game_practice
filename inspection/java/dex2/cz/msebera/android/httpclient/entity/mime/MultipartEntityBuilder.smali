.class public Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
.super Ljava/lang/Object;
.source "MultipartEntityBuilder.java"


# static fields
.field private static final DEFAULT_SUBTYPE:Ljava/lang/String; = "form-data"

.field private static final MULTIPART_CHARS:[C


# instance fields
.field private bodyParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private boundary:Ljava/lang/String;

.field private charset:Ljava/nio/charset/Charset;

.field private contentType:Lcz/msebera/android/httpclient/entity/ContentType;

.field private mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->MULTIPART_CHARS:[C

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->STRICT:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->charset:Ljava/nio/charset/Charset;

    .line 69
    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 1

    .line 72
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;-><init>()V

    return-object v0
.end method

.method private generateBoundary()Ljava/lang/String;
    .registers 7

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xb

    .line 184
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_24

    .line 186
    sget-object v4, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->MULTIPART_CHARS:[C

    array-length v5, v4

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 188
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addBinaryBody(Ljava/lang/String;Ljava/io/File;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 5

    .line 168
    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_BINARY:Lcz/msebera/android/httpclient/entity/ContentType;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/File;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/File;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 6

    .line 163
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/content/FileBody;

    invoke-direct {v0, p2, p3, p4}, Lcz/msebera/android/httpclient/entity/mime/content/FileBody;-><init>(Ljava/io/File;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 5

    .line 178
    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_BINARY:Lcz/msebera/android/httpclient/entity/ContentType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 6

    .line 174
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;

    invoke-direct {v0, p2, p3, p4}, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;[B)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 5

    .line 158
    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_BINARY:Lcz/msebera/android/httpclient/entity/ContentType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;[BLcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;[BLcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 6

    .line 153
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/content/ByteArrayBody;

    invoke-direct {v0, p2, p3, p4}, Lcz/msebera/android/httpclient/entity/mime/content/ByteArrayBody;-><init>([BLcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addPart(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    .line 128
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    if-nez v0, :cond_e

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    .line 131
    :cond_e
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 4

    .line 136
    const-string v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    const-string v0, "Content body"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->create(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->build()Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addTextBody(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 4

    .line 148
    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_TEXT:Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addTextBody(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addTextBody(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 5

    .line 143
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;

    invoke-direct {v0, p2, p3}, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)V

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcz/msebera/android/httpclient/HttpEntity;
    .registers 2

    .line 230
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->buildEntity()Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;

    move-result-object v0

    return-object v0
.end method

.method buildEntity()Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;
    .registers 8

    .line 192
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    .line 193
    const-string v1, "boundary"

    if-nez v0, :cond_e

    iget-object v2, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    if-eqz v2, :cond_e

    .line 194
    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/entity/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_14

    .line 197
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_14
    iget-object v2, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->charset:Ljava/nio/charset/Charset;

    if-nez v2, :cond_20

    .line 200
    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    if-eqz v3, :cond_20

    .line 201
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 203
    :cond_20
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    new-instance v5, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v5, v1, v0}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_3e

    .line 206
    new-instance v1, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string v5, "charset"

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_3e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcz/msebera/android/httpclient/NameValuePair;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcz/msebera/android/httpclient/NameValuePair;

    .line 209
    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    if-eqz v3, :cond_53

    .line 210
    invoke-virtual {v3, v1}, Lcz/msebera/android/httpclient/entity/ContentType;->withParameters([Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v1

    goto :goto_59

    :cond_53
    const-string v3, "multipart/form-data"

    .line 211
    invoke-static {v3, v1}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v1

    .line 212
    :goto_59
    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    if-eqz v3, :cond_65

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_69

    .line 213
    :cond_65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 214
    :goto_69
    iget-object v5, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    if-eqz v5, :cond_6e

    goto :goto_70

    :cond_6e
    sget-object v5, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->STRICT:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    .line 216
    :goto_70
    sget-object v6, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder$1;->$SwitchMap$cz$msebera$android$httpclient$entity$mime$HttpMultipartMode:[I

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_89

    if-eq v5, v4, :cond_83

    .line 224
    new-instance v4, Lcz/msebera/android/httpclient/entity/mime/HttpStrictMultipart;

    invoke-direct {v4, v2, v0, v3}, Lcz/msebera/android/httpclient/entity/mime/HttpStrictMultipart;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8e

    .line 221
    :cond_83
    new-instance v4, Lcz/msebera/android/httpclient/entity/mime/HttpRFC6532Multipart;

    invoke-direct {v4, v2, v0, v3}, Lcz/msebera/android/httpclient/entity/mime/HttpRFC6532Multipart;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8e

    .line 218
    :cond_89
    new-instance v4, Lcz/msebera/android/httpclient/entity/mime/HttpBrowserCompatibleMultipart;

    invoke-direct {v4, v2, v0, v3}, Lcz/msebera/android/httpclient/entity/mime/HttpBrowserCompatibleMultipart;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    .line 226
    :goto_8e
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->getTotalLength()J

    move-result-wide v2

    invoke-direct {v0, v4, v1, v2, v3}, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;-><init>(Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;Lcz/msebera/android/httpclient/entity/ContentType;J)V

    return-object v0
.end method

.method public seContentType(Lcz/msebera/android/httpclient/entity/ContentType;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 3

    .line 111
    const-string v0, "Content type"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    return-object p0
.end method

.method public setBoundary(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 2

    .line 94
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 2

    .line 117
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setLaxMode()Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 2

    .line 84
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    return-object p0
.end method

.method public setMimeSubtype(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 4

    .line 102
    const-string v0, "MIME subtype"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "multipart/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    return-object p0
.end method

.method public setMode(Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 2

    .line 79
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    return-object p0
.end method

.method public setStrictMode()Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .registers 2

    .line 89
    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->STRICT:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    return-object p0
.end method
