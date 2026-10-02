.class Lim/delight/android/commons/Cache$1;
.super Ljava/util/LinkedHashMap;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/delight/android/commons/Cache;-><init>(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2a3962c52607e17cL


# instance fields
.field final synthetic this$0:Lim/delight/android/commons/Cache;


# direct methods
.method constructor <init>(Lim/delight/android/commons/Cache;IFZ)V
    .registers 5

    .line 52
    iput-object p1, p0, Lim/delight/android/commons/Cache$1;->this$0:Lim/delight/android/commons/Cache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lim/delight/android/commons/Cache$1;->size()I

    move-result v0

    iget-object v1, p0, Lim/delight/android/commons/Cache$1;->this$0:Lim/delight/android/commons/Cache;

    # getter for: Lim/delight/android/commons/Cache;->mCacheSize:I
    invoke-static {v1}, Lim/delight/android/commons/Cache;->access$000(Lim/delight/android/commons/Cache;)I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1e

    if-eqz p1, :cond_1c

    .line 61
    iget-object v0, p0, Lim/delight/android/commons/Cache$1;->this$0:Lim/delight/android/commons/Cache;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v2}, Lim/delight/android/commons/Cache;->onEntryRemoved(Ljava/lang/Object;Ljava/lang/Object;Z)V

    :cond_1c
    const/4 p1, 0x1

    return p1

    :cond_1e
    return v2
.end method
