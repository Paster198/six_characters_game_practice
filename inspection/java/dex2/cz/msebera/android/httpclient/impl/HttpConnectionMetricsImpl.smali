.class public Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;
.super Ljava/lang/Object;
.source "HttpConnectionMetricsImpl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpConnectionMetrics;


# static fields
.field public static final RECEIVED_BYTES_COUNT:Ljava/lang/String; = "http.received-bytes-count"

.field public static final REQUEST_COUNT:Ljava/lang/String; = "http.request-count"

.field public static final RESPONSE_COUNT:Ljava/lang/String; = "http.response-count"

.field public static final SENT_BYTES_COUNT:Ljava/lang/String; = "http.sent-bytes-count"


# instance fields
.field private final inTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

.field private metricsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final outTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

.field private requestCount:J

.field private responseCount:J


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/HttpTransportMetrics;Lcz/msebera/android/httpclient/io/HttpTransportMetrics;)V
    .registers 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 53
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 64
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    .line 65
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    return-void
.end method


# virtual methods
.method public getMetric(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 109
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 110
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    :goto_b
    if-nez v0, :cond_57

    .line 113
    const-string v2, "http.request-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 114
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->requestCount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 115
    :cond_1c
    const-string v2, "http.response-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 116
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->responseCount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 117
    :cond_2b
    const-string v2, "http.received-bytes-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 118
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    if-eqz p1, :cond_40

    .line 119
    invoke-interface {p1}, Lcz/msebera/android/httpclient/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_40
    return-object v1

    .line 123
    :cond_41
    const-string v2, "http.sent-bytes-count"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 124
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    if-eqz p1, :cond_56

    .line 125
    invoke-interface {p1}, Lcz/msebera/android/httpclient/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_56
    return-object v1

    :cond_57
    return-object v0
.end method

.method public getReceivedBytesCount()J
    .registers 3

    .line 72
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    if-eqz v0, :cond_9

    .line 73
    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getRequestCount()J
    .registers 3

    .line 90
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->requestCount:J

    return-wide v0
.end method

.method public getResponseCount()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->responseCount:J

    return-wide v0
.end method

.method public getSentBytesCount()J
    .registers 3

    .line 81
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    if-eqz v0, :cond_9

    .line 82
    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public incrementRequestCount()V
    .registers 5

    .line 94
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->requestCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->requestCount:J

    return-void
.end method

.method public incrementResponseCount()V
    .registers 5

    .line 103
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->responseCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->responseCount:J

    return-void
.end method

.method public reset()V
    .registers 3

    .line 143
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    if-eqz v0, :cond_7

    .line 144
    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/HttpTransportMetrics;->reset()V

    .line 146
    :cond_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    if-eqz v0, :cond_e

    .line 147
    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/HttpTransportMetrics;->reset()V

    :cond_e
    const-wide/16 v0, 0x0

    .line 149
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 150
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->responseCount:J

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    return-void
.end method

.method public setMetric(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 135
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    .line 138
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
