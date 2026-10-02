.class public interface abstract Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule;
.super Ljava/lang/Object;
.source "FirebaseSessionsComponent.kt"


# annotations
.annotation runtime Lcom/google/firebase/sessions/dagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/FirebaseSessionsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MainModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008g\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0008H\'J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u000bH\'J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u000eH\'\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule;",
        "",
        "eventGDTLoggerInterface",
        "Lcom/google/firebase/sessions/EventGDTLoggerInterface;",
        "impl",
        "Lcom/google/firebase/sessions/EventGDTLogger;",
        "sessionDatastore",
        "Lcom/google/firebase/sessions/SessionDatastore;",
        "Lcom/google/firebase/sessions/SessionDatastoreImpl;",
        "sessionFirelogPublisher",
        "Lcom/google/firebase/sessions/SessionFirelogPublisher;",
        "Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;",
        "sessionLifecycleServiceBinder",
        "Lcom/google/firebase/sessions/SessionLifecycleServiceBinder;",
        "Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;->$$INSTANCE:Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule;->Companion:Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;

    return-void
.end method


# virtual methods
.method public abstract eventGDTLoggerInterface(Lcom/google/firebase/sessions/EventGDTLogger;)Lcom/google/firebase/sessions/EventGDTLoggerInterface;
    .annotation runtime Lcom/google/firebase/sessions/dagger/Binds;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract sessionDatastore(Lcom/google/firebase/sessions/SessionDatastoreImpl;)Lcom/google/firebase/sessions/SessionDatastore;
    .annotation runtime Lcom/google/firebase/sessions/dagger/Binds;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract sessionFirelogPublisher(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;)Lcom/google/firebase/sessions/SessionFirelogPublisher;
    .annotation runtime Lcom/google/firebase/sessions/dagger/Binds;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract sessionLifecycleServiceBinder(Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;)Lcom/google/firebase/sessions/SessionLifecycleServiceBinder;
    .annotation runtime Lcom/google/firebase/sessions/dagger/Binds;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method
