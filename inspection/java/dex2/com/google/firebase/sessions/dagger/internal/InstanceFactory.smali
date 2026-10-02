.class public final Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;
.super Ljava/lang/Object;
.source "InstanceFactory.java"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;
.implements Lcom/google/firebase/sessions/dagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/sessions/dagger/internal/Factory<",
        "TT;>;",
        "Lcom/google/firebase/sessions/dagger/Lazy<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final NULL_INSTANCE_FACTORY:Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/sessions/dagger/internal/InstanceFactory<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;->NULL_INSTANCE_FACTORY:Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lcom/google/firebase/sessions/dagger/internal/Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/firebase/sessions/dagger/internal/Factory<",
            "TT;>;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Lcom/google/firebase/sessions/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createNullable(Ljava/lang/Object;)Lcom/google/firebase/sessions/dagger/internal/Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/firebase/sessions/dagger/internal/Factory<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 39
    invoke-static {}, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;->nullInstanceFactory()Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;

    move-result-object p0

    return-object p0

    .line 40
    :cond_7
    new-instance v0, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static nullInstanceFactory()Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/firebase/sessions/dagger/internal/InstanceFactory<",
            "TT;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;->NULL_INSTANCE_FACTORY:Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/firebase/sessions/dagger/internal/InstanceFactory;->instance:Ljava/lang/Object;

    return-object v0
.end method
