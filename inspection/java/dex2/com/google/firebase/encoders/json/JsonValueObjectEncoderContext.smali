.class final Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
.super Ljava/lang/Object;
.source "JsonValueObjectEncoderContext.java"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoderContext;
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field private active:Z

.field private childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

.field private final fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreNullValues:Z

.field private final jsonWriter:Landroid/util/JsonWriter;

.field private final objectEncoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final valueEncoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->active:Z

    .line 57
    iget-object v0, p1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    .line 58
    iget-object v0, p1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->objectEncoders:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->objectEncoders:Ljava/util/Map;

    .line 59
    iget-object v0, p1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->valueEncoders:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->valueEncoders:Ljava/util/Map;

    .line 60
    iget-object v0, p1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 61
    iget-boolean p1, p1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->ignoreNullValues:Z

    iput-boolean p1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->ignoreNullValues:Z

    return-void
.end method

.method constructor <init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "*>;>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->active:Z

    .line 49
    new-instance v0, Landroid/util/JsonWriter;

    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    .line 50
    iput-object p2, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->objectEncoders:Ljava/util/Map;

    .line 51
    iput-object p3, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->valueEncoders:Ljava/util/Map;

    .line 52
    iput-object p4, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 53
    iput-boolean p5, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->ignoreNullValues:Z

    return-void
.end method

