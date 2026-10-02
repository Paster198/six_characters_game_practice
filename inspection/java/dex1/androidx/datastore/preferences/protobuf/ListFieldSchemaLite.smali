.class final Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;
.super Ljava/lang/Object;
.source "ListFieldSchemaLite.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/ListFieldSchema;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getProtobufList(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Landroidx/datastore/preferences/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 57
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    return-object p0
.end method


# virtual methods
.method public makeImmutableListAt(Ljava/lang/Object;J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .line 33
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object p1

    .line 34
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-void
.end method

.method public mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "otherMsg",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 39
    invoke-static {p1, p3, p4}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 40
    invoke-static {p2, p3, p4}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object p2

    .line 42
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    .line 43
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-lez v1, :cond_22

    if-lez v2, :cond_22

    .line 45
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_1f

    add-int/2addr v2, v1

    .line 46
    invoke-interface {v0, v2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 48
    :cond_1f
    invoke-interface {v0, p2}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->addAll(Ljava/util/Collection;)Z

    :cond_22
    if-lez v1, :cond_25

    move-object p2, v0

    .line 52
    :cond_25
    invoke-static {p1, p3, p4, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 22
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0xa

    goto :goto_15

    :cond_13
    mul-int/lit8 v1, v1, 0x2

    .line 24
    :goto_15
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 26
    invoke-static {p1, p2, p3, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1c
    return-object v0
.end method
