.class public abstract Lcom/google/android/datatransport/cct/internal/LogResponse;
.super Ljava/lang/Object;
.source "LogResponse.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LogResponseInternal"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(J)Lcom/google/android/datatransport/cct/internal/LogResponse;
    .registers 3

    .line 32
    new-instance v0, Lcom/google/android/datatransport/cct/internal/AutoValue_LogResponse;

    invoke-direct {v0, p0, p1}, Lcom/google/android/datatransport/cct/internal/AutoValue_LogResponse;-><init>(J)V

    return-object v0
.end method

.method public static fromJson(Ljava/io/Reader;)Lcom/google/android/datatransport/cct/internal/LogResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Landroid/util/JsonReader;

    invoke-direct {v0, p0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 39
    :try_start_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 40
    :goto_8
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_42

    .line 41
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p0

    .line 42
    const-string v1, "nextRequestWaitMillis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    .line 43
    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne p0, v1, :cond_32

    .line 44
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/datatransport/cct/internal/LogResponse;->create(J)Lcom/google/android/datatransport/cct/internal/LogResponse;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_4a

    .line 53
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    return-object p0

    .line 46
    :cond_32
    :try_start_32
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/datatransport/cct/internal/LogResponse;->create(J)Lcom/google/android/datatransport/cct/internal/LogResponse;

    move-result-object p0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_4a

    .line 53
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    return-object p0

    .line 49
    :cond_3e
    :try_start_3e
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    .line 51
    :cond_42
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Response is missing nextRequestWaitMillis field."

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p0

    .line 53
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 54
    throw p0
.end method


# virtual methods
.method public abstract getNextRequestWaitMillis()J
.end method
