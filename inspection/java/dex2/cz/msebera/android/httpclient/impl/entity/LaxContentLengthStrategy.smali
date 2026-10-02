.class public Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;
.super Ljava/lang/Object;
.source "LaxContentLengthStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;


# instance fields
.field private final implicitLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    .line 75
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;->implicitLen:I

    return-void
.end method


# virtual methods
.method public determineLength(Lcz/msebera/android/httpclient/HttpMessage;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 80
    const-string v0, "HTTP message"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4d

    .line 88
    :try_start_f
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object p1
    :try_end_13
    .catch Lcz/msebera/android/httpclient/ParseException; {:try_start_f .. :try_end_13} :catch_37

    .line 95
    array-length v3, p1

    .line 96
    const-string v4, "identity"

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    return-wide v1

    :cond_21
    if-lez v3, :cond_36

    add-int/lit8 v3, v3, -0x1

    .line 98
    aget-object p1, p1, v3

    .line 99
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object p1

    .line 98
    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_36
    return-wide v1

    :catch_37
    move-exception p1

    .line 90
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid Transfer-Encoding header value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 105
    :cond_4d
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    if-eqz v3, :cond_75

    .line 108
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpMessage;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    .line 109
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_5c
    if-ltz v0, :cond_6c

    .line 110
    aget-object v3, p1, v0

    .line 112
    :try_start_60
    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    add-int/lit8 v0, v0, -0x1

    goto :goto_5c

    :cond_6c
    move-wide v3, v1

    :goto_6d
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_74

    return-wide v3

    :cond_74
    return-wide v1

    .line 124
    :cond_75
    iget p1, p0, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;->implicitLen:I

    int-to-long v0, p1

    return-wide v0
.end method
