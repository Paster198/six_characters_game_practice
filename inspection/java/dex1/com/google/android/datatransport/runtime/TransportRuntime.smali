.class public Lcom/google/android/datatransport/runtime/TransportRuntime;
.super Ljava/lang/Object;
.source "TransportRuntime.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/TransportInternal;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static volatile instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;


# instance fields
.field private final eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

.field private final uploader:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field private final uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/Scheduler;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V
    .registers 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 60
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 61
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

    .line 62
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->uploader:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    .line 64
    invoke-virtual {p5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->ensureContextsScheduled()V

    return-void
.end method

.method private convert(Lcom/google/android/datatransport/runtime/SendRequest;)Lcom/google/android/datatransport/runtime/EventInternal;
    .registers 6

    .line 160
    invoke-static {}, Lcom/google/android/datatransport/runtime/EventInternal;->builder()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 161
    invoke-interface {v1}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setEventMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 162
    invoke-interface {v1}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setUptimeMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getTransportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setTransportName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 164
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEncoding()Lcom/google/android/datatransport/Encoding;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getPayload()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setEncodedPayload(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEvent()Lcom/google/android/datatransport/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/datatransport/Event;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setCode(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEvent()Lcom/google/android/datatransport/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/datatransport/Event;->getProductData()Lcom/google/android/datatransport/ProductData;

    move-result-object v1

    if-eqz v1, :cond_64

    .line 167
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEvent()Lcom/google/android/datatransport/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/datatransport/Event;->getProductData()Lcom/google/android/datatransport/ProductData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/datatransport/ProductData;->getProductId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_64

    .line 168
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEvent()Lcom/google/android/datatransport/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/datatransport/Event;->getProductData()Lcom/google/android/datatransport/ProductData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/datatransport/ProductData;->getProductId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setProductId(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 170
    :cond_64
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEvent()Lcom/google/android/datatransport/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/datatransport/Event;->getEventContext()Lcom/google/android/datatransport/EventContext;

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 171
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEvent()Lcom/google/android/datatransport/Event;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/datatransport/Event;->getEventContext()Lcom/google/android/datatransport/EventContext;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/google/android/datatransport/EventContext;->getPseudonymousId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 173
    invoke-virtual {p1}, Lcom/google/android/datatransport/EventContext;->getPseudonymousId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setPseudonymousId(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 175
    :cond_83
    invoke-virtual {p1}, Lcom/google/android/datatransport/EventContext;->getExperimentIdsClear()[B

    move-result-object v1

    if-eqz v1, :cond_90

    .line 176
    invoke-virtual {p1}, Lcom/google/android/datatransport/EventContext;->getExperimentIdsClear()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setExperimentIdsClear([B)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 178
    :cond_90
    invoke-virtual {p1}, Lcom/google/android/datatransport/EventContext;->getExperimentIdsEncrypted()[B

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 179
    invoke-virtual {p1}, Lcom/google/android/datatransport/EventContext;->getExperimentIdsEncrypted()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setExperimentIdsEncrypted([B)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 183
    :cond_9d
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;
    .registers 2

    .line 92
    sget-object v0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    if-eqz v0, :cond_9

    .line 96
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;->getTransportRuntime()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object v0

    return-object v0

    .line 94
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSupportedEncodings(Lcom/google/android/datatransport/runtime/Destination;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/Destination;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/Encoding;",
            ">;"
        }
    .end annotation

    .line 138
    instance-of v0, p0, Lcom/google/android/datatransport/runtime/EncodedDestination;

    if-eqz v0, :cond_f

    .line 139
    check-cast p0, Lcom/google/android/datatransport/runtime/EncodedDestination;

    .line 140
    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/EncodedDestination;->getSupportedEncodings()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 142
    :cond_f
    const-string p0, "proto"

    invoke-static {p0}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 3

    .line 73
    sget-object v0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    if-nez v0, :cond_1e

    .line 74
    const-class v0, Lcom/google/android/datatransport/runtime/TransportRuntime;

    monitor-enter v0

    .line 75
    :try_start_7
    sget-object v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    if-nez v1, :cond_19

    .line 77
    invoke-static {}, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->builder()Lcom/google/android/datatransport/runtime/TransportRuntimeComponent$Builder;

    move-result-object v1

    .line 78
    invoke-interface {v1, p0}, Lcom/google/android/datatransport/runtime/TransportRuntimeComponent$Builder;->setApplicationContext(Landroid/content/Context;)Lcom/google/android/datatransport/runtime/TransportRuntimeComponent$Builder;

    move-result-object p0

    .line 79
    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/TransportRuntimeComponent$Builder;->build()Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    move-result-object p0

    sput-object p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 81
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p0

    :cond_1e
    return-void
.end method

.method static withInstance(Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;Ljava/util/concurrent/Callable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 104
    const-class v0, Lcom/google/android/datatransport/runtime/TransportRuntime;

    monitor-enter v0

    .line 105
    :try_start_3
    sget-object v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 106
    sput-object p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 107
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_20

    .line 109
    :try_start_8
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_15

    .line 111
    const-class p0, Lcom/google/android/datatransport/runtime/TransportRuntime;

    monitor-enter p0

    .line 112
    :try_start_e
    sput-object v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 113
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw p1

    :catchall_15
    move-exception p0

    .line 111
    const-class p1, Lcom/google/android/datatransport/runtime/TransportRuntime;

    monitor-enter p1

    .line 112
    :try_start_19
    sput-object v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;

    .line 113
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    .line 114
    throw p0

    :catchall_1d
    move-exception p0

    .line 113
    :try_start_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0

    :catchall_20
    move-exception p0

    .line 107
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method


# virtual methods
.method public getUploader()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->uploader:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    return-object v0
.end method

.method public newFactory(Lcom/google/android/datatransport/runtime/Destination;)Lcom/google/android/datatransport/TransportFactory;
    .registers 6

    .line 128
    new-instance v0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;

    .line 129
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getSupportedEncodings(Lcom/google/android/datatransport/runtime/Destination;)Ljava/util/Set;

    move-result-object v1

    .line 130
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportContext;->builder()Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v2

    .line 131
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/Destination;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setBackendName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v2

    .line 132
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/Destination;->getExtras()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setExtras([B)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->build()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;-><init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/TransportInternal;)V

    return-object v0
.end method

.method public newFactory(Ljava/lang/String;)Lcom/google/android/datatransport/TransportFactory;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    new-instance v0, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;

    const/4 v1, 0x0

    .line 121
    invoke-static {v1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getSupportedEncodings(Lcom/google/android/datatransport/runtime/Destination;)Ljava/util/Set;

    move-result-object v1

    .line 122
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportContext;->builder()Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setBackendName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->build()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/datatransport/runtime/TransportFactoryImpl;-><init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/TransportInternal;)V

    return-object v0
.end method

.method public send(Lcom/google/android/datatransport/runtime/SendRequest;Lcom/google/android/datatransport/TransportScheduleCallback;)V
    .registers 6

    .line 152
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

    .line 153
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEvent()Lcom/google/android/datatransport/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/datatransport/Event;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/TransportContext;->withPriority(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object v1

    .line 154
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->convert(Lcom/google/android/datatransport/runtime/SendRequest;)Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object p1

    .line 152
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/Scheduler;->schedule(Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;Lcom/google/android/datatransport/TransportScheduleCallback;)V

    return-void
.end method
