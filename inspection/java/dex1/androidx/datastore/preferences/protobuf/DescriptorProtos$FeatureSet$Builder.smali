.class public final Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 25393
    # getter for: Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;
    invoke-static {}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->access$52100()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/DescriptorProtos$1;)V
    .registers 2

    .line 25386
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEnumType()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 2

    .line 25464
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25465
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    # invokes: Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->clearEnumType()V
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->access$52500(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public clearFieldPresence()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 2

    .line 25428
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25429
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    # invokes: Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->clearFieldPresence()V
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->access$52300(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public clearJsonFormat()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 2

    .line 25608
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25609
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    # invokes: Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->clearJsonFormat()V
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->access$53300(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public clearMessageEncoding()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 2

    .line 25572
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25573
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    # invokes: Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->clearMessageEncoding()V
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->access$53100(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public clearRepeatedFieldEncoding()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 2

    .line 25500
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25501
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    # invokes: Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->clearRepeatedFieldEncoding()V
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->access$52700(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public clearUtf8Validation()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 2

    .line 25536
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25537
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    # invokes: Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->clearUtf8Validation()V
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->access$52900(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public getEnumType()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;
    .registers 2

    .line 25447
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->getEnumType()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;

    move-result-object v0

    return-object v0
.end method

.method public getFieldPresence()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
    .registers 2

    .line 25411
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->getFieldPresence()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    move-result-object v0

    return-object v0
.end method

.method public getJsonFormat()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;
    .registers 2

    .line 25591
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->getJsonFormat()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    move-result-object v0

    return-object v0
.end method

.method public getMessageEncoding()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;
    .registers 2

    .line 25555
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->getMessageEncoding()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedFieldEncoding()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;
    .registers 2

    .line 25483
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->getRepeatedFieldEncoding()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    move-result-object v0

    return-object v0
.end method

.method public getUtf8Validation()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;
    .registers 2

    .line 25519
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->getUtf8Validation()Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    move-result-object v0

    return-object v0
.end method

.method public hasEnumType()Z
    .registers 2

    .line 25439
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->hasEnumType()Z

    move-result v0

    return v0
.end method

.method public hasFieldPresence()Z
    .registers 2

    .line 25403
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->hasFieldPresence()Z

    move-result v0

    return v0
.end method

.method public hasJsonFormat()Z
    .registers 2

    .line 25583
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->hasJsonFormat()Z

    move-result v0

    return v0
.end method

.method public hasMessageEncoding()Z
    .registers 2

    .line 25547
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->hasMessageEncoding()Z

    move-result v0

    return v0
.end method

.method public hasRepeatedFieldEncoding()Z
    .registers 2

    .line 25475
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->hasRepeatedFieldEncoding()Z

    move-result v0

    return v0
.end method

.method public hasUtf8Validation()Z
    .registers 2

    .line 25511
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->hasUtf8Validation()Z

    move-result v0

    return v0
.end method

.method public setEnumType(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25455
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25456
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    # invokes: Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->setEnumType(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->access$52400(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$EnumType;)V

    return-object p0
.end method

.method public setFieldPresence(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25419
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25420
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    # invokes: Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->setFieldPresence(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->access$52200(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$FieldPresence;)V

    return-object p0
.end method

.method public setJsonFormat(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25599
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25600
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    # invokes: Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->setJsonFormat(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->access$53200(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$JsonFormat;)V

    return-object p0
.end method

.method public setMessageEncoding(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25563
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25564
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    # invokes: Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->setMessageEncoding(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->access$53000(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;)V

    return-object p0
.end method

.method public setRepeatedFieldEncoding(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25491
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25492
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    # invokes: Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->setRepeatedFieldEncoding(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->access$52600(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;)V

    return-object p0
.end method

.method public setUtf8Validation(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;)Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25527
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25528
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;

    # invokes: Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->setUtf8Validation(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;->access$52800(Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet;Landroidx/datastore/preferences/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;)V

    return-object p0
.end method
