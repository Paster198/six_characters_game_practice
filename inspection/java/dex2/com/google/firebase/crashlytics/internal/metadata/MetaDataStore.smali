.class Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;
.super Ljava/lang/Object;
.source "MetaDataStore.java"


# static fields
.field private static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/persistence/FileStore;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    return-void
.end method

.method private static jsonToKeysData(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 220
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 222
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 223
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    invoke-static {v0, v2}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->valueOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_22
    return-object p0
.end method

.method private static jsonToRolloutsState(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/metadata/RolloutAssignment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 235
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 236
    const-string p0, "rolloutsState"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 239
    :goto_11
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 240
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 243
    :try_start_1b
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/metadata/RolloutAssignment;->create(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/metadata/RolloutAssignment;

    move-result-object v3

    .line 244
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_3a

    :catch_23
    move-exception v3

    .line 246
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed de-serializing rollouts state. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_3d
    return-object v0
.end method

.method private jsonToUserId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 207
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 208
    const-string p1, "userId"

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->valueOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static keysDataToJson(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 231
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static rolloutsStateToJson(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/metadata/RolloutAssignment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 254
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 255
    :goto_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 256
    sget-object v3, Lcom/google/firebase/crashlytics/internal/metadata/RolloutAssignment;->ROLLOUT_ASSIGNMENT_JSON_ENCODER:Lcom/google/firebase/encoders/DataEncoder;

    .line 257
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/firebase/encoders/DataEncoder;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 259
    :try_start_1b
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_23} :catch_24

    goto :goto_2e

    :catch_24
    move-exception v3

    .line 261
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v4

    const-string v5, "Exception parsing rollout assignment!"

    invoke-virtual {v4, v5, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 264
    :cond_31
    const-string p0, "rolloutsState"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static safeDeleteCorruptFile(Ljava/io/File;)V
    .registers 4

    .line 274
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 275
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deleted corrupt file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/internal/Logger;->i(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method private static safeDeleteCorruptFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    .line 281
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 282
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Deleted corrupt file: %s\nReason: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/internal/Logger;->i(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method private static userIdToJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 212
    new-instance v0, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore$1;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore$1;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static valueOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 270
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    return-object v1
.end method


# virtual methods
.method public getInternalKeysFileForSession(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    const-string v1, "internal-keys"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/crashlytics/internal/persistence/FileStore;->getSessionFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getKeysFileForSession(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    const-string v1, "keys"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/crashlytics/internal/persistence/FileStore;->getSessionFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getRolloutsStateForSession(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    const-string v1, "rollouts-state"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/crashlytics/internal/persistence/FileStore;->getSessionFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getUserDataFileForSession(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    const-string v1, "user-data"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/crashlytics/internal/persistence/FileStore;->getSessionFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public readKeyData(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->readKeyData(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method readKeyData(Ljava/lang/String;Z)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    const-string v0, "Failed to close user metadata file."

    if-eqz p2, :cond_9

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->getInternalKeysFileForSession(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    goto :goto_d

    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->getKeysFileForSession(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 123
    :goto_d
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1e

    goto :goto_53

    :cond_1e
    const/4 p1, 0x0

    .line 130
    :try_start_1f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_36
    .catchall {:try_start_1f .. :try_end_24} :catchall_32

    .line 131
    :try_start_24
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->jsonToKeysData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2c} :catch_30
    .catchall {:try_start_24 .. :try_end_2c} :catchall_4e

    .line 136
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object p1

    :catch_30
    move-exception p1

    goto :goto_3a

    :catchall_32
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_4f

    :catch_36
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    .line 133
    :goto_3a
    :try_start_3a
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v2

    const-string v3, "Error deserializing user metadata."

    invoke-virtual {v2, v3, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->safeDeleteCorruptFile(Ljava/io/File;)V
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_4e

    .line 136
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :catchall_4e
    move-exception p1

    .line 136
    :goto_4f
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 137
    throw p1

    .line 124
    :cond_53
    :goto_53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The file has a length of zero for session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->safeDeleteCorruptFile(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public readRolloutsState(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/metadata/RolloutAssignment;",
            ">;"
        }
    .end annotation

    .line 142
    const-string v0, "Failed to close rollouts state file."

    .line 0
    const-string v1, "Loaded rollouts state:\n"

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->getRolloutsStateForSession(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    goto :goto_6a

    :cond_19
    const/4 v3, 0x0

    .line 150
    :try_start_1a
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_51
    .catchall {:try_start_1a .. :try_end_1f} :catchall_4f

    .line 151
    :try_start_1f
    invoke-static {v4}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->jsonToRolloutsState(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 152
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\nfor session "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {v5, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_45} :catch_4c
    .catchall {:try_start_1f .. :try_end_45} :catchall_49

    .line 159
    invoke-static {v4, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v3

    :catchall_49
    move-exception p1

    move-object v3, v4

    goto :goto_66

    :catch_4c
    move-exception p1

    move-object v3, v4

    goto :goto_52

    :catchall_4f
    move-exception p1

    goto :goto_66

    :catch_51
    move-exception p1

    .line 156
    :goto_52
    :try_start_52
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v4, "Error deserializing rollouts state."

    invoke-virtual {v1, v4, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->safeDeleteCorruptFile(Ljava/io/File;)V
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_4f

    .line 159
    invoke-static {v3, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 159
    :goto_66
    invoke-static {v3, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 160
    throw p1

    .line 144
    :cond_6a
    :goto_6a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The file has a length of zero for session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->safeDeleteCorruptFile(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public readUserId(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 73
    const-string v0, "Failed to close user metadata file."

    .line 0
    const-string v1, "Loaded userId "

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->getUserDataFileForSession(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_65

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_1a

    goto :goto_65

    .line 82
    :cond_1a
    :try_start_1a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_4d
    .catchall {:try_start_1a .. :try_end_1f} :catchall_4b

    .line 83
    :try_start_1f
    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->jsonToUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " for session "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_45} :catch_49
    .catchall {:try_start_1f .. :try_end_45} :catchall_5f

    .line 90
    invoke-static {v3, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v5

    :catch_49
    move-exception p1

    goto :goto_4f

    :catchall_4b
    move-exception p1

    goto :goto_61

    :catch_4d
    move-exception p1

    move-object v3, v4

    .line 87
    :goto_4f
    :try_start_4f
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v5, "Error deserializing user metadata."

    invoke-virtual {v1, v5, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->safeDeleteCorruptFile(Ljava/io/File;)V
    :try_end_5b
    .catchall {:try_start_4f .. :try_end_5b} :catchall_5f

    .line 90
    invoke-static {v3, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v4

    :catchall_5f
    move-exception p1

    move-object v4, v3

    :goto_61
    invoke-static {v4, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 91
    throw p1

    .line 75
    :cond_65
    :goto_65
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No userId set for session "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 76
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->safeDeleteCorruptFile(Ljava/io/File;)V

    return-object v4
.end method

.method public writeKeyData(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->writeKeyData(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public writeKeyData(Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 101
    const-string v0, "Failed to close key/value metadata file."

    if-eqz p3, :cond_9

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->getInternalKeysFileForSession(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_d

    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->getKeysFileForSession(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    :goto_d
    const/4 p3, 0x0

    .line 104
    :try_start_e
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->keysDataToJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 105
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_35
    .catchall {:try_start_e .. :try_end_23} :catchall_33

    .line 106
    :try_start_23
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_30
    .catchall {:try_start_23 .. :try_end_29} :catchall_2d

    .line 112
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_2d
    move-exception p1

    move-object p3, v1

    goto :goto_46

    :catch_30
    move-exception p2

    move-object p3, v1

    goto :goto_36

    :catchall_33
    move-exception p1

    goto :goto_46

    :catch_35
    move-exception p2

    .line 109
    :goto_36
    :try_start_36
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Error serializing key/value metadata."

    invoke-virtual {v1, v2, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->safeDeleteCorruptFile(Ljava/io/File;)V
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_33

    .line 112
    invoke-static {p3, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :goto_46
    invoke-static {p3, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 113
    throw p1
.end method

.method public writeRolloutState(Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/metadata/RolloutAssignment;",
            ">;)V"
        }
    .end annotation

    .line 165
    const-string v0, "Failed to close rollouts state file."

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->getRolloutsStateForSession(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 166
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Rollout state is empty for session: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->safeDeleteCorruptFile(Ljava/io/File;Ljava/lang/String;)V

    return-void

    :cond_1f
    const/4 p1, 0x0

    .line 173
    :try_start_20
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->rolloutsStateToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 174
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_35} :catch_45
    .catchall {:try_start_20 .. :try_end_35} :catchall_41

    .line 175
    :try_start_35
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_3f
    .catchall {:try_start_35 .. :try_end_3b} :catchall_58

    .line 181
    invoke-static {v2, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catch_3f
    move-exception p1

    goto :goto_48

    :catchall_41
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_59

    :catch_45
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    .line 178
    :goto_48
    :try_start_48
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    const-string v3, "Error serializing rollouts state."

    invoke-virtual {p2, v3, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->safeDeleteCorruptFile(Ljava/io/File;)V
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_58

    .line 181
    invoke-static {v2, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_58
    move-exception p1

    :goto_59
    invoke-static {v2, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 182
    throw p1
.end method

.method public writeUserData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 57
    const-string v0, "Failed to close user metadata file."

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->getUserDataFileForSession(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    .line 60
    :try_start_7
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->userIdToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 61
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Lcom/google/firebase/crashlytics/internal/metadata/MetaDataStore;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_2e
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2c

    .line 62
    :try_start_1c
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_29
    .catchall {:try_start_1c .. :try_end_22} :catchall_26

    .line 67
    invoke-static {v2, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :catchall_26
    move-exception p1

    move-object v1, v2

    goto :goto_3c

    :catch_29
    move-exception p1

    move-object v1, v2

    goto :goto_2f

    :catchall_2c
    move-exception p1

    goto :goto_3c

    :catch_2e
    move-exception p1

    .line 65
    :goto_2f
    :try_start_2f
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    const-string v2, "Error serializing user metadata."

    invoke-virtual {p2, v2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_2c

    .line 67
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    :goto_3c
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 68
    throw p1
.end method
