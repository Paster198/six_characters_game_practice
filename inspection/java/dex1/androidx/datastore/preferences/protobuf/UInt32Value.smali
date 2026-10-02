.class public final Landroidx/datastore/preferences/protobuf/UInt32Value;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "UInt32Value.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/UInt32ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/UInt32Value$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/protobuf/UInt32Value;",
        "Landroidx/datastore/preferences/protobuf/UInt32Value$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/UInt32ValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/UInt32Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private value_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 224
    new-instance v0, Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/UInt32Value;-><init>()V

    .line 227
    sput-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    .line 228
    const-class v1, Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 1

    .line 11
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/datastore/preferences/protobuf/UInt32Value;I)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/UInt32Value;->setValue(I)V

    return-void
.end method

.method static synthetic access$200(Landroidx/datastore/preferences/protobuf/UInt32Value;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/UInt32Value;->clearValue()V

    return-void
.end method

.method private clearValue()V
    .registers 2

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Landroidx/datastore/preferences/protobuf/UInt32Value;->value_:I

    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 1

    .line 233
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object v0
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/UInt32Value$Builder;
    .registers 1

    .line 121
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/UInt32Value;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/UInt32Value$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/protobuf/UInt32Value;)Landroidx/datastore/preferences/protobuf/UInt32Value$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 124
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/UInt32Value;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt32Value$Builder;

    return-object p0
.end method

.method public static of(I)Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 237
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UInt32Value;->newBuilder()Landroidx/datastore/preferences/protobuf/UInt32Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/UInt32Value$Builder;->setValue(I)Landroidx/datastore/preferences/protobuf/UInt32Value$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/UInt32Value$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/UInt32Value;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/UInt32Value;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 60
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 67
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 47
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 54
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 72
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/UInt32Value;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 79
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object p0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/UInt32Value;",
            ">;"
        }
    .end annotation

    .line 243
    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/UInt32Value;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValue(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 34
    iput p1, p0, Landroidx/datastore/preferences/protobuf/UInt32Value;->value_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 176
    sget-object p2, Landroidx/datastore/preferences/protobuf/UInt32Value$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_52

    .line 217
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_12
    return-object p2

    :pswitch_13
    const/4 p1, 0x1

    .line 211
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 196
    :pswitch_19
    sget-object p1, Landroidx/datastore/preferences/protobuf/UInt32Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p1, :cond_32

    .line 198
    const-class p2, Landroidx/datastore/preferences/protobuf/UInt32Value;

    monitor-enter p2

    .line 199
    :try_start_20
    sget-object p1, Landroidx/datastore/preferences/protobuf/UInt32Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p1, :cond_2d

    .line 201
    new-instance p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 204
    sput-object p1, Landroidx/datastore/preferences/protobuf/UInt32Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 206
    :cond_2d
    monitor-exit p2

    return-object p1

    :catchall_2f
    move-exception p1

    monitor-exit p2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    return-object p1

    .line 193
    :pswitch_33
    sget-object p1, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    return-object p1

    .line 184
    :pswitch_36
    const-string p1, "value_"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 187
    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b"

    .line 189
    sget-object p3, Landroidx/datastore/preferences/protobuf/UInt32Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/UInt32Value;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 181
    :pswitch_45
    new-instance p1, Landroidx/datastore/preferences/protobuf/UInt32Value$Builder;

    invoke-direct {p1, p2}, Landroidx/datastore/preferences/protobuf/UInt32Value$Builder;-><init>(Landroidx/datastore/preferences/protobuf/UInt32Value$1;)V

    return-object p1

    .line 178
    :pswitch_4b
    new-instance p1, Landroidx/datastore/preferences/protobuf/UInt32Value;

    invoke-direct {p1}, Landroidx/datastore/preferences/protobuf/UInt32Value;-><init>()V

    return-object p1

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_45
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getValue()I
    .registers 2

    .line 26
    iget v0, p0, Landroidx/datastore/preferences/protobuf/UInt32Value;->value_:I

    return v0
.end method
