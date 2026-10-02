.class public final Landroidx/activity/contextaware/ContextAwareHelper;
.super Ljava/lang/Object;
.source "ContextAwareHelper.java"


# instance fields
.field private volatile mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/activity/contextaware/OnContextAvailableListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->mListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V
    .registers 3

    .line 73
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 74
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Landroidx/activity/contextaware/OnContextAvailableListener;->onContextAvailable(Landroid/content/Context;)V

    .line 76
    :cond_9
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAvailableContext()V
    .registers 2

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public dispatchOnContextAvailable(Landroid/content/Context;)V
    .registers 4

    .line 97
    iput-object p1, p0, Landroidx/activity/contextaware/ContextAwareHelper;->mContext:Landroid/content/Context;

    .line 98
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/contextaware/OnContextAvailableListener;

    .line 99
    invoke-interface {v1, p1}, Landroidx/activity/contextaware/OnContextAvailableListener;->onContextAvailable(Landroid/content/Context;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public peekAvailableContext()Landroid/content/Context;
    .registers 2

    .line 62
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public removeOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V
    .registers 3

    .line 87
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
