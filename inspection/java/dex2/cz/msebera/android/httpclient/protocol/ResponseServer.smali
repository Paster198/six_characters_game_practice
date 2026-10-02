.class public Lcz/msebera/android/httpclient/protocol/ResponseServer;
.super Ljava/lang/Object;
.source "ResponseServer.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# instance fields
.field private final originServer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/protocol/ResponseServer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/ResponseServer;->originServer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const-string p2, "HTTP response"

    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    const-string p2, "Server"

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 66
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/ResponseServer;->originServer:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 67
    invoke-interface {p1, p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void
.end method
