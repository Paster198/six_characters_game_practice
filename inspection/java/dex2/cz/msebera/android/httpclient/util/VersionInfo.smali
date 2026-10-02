.class public Lcz/msebera/android/httpclient/util/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# static fields
.field public static final PROPERTY_MODULE:Ljava/lang/String; = "info.module"

.field public static final PROPERTY_RELEASE:Ljava/lang/String; = "info.release"

.field public static final PROPERTY_TIMESTAMP:Ljava/lang/String; = "info.timestamp"

.field public static final UNAVAILABLE:Ljava/lang/String; = "UNAVAILABLE"

.field public static final VERSION_PROPERTY_FILE:Ljava/lang/String; = "version.properties"


# instance fields
.field private final infoClassloader:Ljava/lang/String;

.field private final infoModule:Ljava/lang/String;

.field private final infoPackage:Ljava/lang/String;

.field private final infoRelease:Ljava/lang/String;

.field private final infoTimestamp:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "Package identifier"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iput-object p1, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoPackage:Ljava/lang/String;

    .line 93
    const-string p1, "UNAVAILABLE"

    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    move-object p2, p1

    :goto_10
    iput-object p2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoModule:Ljava/lang/String;

    if-eqz p3, :cond_15

    goto :goto_16

    :cond_15
    move-object p3, p1

    .line 94
    :goto_16
    iput-object p3, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoRelease:Ljava/lang/String;

    if-eqz p4, :cond_1b

    goto :goto_1c

    :cond_1b
    move-object p4, p1

    .line 95
    :goto_1c
    iput-object p4, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    if-eqz p5, :cond_21

    goto :goto_22

    :cond_21
    move-object p5, p1

    .line 96
    :goto_22
    iput-object p5, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    return-void
.end method

.method protected static fromMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/ClassLoader;)Lcz/msebera/android/httpclient/util/VersionInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcz/msebera/android/httpclient/util/VersionInfo;"
        }
    .end annotation

    .line 269
    const-string v0, "Package identifier"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_51

    .line 275
    const-string v1, "info.module"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_1a

    move-object v1, v0

    .line 280
    :cond_1a
    const-string v3, "info.release"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_33

    .line 281
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v2, :cond_32

    const-string v4, "${pom.version}"

    .line 282
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    :cond_32
    move-object v3, v0

    .line 286
    :cond_33
    const-string v4, "info.timestamp"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4d

    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v2, :cond_4b

    const-string v2, "${mvn.timestamp}"

    .line 289
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    :cond_4b
    move-object v8, v0

    goto :goto_4e

    :cond_4d
    move-object v8, p1

    :goto_4e
    move-object v6, v1

    move-object v7, v3

    goto :goto_54

    :cond_51
    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    :goto_54
    if-eqz p2, :cond_5a

    .line 297
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5a
    move-object v9, v0

    .line 300
    new-instance v4, Lcz/msebera/android/httpclient/util/VersionInfo;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcz/msebera/android/httpclient/util/VersionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static getUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 319
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcz/msebera/android/httpclient/util/VersionInfo;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 320
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/VersionInfo;->getRelease()Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    :cond_f
    const-string p1, "UNAVAILABLE"

    .line 321
    :goto_11
    const-string p2, "java.version"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 323
    const-string v0, "%s/%s (Java/%s)"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcz/msebera/android/httpclient/util/VersionInfo;
    .registers 7

    const-string v0, "/version.properties"

    .line 226
    const-string v1, "Package identifier"

    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_a

    goto :goto_12

    .line 227
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :goto_12
    const/4 v1, 0x0

    .line 233
    :try_start_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    .line 234
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_30} :catch_43

    if-eqz v0, :cond_43

    .line 237
    :try_start_32
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 238
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3e

    .line 241
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_44

    goto :goto_44

    :catchall_3e
    move-exception v2

    :try_start_3f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_43

    :catch_43
    :cond_43
    move-object v2, v1

    :catch_44
    :goto_44
    if-eqz v2, :cond_4a

    .line 250
    invoke-static {p0, v2, p1}, Lcz/msebera/android/httpclient/util/VersionInfo;->fromMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/ClassLoader;)Lcz/msebera/android/httpclient/util/VersionInfo;

    move-result-object v1

    :cond_4a
    return-object v1
.end method

.method public static loadVersionInfo([Ljava/lang/String;Ljava/lang/ClassLoader;)[Lcz/msebera/android/httpclient/util/VersionInfo;
    .registers 6

    .line 199
    const-string v0, "Package identifier array"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1d

    aget-object v3, p0, v2

    .line 202
    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcz/msebera/android/httpclient/util/VersionInfo;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 204
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 208
    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcz/msebera/android/httpclient/util/VersionInfo;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcz/msebera/android/httpclient/util/VersionInfo;

    return-object p0
.end method


# virtual methods
.method public final getClassloader()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    return-object v0
.end method

.method public final getModule()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoModule:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackage()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getRelease()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoRelease:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoPackage:Ljava/lang/String;

    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoModule:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoRelease:Ljava/lang/String;

    .line 162
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    .line 163
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    const-string v1, "VersionInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoPackage:Ljava/lang/String;

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoModule:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoRelease:Ljava/lang/String;

    const-string v3, "UNAVAILABLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoRelease:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_53
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_64
    const/16 v1, 0x29

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    const/16 v1, 0x40

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
