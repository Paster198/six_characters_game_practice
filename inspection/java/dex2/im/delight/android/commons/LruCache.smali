.class public final Lim/delight/android/commons/LruCache;
.super Lim/delight/android/commons/Cache;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lim/delight/android/commons/Cache<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, p1, v0}, Lim/delight/android/commons/Cache;-><init>(IZ)V

    return-void
.end method
