.class public Lcz/msebera/android/httpclient/impl/client/RedirectLocations;
.super Ljava/util/AbstractList;
.source "RedirectLocations.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private final unique:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->all:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4

    .line 185
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->all:Ljava/util/List;

    check-cast p2, Ljava/net/URI;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/net/URI;)V
    .registers 3

    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 224
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/net/URI;)Z
    .registers 3

    .line 62
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->get(I)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/net/URI;
    .registers 3

    .line 114
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URI;

    return-object p1
.end method

.method public getAll()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->remove(I)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/net/URI;
    .registers 4

    .line 204
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URI;

    .line 205
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eq v0, v1, :cond_22

    .line 207
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_22
    return-object p1
.end method

.method public remove(Ljava/net/URI;)Z
    .registers 5

    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 79
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URI;

    .line 82
    invoke-virtual {v2, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_e

    :cond_24
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 153
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->all:Ljava/util/List;

    check-cast p2, Ljava/net/URI;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URI;

    .line 154
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eq p2, v0, :cond_29

    .line 157
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_29
    return-object p1
.end method

.method public size()I
    .registers 2

    .line 127
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
