.class Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader$1;
.super Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;
.source "SizeLimitedResponseReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->getReconstructedResponse()Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 3

    .line 140
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader$1;->this$0:Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;-><init>(Lcz/msebera/android/httpclient/HttpResponse;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader$1;->this$0:Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;

    # getter for: Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->response:Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;->access$000(Lcz/msebera/android/httpclient/impl/client/cache/SizeLimitedResponseReader;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    return-void
.end method
