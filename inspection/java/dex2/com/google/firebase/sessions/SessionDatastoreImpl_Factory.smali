.class public final Lcom/google/firebase/sessions/SessionDatastoreImpl_Factory;
.super Ljava/lang/Object;
.source "SessionDatastoreImpl_Factory.java"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/sessions/dagger/internal/Factory<",
        "Lcom/google/firebase/sessions/SessionDatastoreImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final appContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionDatastoreImpl_Factory;->appContextProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/google/firebase/sessions/SessionDatastoreImpl_Factory;->backgroundDispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/sessions/SessionDatastoreImpl_Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;)",
            "Lcom/google/firebase/sessions/SessionDatastoreImpl_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/google/firebase/sessions/SessionDatastoreImpl_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/SessionDatastoreImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/SessionDatastoreImpl;
    .registers 3

    .line 42
    new-instance v0, Lcom/google/firebase/sessions/SessionDatastoreImpl;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/SessionDatastoreImpl;-><init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/sessions/SessionDatastoreImpl;
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionDatastoreImpl_Factory;->appContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionDatastoreImpl_Factory;->backgroundDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v1}, Lcom/google/firebase/sessions/SessionDatastoreImpl_Factory;->newInstance(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/SessionDatastoreImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0}, Lcom/google/firebase/sessions/SessionDatastoreImpl_Factory;->get()Lcom/google/firebase/sessions/SessionDatastoreImpl;

    move-result-object v0

    return-object v0
.end method
