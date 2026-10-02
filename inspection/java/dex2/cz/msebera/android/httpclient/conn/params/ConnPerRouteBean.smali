.class public final Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;
.super Ljava/lang/Object;
.source "ConnPerRouteBean.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_CONNECTIONS_PER_ROUTE:I = 0x2


# instance fields
.field private volatile defaultMax:I

.field private final maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    .line 64
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->setDefaultMaxPerRoute(I)V

    return-void
.end method


# virtual methods
.method public getDefaultMax()I
    .registers 2

    .line 68
    iget v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->defaultMax:I

    return v0
.end method

.method public getDefaultMaxPerRoute()I
    .registers 2

    .line 75
    iget v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->defaultMax:I

    return v0
.end method

.method public getMaxForRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I
    .registers 3

    .line 90
    const-string v0, "HTTP route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_14

    .line 93
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 95
    :cond_14
    iget p1, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->defaultMax:I

    return p1
.end method

.method public setDefaultMaxPerRoute(I)V
    .registers 3

    .line 79
    const-string v0, "Default max per route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    .line 80
    iput p1, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->defaultMax:I

    return-void
.end method

.method public setMaxForRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;I)V
    .registers 4

    .line 84
    const-string v0, "HTTP route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    const-string v0, "Max per route"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMaxForRoutes(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 103
    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 104
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
