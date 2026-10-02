.class Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/JsonHttpResponseHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

.field final synthetic val$jsonResponse:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/JsonHttpResponseHandler$1;Ljava/lang/Object;)V
    .registers 3

    .line 145
    iput-object p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iput-object p2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 149
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    # getter for: Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z
    invoke-static {v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->access$000(Lcom/loopj/android/http/JsonHttpResponseHandler;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    if-nez v0, :cond_22

    .line 150
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget v2, v2, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v3, v3, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$headers:[Lcz/msebera/android/httpclient/Header;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_22
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_3c

    .line 152
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget v1, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v2, v2, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$headers:[Lcz/msebera/android/httpclient/Header;

    iget-object v3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;Lorg/json/JSONObject;)V

    return-void

    .line 153
    :cond_3c
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_54

    .line 154
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget v1, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v2, v2, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$headers:[Lcz/msebera/android/httpclient/Header;

    iget-object v3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;Lorg/json/JSONArray;)V

    return-void

    .line 155
    :cond_54
    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_91

    .line 157
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    # getter for: Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z
    invoke-static {v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->access$000(Lcom/loopj/android/http/JsonHttpResponseHandler;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 158
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget v1, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v2, v2, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$headers:[Lcz/msebera/android/httpclient/Header;

    iget-object v3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONException;

    const-string v5, "Response cannot be parsed as JSON data"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 160
    :cond_7d
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget v1, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v2, v2, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$headers:[Lcz/msebera/android/httpclient/Header;

    iget-object v3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_91
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget v2, v2, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v3, v3, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$headers:[Lcz/msebera/android/httpclient/Header;

    new-instance v4, Lorg/json/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected response type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

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
