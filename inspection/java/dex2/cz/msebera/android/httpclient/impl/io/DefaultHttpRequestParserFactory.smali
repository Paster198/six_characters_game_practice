.class public Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;
.super Ljava/lang/Object;
.source "DefaultHttpRequestParserFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/io/HttpMessageParserFactory<",
        "Lcz/msebera/android/httpclient/HttpRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;


# instance fields
.field private final lineParser:Lcz/msebera/android/httpclient/message/LineParser;

.field private final requestFactory:Lcz/msebera/android/httpclient/HttpRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0, v0}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;-><init>(Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpRequestFactory;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpRequestFactory;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_8

    .line 57
    :cond_6
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicLineParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineParser;

    :goto_8
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    if-eqz p2, :cond_d

    goto :goto_f

    .line 58
    :cond_d
    sget-object p2, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;

    :goto_f
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;->requestFactory:Lcz/msebera/android/httpclient/HttpRequestFactory;

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/config/MessageConstraints;)Lcz/msebera/android/httpclient/io/HttpMessageParser;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/SessionInputBuffer;",
            "Lcz/msebera/android/httpclient/config/MessageConstraints;",
            ")",
            "Lcz/msebera/android/httpclient/io/HttpMessageParser<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParser;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;->requestFactory:Lcz/msebera/android/httpclient/HttpRequestFactory;

    invoke-direct {v0, p1, v1, v2, p2}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpRequestFactory;Lcz/msebera/android/httpclient/config/MessageConstraints;)V

    return-object v0
.end method
