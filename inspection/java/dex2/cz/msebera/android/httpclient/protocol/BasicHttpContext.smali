.class public Lcz/msebera/android/httpclient/protocol/BasicHttpContext;
.super Ljava/lang/Object;
.source "BasicHttpContext.java"

# interfaces
.implements Lcz/msebera/android/httpclient/protocol/HttpContext;


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final parentContext:Lcz/msebera/android/httpclient/protocol/HttpContext;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->map:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->parentContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 90
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 62
    const-string v0, "Id"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 64
    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->parentContext:Lcz/msebera/android/httpclient/protocol/HttpContext;

    if-eqz v1, :cond_16

    .line 65
    invoke-interface {v1, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_16
    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 82
    const-string v0, "Id"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 72
    const-string v0, "Id"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_d

    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 76
    :cond_d
    iget-object p2, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
