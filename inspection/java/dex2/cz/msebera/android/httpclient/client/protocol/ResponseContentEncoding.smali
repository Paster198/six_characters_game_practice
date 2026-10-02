.class public Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;
.super Ljava/lang/Object;
.source "ResponseContentEncoding.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# static fields
.field private static final DEFLATE:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

.field private static final GZIP:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

.field public static final UNCOMPRESSED:Ljava/lang/String; = "http.client.response.uncompressed"


# instance fields
.field private final decoderRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding$1;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding$1;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->GZIP:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .line 71
    new-instance v0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding$2;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding$2;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->DEFLATE:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>(Lcz/msebera/android/httpclient/config/Lookup;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/Lookup;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_24

    .line 87
    :cond_6
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object p1

    sget-object v0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->GZIP:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .line 88
    const-string v1, "gzip"

    invoke-virtual {p1, v1, v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object p1

    const-string v1, "x-gzip"

    .line 89
    invoke-virtual {p1, v1, v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object p1

    const-string v0, "deflate"

    sget-object v1, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->DEFLATE:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    .line 90
    invoke-virtual {p1, v0, v1}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object p1

    :goto_24
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->decoderRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 112
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object p2

    .line 113
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object p2

    .line 116
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isDecompressionEnabled()Z

    move-result p2

    if-eqz p2, :cond_82

    if-eqz v0, :cond_82

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_82

    .line 117
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    if-eqz p2, :cond_82

    .line 119
    invoke-interface {p2}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object p2

    .line 120
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v0, :cond_82

    aget-object v2, p2, v1

    .line 121
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 122
    iget-object v4, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->decoderRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    invoke-interface {v4, v3}, Lcz/msebera/android/httpclient/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    if-eqz v4, :cond_5e

    .line 124
    new-instance v2, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;)V

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 125
    const-string v2, "Content-Length"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 126
    const-string v2, "Content-Encoding"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 127
    const-string v2, "Content-MD5"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    goto :goto_66

    .line 129
    :cond_5e
    const-string v4, "identity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 130
    :cond_69
    new-instance p1, Lcz/msebera/android/httpclient/HttpException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported Content-Coding: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_82
    return-void
.end method
