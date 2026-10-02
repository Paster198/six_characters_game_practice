.class Lcom/google/common/collect/IndexedImmutableSet$1;
.super Lcom/google/common/collect/ImmutableList;
.source "IndexedImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/IndexedImmutableSet;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/IndexedImmutableSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/IndexedImmutableSet;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/google/common/collect/IndexedImmutableSet$1;->this$0:Lcom/google/common/collect/IndexedImmutableSet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/common/collect/IndexedImmutableSet$1;->this$0:Lcom/google/common/collect/IndexedImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/IndexedImmutableSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/common/collect/IndexedImmutableSet$1;->this$0:Lcom/google/common/collect/IndexedImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/IndexedImmutableSet;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/google/common/collect/IndexedImmutableSet$1;->this$0:Lcom/google/common/collect/IndexedImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/IndexedImmutableSet;->size()I

    move-result v0

    return v0
.end method
