.class public final Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "PreferencesProto.java"

# interfaces
.implements Landroidx/datastore/preferences/PreferencesProto$ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/PreferencesProto$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/PreferencesProto$Value;",
        "Landroidx/datastore/preferences/PreferencesProto$Value$Builder;",
        ">;",
        "Landroidx/datastore/preferences/PreferencesProto$ValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1030
    # getter for: Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;
    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$300()Landroidx/datastore/preferences/PreferencesProto$Value;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/PreferencesProto$1;)V
    .registers 2

    .line 1023
    invoke-direct {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBoolean()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 2

    .line 1077
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1078
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->clearBoolean()V
    invoke-static {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$600(Landroidx/datastore/preferences/PreferencesProto$Value;)V

    return-object p0
.end method

.method public clearBytes()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 2

    .line 1362
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1363
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->clearBytes()V
    invoke-static {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$2200(Landroidx/datastore/preferences/PreferencesProto$Value;)V

    return-object p0
.end method

.method public clearDouble()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 2

    .line 1326
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1327
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->clearDouble()V
    invoke-static {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$2000(Landroidx/datastore/preferences/PreferencesProto$Value;)V

    return-object p0
.end method

.method public clearFloat()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 2

    .line 1113
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1114
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->clearFloat()V
    invoke-static {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$800(Landroidx/datastore/preferences/PreferencesProto$Value;)V

    return-object p0
.end method

.method public clearInteger()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 2

    .line 1149
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1150
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->clearInteger()V
    invoke-static {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1000(Landroidx/datastore/preferences/PreferencesProto$Value;)V

    return-object p0
.end method

.method public clearLong()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 2

    .line 1185
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1186
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->clearLong()V
    invoke-static {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1200(Landroidx/datastore/preferences/PreferencesProto$Value;)V

    return-object p0
.end method

.method public clearString()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 2

    .line 1231
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1232
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->clearString()V
    invoke-static {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1400(Landroidx/datastore/preferences/PreferencesProto$Value;)V

    return-object p0
.end method

.method public clearStringSet()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 2

    .line 1290
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1291
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->clearStringSet()V
    invoke-static {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1800(Landroidx/datastore/preferences/PreferencesProto$Value;)V

    return-object p0
.end method

.method public clearValue()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 2

    .line 1040
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1041
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->clearValue()V
    invoke-static {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$400(Landroidx/datastore/preferences/PreferencesProto$Value;)V

    return-object p0
.end method

.method public getBoolean()Z
    .registers 2

    .line 1060
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->getBoolean()Z

    move-result v0

    return v0
.end method

.method public getBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .registers 2

    .line 1345
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->getBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDouble()D
    .registers 3

    .line 1309
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .registers 2

    .line 1096
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->getFloat()F

    move-result v0

    return v0
.end method

.method public getInteger()I
    .registers 2

    .line 1132
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->getInteger()I

    move-result v0

    return v0
.end method

.method public getLong()J
    .registers 3

    .line 1168
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .line 1204
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .registers 2

    .line 1213
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->getStringBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet()Landroidx/datastore/preferences/PreferencesProto$StringSet;
    .registers 2

    .line 1259
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->getStringSet()Landroidx/datastore/preferences/PreferencesProto$StringSet;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;
    .registers 2

    .line 1036
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->getValueCase()Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasBoolean()Z
    .registers 2

    .line 1052
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->hasBoolean()Z

    move-result v0

    return v0
.end method

.method public hasBytes()Z
    .registers 2

    .line 1337
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->hasBytes()Z

    move-result v0

    return v0
.end method

.method public hasDouble()Z
    .registers 2

    .line 1301
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->hasDouble()Z

    move-result v0

    return v0
.end method

.method public hasFloat()Z
    .registers 2

    .line 1088
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->hasFloat()Z

    move-result v0

    return v0
.end method

.method public hasInteger()Z
    .registers 2

    .line 1124
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->hasInteger()Z

    move-result v0

    return v0
.end method

.method public hasLong()Z
    .registers 2

    .line 1160
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->hasLong()Z

    move-result v0

    return v0
.end method

.method public hasString()Z
    .registers 2

    .line 1196
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->hasString()Z

    move-result v0

    return v0
.end method

.method public hasStringSet()Z
    .registers 2

    .line 1252
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->hasStringSet()Z

    move-result v0

    return v0
.end method

.method public mergeStringSet(Landroidx/datastore/preferences/PreferencesProto$StringSet;)Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 3

    .line 1282
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1283
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->mergeStringSet(Landroidx/datastore/preferences/PreferencesProto$StringSet;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1700(Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/PreferencesProto$StringSet;)V

    return-object p0
.end method

.method public setBoolean(Z)Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 3

    .line 1068
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1069
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->setBoolean(Z)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$500(Landroidx/datastore/preferences/PreferencesProto$Value;Z)V

    return-object p0
.end method

.method public setBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 3

    .line 1353
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1354
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->setBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$2100(Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDouble(D)Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 4

    .line 1317
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1318
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->setDouble(D)V
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1900(Landroidx/datastore/preferences/PreferencesProto$Value;D)V

    return-object p0
.end method

.method public setFloat(F)Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 3

    .line 1104
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1105
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->setFloat(F)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$700(Landroidx/datastore/preferences/PreferencesProto$Value;F)V

    return-object p0
.end method

.method public setInteger(I)Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 3

    .line 1140
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1141
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->setInteger(I)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$900(Landroidx/datastore/preferences/PreferencesProto$Value;I)V

    return-object p0
.end method

.method public setLong(J)Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 4

    .line 1176
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1177
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->setLong(J)V
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1100(Landroidx/datastore/preferences/PreferencesProto$Value;J)V

    return-object p0
.end method

.method public setString(Ljava/lang/String;)Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 3

    .line 1222
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1223
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->setString(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1300(Landroidx/datastore/preferences/PreferencesProto$Value;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStringBytes(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 3

    .line 1242
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1243
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->setStringBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1500(Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStringSet(Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;)Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 3

    .line 1274
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1275
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->setStringSet(Landroidx/datastore/preferences/PreferencesProto$StringSet;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1600(Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/PreferencesProto$StringSet;)V

    return-object p0
.end method

.method public setStringSet(Landroidx/datastore/preferences/PreferencesProto$StringSet;)Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 3

    .line 1265
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->copyOnWrite()V

    .line 1266
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    # invokes: Landroidx/datastore/preferences/PreferencesProto$Value;->setStringSet(Landroidx/datastore/preferences/PreferencesProto$StringSet;)V
    invoke-static {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1600(Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/PreferencesProto$StringSet;)V

    return-object p0
.end method
