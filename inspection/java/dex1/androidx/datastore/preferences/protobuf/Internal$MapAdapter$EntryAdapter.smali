.class Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$EntryAdapter;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final realEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TRealValue;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "realEntry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TRealValue;>;)V"
        }
    .end annotation

    .line 534
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 562
    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 565
    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    .line 566
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$EntryAdapter;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$EntryAdapter;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$EntryAdapter;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    return v0

    :cond_29
    return v2
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;

    # getter for: Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;->valueConverter:Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$Converter;
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;->access$000(Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;)Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 571
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;

    # getter for: Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;->valueConverter:Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$Converter;
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;->access$000(Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;)Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$Converter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_14

    const/4 p1, 0x0

    return-object p1

    .line 554
    :cond_14
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;

    # getter for: Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;->valueConverter:Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$Converter;
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;->access$000(Landroidx/datastore/preferences/protobuf/Internal$MapAdapter;)Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$Converter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
