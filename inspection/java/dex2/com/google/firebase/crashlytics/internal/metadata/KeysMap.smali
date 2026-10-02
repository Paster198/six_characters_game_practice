.class Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;
.super Ljava/lang/Object;
.source "KeysMap.java"


# instance fields
.field private final keys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxEntries:I

.field private final maxEntryLength:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->keys:Ljava/util/Map;

    .line 36
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->maxEntries:I

    .line 37
    iput p2, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->maxEntryLength:I

    return-void
.end method

.method private sanitizeKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_9

    .line 94
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->maxEntryLength:I

    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->sanitizeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 92
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Custom attribute key must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static sanitizeString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_11

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_11

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_11
    return-object p0
.end method


# virtual methods
.method public declared-synchronized getKeys()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 43
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->keys:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public declared-synchronized setKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "Ignored entry \""

    monitor-enter p0

    .line 47
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->sanitizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->keys:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget v3, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->maxEntries:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_3d

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->keys:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_3d

    .line 57
    :cond_1b
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" when adding custom keys. Maximum allowable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->maxEntries:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_5f

    .line 63
    monitor-exit p0

    return v4

    .line 50
    :cond_3d
    :goto_3d
    :try_start_3d
    iget p1, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->maxEntryLength:I

    invoke-static {p2, p1}, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->sanitizeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->keys:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->nullSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_5f

    if-eqz v0, :cond_53

    .line 52
    monitor-exit p0

    return v4

    .line 54
    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->keys:Ljava/util/Map;

    if-nez p2, :cond_59

    const-string p1, ""

    :cond_59
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_5f

    .line 55
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method public declared-synchronized setKeys(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->sanitizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->keys:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget v4, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->maxEntries:I

    if-lt v3, v4, :cond_36

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->keys:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_36

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 72
    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->keys:Ljava/util/Map;

    if-nez v1, :cond_43

    const-string v1, ""

    goto :goto_49

    :cond_43
    iget v4, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->maxEntryLength:I

    invoke-static {v1, v4}, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->sanitizeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_49
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_4d
    if-lez v0, :cond_75

    .line 79
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries when adding custom keys. Maximum allowable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/crashlytics/internal/metadata/KeysMap;->maxEntries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_77

    .line 87
    :cond_75
    monitor-exit p0

    return-void

    :catchall_77
    move-exception p1

    :try_start_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw p1
.end method
