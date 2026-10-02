.class public final Landroidx/datastore/preferences/protobuf/Option$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Option.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/OptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Option;",
        "Landroidx/datastore/preferences/protobuf/Option$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/OptionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 206
    # getter for: Landroidx/datastore/preferences/protobuf/Option;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/Option;
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Option;->access$000()Landroidx/datastore/preferences/protobuf/Option;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Option$1;)V
    .registers 2

    .line 199
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Landroidx/datastore/preferences/protobuf/Option$Builder;
    .registers 2

    .line 243
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 244
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    # invokes: Landroidx/datastore/preferences/protobuf/Option;->clearName()V
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Option;->access$200(Landroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public clearValue()Landroidx/datastore/preferences/protobuf/Option$Builder;
    .registers 2

    .line 301
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 302
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    # invokes: Landroidx/datastore/preferences/protobuf/Option;->clearValue()V
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Option;->access$600(Landroidx/datastore/preferences/protobuf/Option;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .registers 2

    .line 225
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->getNameBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Landroidx/datastore/preferences/protobuf/Any;
    .registers 2

    .line 271
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->getValue()Landroidx/datastore/preferences/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public hasValue()Z
    .registers 2

    .line 264
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Option;->hasValue()Z

    move-result v0

    return v0
.end method

.method public mergeValue(Landroidx/datastore/preferences/protobuf/Any;)Landroidx/datastore/preferences/protobuf/Option$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 295
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    # invokes: Landroidx/datastore/preferences/protobuf/Option;->mergeValue(Landroidx/datastore/preferences/protobuf/Any;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Option;->access$500(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/Any;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Option$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 235
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    # invokes: Landroidx/datastore/preferences/protobuf/Option;->setName(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Option;->access$100(Landroidx/datastore/preferences/protobuf/Option;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/Option$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 255
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    # invokes: Landroidx/datastore/preferences/protobuf/Option;->setNameBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Option;->access$300(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Landroidx/datastore/preferences/protobuf/Any$Builder;)Landroidx/datastore/preferences/protobuf/Option$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 287
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/Any$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/Any;

    # invokes: Landroidx/datastore/preferences/protobuf/Option;->setValue(Landroidx/datastore/preferences/protobuf/Any;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Option;->access$400(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/Any;)V

    return-object p0
.end method

.method public setValue(Landroidx/datastore/preferences/protobuf/Any;)Landroidx/datastore/preferences/protobuf/Option$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Option$Builder;->copyOnWrite()V

    .line 278
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Option$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Option;

    # invokes: Landroidx/datastore/preferences/protobuf/Option;->setValue(Landroidx/datastore/preferences/protobuf/Any;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Option;->access$400(Landroidx/datastore/preferences/protobuf/Option;Landroidx/datastore/preferences/protobuf/Any;)V

    return-object p0
.end method
