.class public final Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;
.super Ljava/lang/Object;
.source "SessionLifecycleServiceBinder.kt"

# interfaces
.implements Lcom/google/firebase/sessions/SessionLifecycleServiceBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl$Companion;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0001\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;",
        "Lcom/google/firebase/sessions/SessionLifecycleServiceBinder;",
        "appContext",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "bindToService",
        "",
        "callback",
        "Landroid/os/Messenger;",
        "serviceConnection",
        "Landroid/content/ServiceConnection;",
        "unbindServiceSafely",
        "",
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
.field private static final Companion:Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl$Companion;

.field public static final TAG:Ljava/lang/String; = "LifecycleServiceBinder"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;->Companion:Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;->appContext:Landroid/content/Context;

    return-void
.end method

.method private final unbindServiceSafely(Landroid/content/Context;Landroid/content/ServiceConnection;)Ljava/lang/Object;
    .registers 4

    .line 69
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object p1

    :catch_6
    move-exception p1

    .line 71
    const-string p2, "Session lifecycle service binding failed."

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "LifecycleServiceBinder"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bindToService(Landroid/os/Messenger;Landroid/content/ServiceConnection;)V
    .registers 6

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceConnection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;->appContext:Landroid/content/Context;

    const-class v2, Lcom/google/firebase/sessions/SessionLifecycleService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    const-string v1, "Binding service to application."

    const-string v2, "LifecycleServiceBinder"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "ClientCallbackMessenger"

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 47
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;->appContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    :try_start_35
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;->appContext:Landroid/content/Context;

    const/16 v1, 0x41

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_3d} :catch_3e

    goto :goto_47

    :catch_3e
    move-exception p1

    .line 57
    const-string v0, "Failed to bind session lifecycle service to application."

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_47
    if-nez p1, :cond_53

    .line 61
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;->appContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;->unbindServiceSafely(Landroid/content/Context;Landroid/content/ServiceConnection;)Ljava/lang/Object;

    .line 62
    const-string p1, "Session lifecycle service binding failed."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return-void
.end method
