.class Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/JsonHttpResponseHandler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

.field final synthetic val$jsonResponse:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/JsonHttpResponseHandler$2;Ljava/lang/Object;)V
    .registers 3

    .line 196
    iput-object p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iput-object p2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 200
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    # getter for: Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z
    invoke-static {v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->access$000(Lcom/loopj/android/http/JsonHttpResponseHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    if-nez v0, :cond_26

    .line 201
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget v2, v2, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v3, v3, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lcz/msebera/android/httpclient/Header;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-object v4, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v4, v4, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 202
    :cond_26
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_44

    .line 203
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget v1, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v2, v2, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lcz/msebera/android/httpclient/Header;

    iget-object v3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v3, v3, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    return-void

    .line 204
    :cond_44
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_60

    .line 205
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget v1, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v2, v2, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lcz/msebera/android/httpclient/Header;

    iget-object v3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v3, v3, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    return-void

    .line 206
    :cond_60
    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_7c

    .line 207
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget v1, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v2, v2, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lcz/msebera/android/httpclient/Header;

    iget-object v3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v4, v4, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 209
    :cond_7c
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget v2, v2, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v3, v3, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lcz/msebera/android/httpclient/Header;

    new-instance v4, Lorg/json/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected response type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    return-void
.end method
