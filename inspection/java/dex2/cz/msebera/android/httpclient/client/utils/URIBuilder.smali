.class public Lcz/msebera/android/httpclient/client/utils/URIBuilder;
.super Ljava/lang/Object;
.source "URIBuilder.java"


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private encodedAuthority:Ljava/lang/String;

.field private encodedFragment:Ljava/lang/String;

.field private encodedPath:Ljava/lang/String;

.field private encodedQuery:Ljava/lang/String;

.field private encodedSchemeSpecificPart:Ljava/lang/String;

.field private encodedUserInfo:Ljava/lang/String;

.field private fragment:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:I

.field private query:Ljava/lang/String;

.field private queryParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private scheme:Ljava/lang/String;

.field private userInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->port:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->digestURI(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->digestURI(Ljava/net/URI;)V

    return-void
.end method

.method private buildString()Ljava/lang/String;
    .registers 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    :cond_12
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_cb

    .line 131
    :cond_1b
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    const-string v2, "//"

    if-eqz v1, :cond_2b

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 133
    :cond_2b
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->host:Ljava/lang/String;

    if-eqz v1, :cond_7d

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    const-string v2, "@"

    if-eqz v1, :cond_40

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 137
    :cond_40
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_4f

    .line 138
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodeUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_4f
    :goto_4f
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->host:Ljava/lang/String;

    invoke-static {v1}, Lcz/msebera/android/httpclient/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 141
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6e

    .line 143
    :cond_69
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :goto_6e
    iget v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->port:I

    if-ltz v1, :cond_7d

    .line 146
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    :cond_7d
    :goto_7d
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedPath:Ljava/lang/String;

    if-eqz v1, :cond_89

    .line 150
    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_98

    .line 151
    :cond_89
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->path:Ljava/lang/String;

    if-eqz v1, :cond_98

    .line 152
    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_98
    :goto_98
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    const-string v2, "?"

    if-eqz v1, :cond_a8

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cb

    .line 156
    :cond_a8
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v1, :cond_ba

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodeUrlForm(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cb

    .line 158
    :cond_ba
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->query:Ljava/lang/String;

    if-eqz v1, :cond_cb

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->query:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodeUric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_cb
    :goto_cb
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    const-string v2, "#"

    if-eqz v1, :cond_db

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ec

    .line 164
    :cond_db
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_ec

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodeUric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_ec
    :goto_ec
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private digestURI(Ljava/net/URI;)V
    .registers 4

    .line 171
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->host:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->port:I

    .line 176
    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedPath:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->path:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_45

    goto :goto_47

    :cond_45
    sget-object v1, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_47
    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 182
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    return-void
.end method

.method private encodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 191
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_7
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->encPath(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodeUric(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 199
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_7
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->encUric(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodeUrlForm(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_7
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->format(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodeUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 187
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_7
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->encUserInfo(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 501
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 502
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_14

    goto :goto_17

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    :goto_17
    const/4 v1, 0x1

    if-le v0, v1, :cond_1f

    sub-int/2addr v0, v1

    .line 507
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1f
    return-object p0
.end method

.method private parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_d

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 111
    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 5

    .line 367
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_b

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 370
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 371
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 372
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 373
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public addParameters(Ljava/util/List;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;)",
            "Lcz/msebera/android/httpclient/client/utils/URIBuilder;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_b

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 326
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 327
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 328
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 329
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public build()Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/net/URI;

    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->buildString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public clearParameters()Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 2

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 411
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 412
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .registers 2

    .line 106
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .line 487
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 467
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 475
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 471
    iget v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->port:I

    return v0
.end method

.method public getQueryParams()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 482
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .line 459
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .line 463
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isAbsolute()Z
    .registers 2

    .line 448
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isOpaque()Z
    .registers 2

    .line 455
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->path:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public removeQuery()Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 2

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 265
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->query:Ljava/lang/String;

    .line 266
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 267
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 2

    .line 98
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setCustomQuery(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 2

    .line 427
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->query:Ljava/lang/String;

    const/4 p1, 0x0

    .line 428
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 429
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 430
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    return-object p0
.end method

.method public setFragment(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 2

    .line 439
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    const/4 p1, 0x0

    .line 440
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 2

    .line 234
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->host:Ljava/lang/String;

    const/4 p1, 0x0

    .line 235
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 5

    .line 386
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_b

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 389
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 390
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/NameValuePair;

    .line 392
    invoke-interface {v1}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 393
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    .line 397
    :cond_33
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 398
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 399
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 400
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public setParameters(Ljava/util/List;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;)",
            "Lcz/msebera/android/httpclient/client/utils/URIBuilder;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_c

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    goto :goto_f

    .line 303
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 305
    :goto_f
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 306
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 307
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 308
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setParameters([Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 6

    .line 344
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_c

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    goto :goto_f

    .line 347
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    :goto_f
    array-length v0, p1

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_1d

    aget-object v2, p1, v1

    .line 350
    iget-object v3, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1d
    const/4 p1, 0x0

    .line 352
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 353
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 354
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 2

    .line 254
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->path:Ljava/lang/String;

    const/4 p1, 0x0

    .line 255
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 256
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedPath:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 2

    if-gez p1, :cond_3

    const/4 p1, -0x1

    .line 244
    :cond_3
    iput p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->port:I

    const/4 p1, 0x0

    .line 245
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->charset:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_7
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    const/4 p1, 0x0

    .line 283
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->query:Ljava/lang/String;

    .line 284
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 285
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public setScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 2

    .line 206
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 2

    .line 215
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    const/4 p1, 0x0

    .line 216
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 217
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    .line 218
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;
    .registers 4

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setUserInfo(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 492
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->buildString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
