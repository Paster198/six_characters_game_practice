.class Lcom/loopj/android/http/JsonHttpResponseHandler$1$2;
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

.field final synthetic val$ex:Lorg/json/JSONException;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/JsonHttpResponseHandler$1;Lorg/json/JSONException;)V
    .registers 3

    .line 168
    iput-object p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$2;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iput-object p2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$2;->val$ex:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 171
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$2;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$2;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget v1, v1, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$2;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    iget-object v2, v2, Lcom/loopj/android/http/JsonHttpResponseHandler$1;->val$headers:[Lcz/msebera/android/httpclient/Header;

    iget-object v3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$1$2;->val$ex:Lorg/json/JSONException;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    return-void
.end method
