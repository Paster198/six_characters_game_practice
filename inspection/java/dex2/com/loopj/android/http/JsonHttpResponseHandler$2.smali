.class Lcom/loopj/android/http/JsonHttpResponseHandler$2;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

.field final synthetic val$headers:[Lcz/msebera/android/httpclient/Header;

.field final synthetic val$responseBytes:[B

.field final synthetic val$statusCode:I

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/JsonHttpResponseHandler;[BI[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;)V
    .registers 6

    .line 191
    iput-object p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iput-object p2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$responseBytes:[B

    iput p3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iput-object p4, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lcz/msebera/android/httpclient/Header;

    iput-object p5, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$responseBytes:[B

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->parseResponse([B)Ljava/lang/Object;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    new-instance v2, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;

    invoke-direct {v2, p0, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;-><init>(Lcom/loopj/android/http/JsonHttpResponseHandler$2;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    .line 215
    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    new-instance v2, Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;

    invoke-direct {v2, p0, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;-><init>(Lcom/loopj/android/http/JsonHttpResponseHandler$2;Lorg/json/JSONException;)V

    invoke-virtual {v1, v2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
