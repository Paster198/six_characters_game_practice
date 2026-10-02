.class final Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;
.super Ljava/lang/Object;
.source "DaggerFirebaseSessionsComponent.java"

# interfaces
.implements Lcom/google/firebase/sessions/FirebaseSessionsComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FirebaseSessionsComponentImpl"
.end annotation


# instance fields
.field private appContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;"
        }
    .end annotation
.end field

.field private blockingDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;"
        }
    .end annotation
.end field

.field private eventGDTLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/sessions/EventGDTLogger;",
            ">;"
        }
    .end annotation
.end field

.field private firebaseAppProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/FirebaseApp;",
            ">;"
        }
    .end annotation
.end field

.field private firebaseInstallationsApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseSessionsComponentImpl:Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;

.field private firebaseSessionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/sessions/FirebaseSessions;",
            ">;"
        }
    .end annotation
.end field

.field private sessionDatastoreImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/sessions/SessionDatastoreImpl;",
            ">;"
        }
    .end annotation
.end field

.field private sessionFirelogPublisherImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;",
            ">;"
        }
    .end annotation
.end field

.field private sessionGeneratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/sessions/SessionGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private sessionLifecycleServiceBinderImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private sessionsSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/sessions/settings/SessionsSettings;",
            ">;"
        }
    .end annotation
.end field

.field private transportFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/android/datatransport/TransportFactory;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inject/Provider;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/android/datatransport/TransportFactory;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p0, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->firebaseSessionsComponentImpl:Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;

    .line 125
    invoke-direct/range {p0 .. p6}, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->initialize(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$1;)V
    .registers 8

    .line 91
    invoke-direct/range {p0 .. p6}, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;-><init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inject/Provider;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/android/datatransport/TransportFactory;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-static {p4}, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/sessions/dagger/internal/Factory;

    move-result-object p4

    iput-object p4, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->firebaseAppProvider:Ljavax/inject/Provider;

    .line 136
    invoke-static {p3}, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/sessions/dagger/internal/Factory;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->blockingDispatcherProvider:Ljavax/inject/Provider;

    .line 137
    invoke-static {p2}, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/sessions/dagger/internal/Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->backgroundDispatcherProvider:Ljavax/inject/Provider;

    .line 138
    invoke-static {p5}, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/sessions/dagger/internal/Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->firebaseInstallationsApiProvider:Ljavax/inject/Provider;

    .line 139
    iget-object p3, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->firebaseAppProvider:Ljavax/inject/Provider;

    iget-object p4, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->blockingDispatcherProvider:Ljavax/inject/Provider;

    iget-object p5, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->backgroundDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {p3, p4, p5, p2}, Lcom/google/firebase/sessions/settings/SessionsSettings_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/sessions/settings/SessionsSettings_Factory;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->sessionsSettingsProvider:Ljavax/inject/Provider;

    .line 140
    invoke-static {p1}, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/sessions/dagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->appContextProvider:Ljavax/inject/Provider;

    .line 141
    invoke-static {p1}, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->sessionLifecycleServiceBinderImplProvider:Ljavax/inject/Provider;

    .line 142
    iget-object p2, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->firebaseAppProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->sessionsSettingsProvider:Ljavax/inject/Provider;

    iget-object p4, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->backgroundDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {p2, p3, p4, p1}, Lcom/google/firebase/sessions/FirebaseSessions_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/sessions/FirebaseSessions_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->firebaseSessionsProvider:Ljavax/inject/Provider;

    .line 143
    iget-object p1, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->appContextProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->backgroundDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/google/firebase/sessions/SessionDatastoreImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/sessions/SessionDatastoreImpl_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->sessionDatastoreImplProvider:Ljavax/inject/Provider;

    .line 144
    invoke-static {p6}, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/sessions/dagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->transportFactoryProvider:Ljavax/inject/Provider;

    .line 145
    invoke-static {p1}, Lcom/google/firebase/sessions/EventGDTLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/google/firebase/sessions/EventGDTLogger_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->eventGDTLoggerProvider:Ljavax/inject/Provider;

    .line 146
    iget-object p2, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->firebaseAppProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->firebaseInstallationsApiProvider:Ljavax/inject/Provider;

    iget-object p4, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->sessionsSettingsProvider:Ljavax/inject/Provider;

    iget-object p5, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->backgroundDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {p2, p3, p4, p1, p5}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/sessions/SessionFirelogPublisherImpl_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->sessionFirelogPublisherImplProvider:Ljavax/inject/Provider;

    .line 147
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory;->create()Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->sessionGeneratorProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getFirebaseSessions()Lcom/google/firebase/sessions/FirebaseSessions;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->firebaseSessionsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/FirebaseSessions;

    return-object v0
.end method

.method public getSessionDatastore()Lcom/google/firebase/sessions/SessionDatastore;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->sessionDatastoreImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/SessionDatastore;

    return-object v0
.end method

.method public getSessionFirelogPublisher()Lcom/google/firebase/sessions/SessionFirelogPublisher;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->sessionFirelogPublisherImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/SessionFirelogPublisher;

    return-object v0
.end method

.method public getSessionGenerator()Lcom/google/firebase/sessions/SessionGenerator;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->sessionGeneratorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/SessionGenerator;

    return-object v0
.end method

.method public getSessionsSettings()Lcom/google/firebase/sessions/settings/SessionsSettings;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl;->sessionsSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/settings/SessionsSettings;

    return-object v0
.end method