.method private cannotBeInline(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_1f

    .line 341
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1f

    instance-of v0, p1, Ljava/util/Collection;

    if-nez v0, :cond_1f

    instance-of v0, p1, Ljava/util/Date;

    if-nez v0, :cond_1f

    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_1f

    instance-of p1, p1, Ljava/lang/Number;

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    return p1

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    return p1
.end method

.method private internalAdd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/firebase/encoders/EncodingException;
        }
    .end annotation

    .line 368
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 369
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    if-nez p2, :cond_10

    .line 371
    iget-object p1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-object p0

    :cond_10
    const/4 p1, 0x0

    .line 374
    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method private internalAddIgnoreNullValues(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/firebase/encoders/EncodingException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p0

    .line 382
    :cond_3
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 383
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 p1, 0x0

    .line 384
    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method private maybeUnNest()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget-boolean v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->active:Z

    if-eqz v0, :cond_19

    .line 358
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    if-eqz v0, :cond_18

    .line 359
    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 360
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->active:Z

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 362
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_18
    return-void

    .line 355
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent context used since this context was created. Cannot use this context anymore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lcom/google/firebase/encoders/FieldDescriptor;D)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;D)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;F)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    float-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;D)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;I)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;I)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;J)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;J)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;D)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;D)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;I)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;I)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;J)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;J)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(D)Lcom/google/firebase/encoders/ValueEncoderContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(D)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(F)Lcom/google/firebase/encoders/ValueEncoderContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(F)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(I)Lcom/google/firebase/encoders/ValueEncoderContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(I)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(J)Lcom/google/firebase/encoders/ValueEncoderContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(J)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([B)Lcom/google/firebase/encoders/ValueEncoderContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add([B)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(D)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 186
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public add(F)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 178
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public add(I)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 194
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public add(J)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 202
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    return-object p0
.end method

.method add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_20

    .line 228
    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->cannotBeInline(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 229
    new-instance p2, Lcom/google/firebase/encoders/EncodingException;

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    .line 230
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_12
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s cannot be encoded inline"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_20
    if-nez p1, :cond_28

    .line 233
    iget-object p1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-object p0

    .line 236
    :cond_28
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_34

    .line 237
    iget-object p2, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    return-object p0

    .line 241
    :cond_34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c0

    .line 244
    instance-of p2, p1, [B

    if-eqz p2, :cond_4a

    .line 245
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add([B)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1

    .line 248
    :cond_4a
    iget-object p2, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 249
    instance-of p2, p1, [I

    if-eqz p2, :cond_63

    .line 250
    check-cast p1, [I

    array-length p2, p1

    :goto_56
    if-ge v1, p2, :cond_ba

    aget v0, p1, v1

    .line 251
    iget-object v2, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 253
    :cond_63
    instance-of p2, p1, [J

    if-eqz p2, :cond_74

    .line 254
    check-cast p1, [J

    array-length p2, p1

    :goto_6a
    if-ge v1, p2, :cond_ba

    aget-wide v2, p1, v1

    .line 255
    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(J)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 257
    :cond_74
    instance-of p2, p1, [D

    if-eqz p2, :cond_87

    .line 258
    check-cast p1, [D

    array-length p2, p1

    :goto_7b
    if-ge v1, p2, :cond_ba

    aget-wide v2, p1, v1

    .line 259
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 261
    :cond_87
    instance-of p2, p1, [Z

    if-eqz p2, :cond_9a

    .line 262
    check-cast p1, [Z

    array-length p2, p1

    :goto_8e
    if-ge v1, p2, :cond_ba

    aget-boolean v0, p1, v1

    .line 263
    iget-object v2, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    .line 265
    :cond_9a
    instance-of p2, p1, [Ljava/lang/Number;

    if-eqz p2, :cond_ac

    .line 266
    check-cast p1, [Ljava/lang/Number;

    array-length p2, p1

    move v0, v1

    :goto_a2
    if-ge v0, p2, :cond_ba

    aget-object v2, p1, v0

    .line 267
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    .line 271
    :cond_ac
    check-cast p1, [Ljava/lang/Object;

    array-length p2, p1

    move v0, v1

    :goto_b0
    if-ge v0, p2, :cond_ba

    aget-object v2, p1, v0

    .line 272
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b0

    .line 275
    :cond_ba
    iget-object p1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object p0

    .line 278
    :cond_c0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_e3

    .line 279
    check-cast p1, Ljava/util/Collection;

    .line 280
    iget-object p2, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 281
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_cf
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_dd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 282
    invoke-virtual {p0, p2, v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    goto :goto_cf

    .line 284
    :cond_dd
    iget-object p1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object p0

    .line 287
    :cond_e3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_12c

    .line 289
    check-cast p1, Ljava/util/Map;

    .line 290
    iget-object p2, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 291
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_126

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 292
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 294
    :try_start_106
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    :try_end_110
    .catch Ljava/lang/ClassCastException; {:try_start_106 .. :try_end_110} :catch_111

    goto :goto_f6

    :catch_111
    move-exception p1

    .line 296
    new-instance p2, Lcom/google/firebase/encoders/EncodingException;

    .line 299
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 297
    const-string v1, "Only String keys are currently supported in maps, got %s of type %s instead."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 303
    :cond_126
    iget-object p1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-object p0

    .line 307
    :cond_12c
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->objectEncoders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/ObjectEncoder;

    if-eqz v0, :cond_13f

    .line 309
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->doEncode(Lcom/google/firebase/encoders/ObjectEncoder;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1

    .line 312
    :cond_13f
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->valueEncoders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/ValueEncoder;

    if-eqz v0, :cond_151

    .line 314
    invoke-interface {v0, p1, p0}, Lcom/google/firebase/encoders/ValueEncoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 319
    :cond_151
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_16d

    .line 320
    instance-of p2, p1, Lcom/google/firebase/encoders/json/NumberedEnum;

    if-eqz p2, :cond_163

    .line 321
    check-cast p1, Lcom/google/firebase/encoders/json/NumberedEnum;

    invoke-interface {p1}, Lcom/google/firebase/encoders/json/NumberedEnum;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(I)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    return-object p0

    .line 323
    :cond_163
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    return-object p0

    .line 328
    :cond_16d
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->doEncode(Lcom/google/firebase/encoders/ObjectEncoder;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 170
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public add(Ljava/lang/String;D)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 78
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 79
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(D)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;I)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 86
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 87
    invoke-virtual {p0, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(I)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;J)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 94
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 95
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(J)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-boolean v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->ignoreNullValues:Z

    if-eqz v0, :cond_9

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->internalAddIgnoreNullValues(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1

    .line 71
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->internalAdd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 102
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 103
    invoke-virtual {p0, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 210
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public add([B)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    if-nez p1, :cond_b

    .line 219
    iget-object p1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-object p0

    .line 221
    :cond_b
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-object p0
.end method

.method close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 350
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V

    return-void
.end method

.method doEncode(Lcom/google/firebase/encoders/ObjectEncoder;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_7

    .line 333
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 334
    :cond_7
    invoke-interface {p1, p2, p0}, Lcom/google/firebase/encoders/ObjectEncoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p3, :cond_11

    .line 335
    iget-object p1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_11
    return-object p0
.end method

.method public inline(Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public nested(Lcom/google/firebase/encoders/FieldDescriptor;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->nested(Ljava/lang/String;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public nested(Ljava/lang/String;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 154
    new-instance v0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    invoke-direct {v0, p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;-><init>(Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;)V

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 155
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 156
    iget-object p1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 157
    iget-object p1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    return-object p1
.end method
