.class Lcom/loopj/android/http/AsyncHttpClient$1;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/AsyncHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/AsyncHttpClient;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 9

    .line 212
    const-string p2, "Accept-Encoding"

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 213
    const-string v0, "gzip"

    invoke-interface {p1, p2, v0}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_d
    iget-object p2, p0, Lcom/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    # getter for: Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;
    invoke-static {p2}, Lcom/loopj/android/http/AsyncHttpClient;->access$000(Lcom/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 217
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 218
    sget-object v2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    .line 220
    # getter for: Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/loopj/android/http/AsyncHttpClient;->access$000(Lcom/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 221
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 219
    const-string v4, "Headers were overwritten! (%s | %s) overwrites (%s | %s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 218
    const-string v4, "AsyncHttpClient"

    invoke-interface {v2, v4, v3}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 227
    :cond_57
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    # getter for: Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/loopj/android/http/AsyncHttpClient;->access$000(Lcom/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_67
    return-void
.end method
