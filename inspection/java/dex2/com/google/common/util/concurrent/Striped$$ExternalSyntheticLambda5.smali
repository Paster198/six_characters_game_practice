.class public final synthetic Lcom/google/common/util/concurrent/Striped$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/common/util/concurrent/Striped;->$r8$lambda$f7AdVx1gLibS3hZPmjW1JxvV_us()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method
