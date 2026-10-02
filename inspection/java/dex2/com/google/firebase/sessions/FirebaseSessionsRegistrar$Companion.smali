.class final Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$Companion;
.super Ljava/lang/Object;
.source "FirebaseSessionsRegistrar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00080\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001f\u0010\u000c\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\r0\r0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u001f\u0010\u000f\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\r0\r0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000bR\u001f\u0010\u0011\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00120\u00120\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000bR\u001f\u0010\u0014\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00150\u00150\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000bR\u001f\u0010\u0017\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00180\u00180\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u000bR\u001f\u0010\u001a\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u001b0\u001b0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u000b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$Companion;",
        "",
        "()V",
        "LIBRARY_NAME",
        "",
        "TAG",
        "appContext",
        "Lcom/google/firebase/components/Qualified;",
        "Landroid/content/Context;",
        "kotlin.jvm.PlatformType",
        "getAppContext",
        "()Lcom/google/firebase/components/Qualified;",
        "backgroundDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "getBackgroundDispatcher",
        "blockingDispatcher",
        "getBlockingDispatcher",
        "firebaseApp",
        "Lcom/google/firebase/FirebaseApp;",
        "getFirebaseApp",
        "firebaseInstallationsApi",
        "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
        "getFirebaseInstallationsApi",
        "firebaseSessionsComponent",
        "Lcom/google/firebase/sessions/FirebaseSessionsComponent;",
        "getFirebaseSessionsComponent",
        "transportFactory",
        "Lcom/google/android/datatransport/TransportFactory;",
        "getTransportFactory",
        "com.google.firebase-firebase-sessions"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppContext()Lcom/google/firebase/components/Qualified;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Qualified<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 77
    # getter for: Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lcom/google/firebase/components/Qualified;
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->access$getAppContext$cp()Lcom/google/firebase/components/Qualified;

    move-result-object v0

    return-object v0
.end method

.method public final getBackgroundDispatcher()Lcom/google/firebase/components/Qualified;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Qualified<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation

    .line 80
    # getter for: Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lcom/google/firebase/components/Qualified;
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->access$getBackgroundDispatcher$cp()Lcom/google/firebase/components/Qualified;

    move-result-object v0

    return-object v0
.end method

.method public final getBlockingDispatcher()Lcom/google/firebase/components/Qualified;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Qualified<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation

    .line 81
    # getter for: Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lcom/google/firebase/components/Qualified;
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->access$getBlockingDispatcher$cp()Lcom/google/firebase/components/Qualified;

    move-result-object v0

    return-object v0
.end method

.method public final getFirebaseApp()Lcom/google/firebase/components/Qualified;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Qualified<",
            "Lcom/google/firebase/FirebaseApp;",
            ">;"
        }
    .end annotation

    .line 78
    # getter for: Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lcom/google/firebase/components/Qualified;
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->access$getFirebaseApp$cp()Lcom/google/firebase/components/Qualified;

    move-result-object v0

    return-object v0
.end method

.method public final getFirebaseInstallationsApi()Lcom/google/firebase/components/Qualified;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Qualified<",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            ">;"
        }
    .end annotation

    .line 79
    # getter for: Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lcom/google/firebase/components/Qualified;
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->access$getFirebaseInstallationsApi$cp()Lcom/google/firebase/components/Qualified;

    move-result-object v0

    return-object v0
.end method

.method public final getFirebaseSessionsComponent()Lcom/google/firebase/components/Qualified;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Qualified<",
            "Lcom/google/firebase/sessions/FirebaseSessionsComponent;",
            ">;"
        }
    .end annotation

    .line 83
    # getter for: Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lcom/google/firebase/components/Qualified;
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->access$getFirebaseSessionsComponent$cp()Lcom/google/firebase/components/Qualified;

    move-result-object v0

    return-object v0
.end method

.method public final getTransportFactory()Lcom/google/firebase/components/Qualified;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/Qualified<",
            "Lcom/google/android/datatransport/TransportFactory;",
            ">;"
        }
    .end annotation

    .line 82
    # getter for: Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lcom/google/firebase/components/Qualified;
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->access$getTransportFactory$cp()Lcom/google/firebase/components/Qualified;

    move-result-object v0

    return-object v0
.end method
