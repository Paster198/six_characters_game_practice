.class final Landroidx/datastore/preferences/protobuf/ExtensionSchemas;
.super Ljava/lang/Object;
.source "ExtensionSchemas.java"


# annotations
.annotation runtime Landroidx/datastore/preferences/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private static final LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/ExtensionSchemas;->LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    .line 13
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ExtensionSchemas;->loadSchemaForFullRuntime()Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/ExtensionSchemas;->FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static full()Landroidx/datastore/preferences/protobuf/ExtensionSchema;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation

    .line 32
    sget-object v0, Landroidx/datastore/preferences/protobuf/ExtensionSchemas;->FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    if-eqz v0, :cond_5

    return-object v0

    .line 33
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static lite()Landroidx/datastore/preferences/protobuf/ExtensionSchema;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation

    .line 28
    sget-object v0, Landroidx/datastore/preferences/protobuf/ExtensionSchemas;->LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    return-object v0
.end method

.method private static loadSchemaForFullRuntime()Landroidx/datastore/preferences/protobuf/ExtensionSchema;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation

    .line 16
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/Protobuf;->assumeLiteRuntime:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 20
    :cond_6
    :try_start_6
    const-string v0, "androidx.datastore.preferences.protobuf.ExtensionSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    .line 21
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ExtensionSchema;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    return-object v1
.end method
