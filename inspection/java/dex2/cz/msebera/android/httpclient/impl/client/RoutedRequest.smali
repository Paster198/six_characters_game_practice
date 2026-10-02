.class public Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
.super Ljava/lang/Object;
.source "RoutedRequest.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final request:Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

.field protected final route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->request:Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    .line 56
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    return-void
.end method


# virtual methods
.method public final getRequest()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .registers 2

    .line 60
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->request:Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    return-object v0
.end method

.method public final getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 2

    .line 64
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    return-object v0
.end method
