.class Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;
.super Ljava/lang/Object;
.source "FileBackedNativeSessionFile.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;


# instance fields
.field private final dataTransportFilename:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private final reportsEndpointFilename:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->dataTransportFilename:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->reportsEndpointFilename:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->file:Ljava/io/File;

    return-void
.end method

.method private asGzippedBytes()[B
    .registers 8

    const/16 v0, 0x2000

    .line 79
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 80
    :try_start_5
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->getStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_5f

    .line 81
    :try_start_9
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_53

    .line 82
    :try_start_e
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-nez v2, :cond_21

    .line 92
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_49

    :try_start_18
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_53

    if-eqz v2, :cond_20

    :try_start_1d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_5f

    :cond_20
    return-object v1

    .line 87
    :cond_21
    :goto_21
    :try_start_21
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2c

    const/4 v6, 0x0

    .line 88
    invoke-virtual {v4, v0, v6, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_21

    .line 90
    :cond_2c
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 91
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_3f

    .line 92
    :try_start_33
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_49

    :try_start_36
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_53

    if-eqz v2, :cond_3e

    :try_start_3b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_5f

    :cond_3e
    return-object v0

    :catchall_3f
    move-exception v0

    .line 80
    :try_start_40
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v4

    :try_start_45
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_48
    throw v0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    :try_start_4a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v3

    :try_start_4f
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_52
    throw v0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v0

    if-eqz v2, :cond_5e

    :try_start_56
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception v2

    :try_start_5b
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    throw v0
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_5f

    :catch_5f
    return-object v1
.end method


# virtual methods
.method public asFilePayload()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;
    .registers 3

    .line 68
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->asGzippedBytes()[B

    move-result-object v0

    if-eqz v0, :cond_19

    .line 70
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;->builder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->setContents([B)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->dataTransportFilename:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->setFilename(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReportsEndpointFilename()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->reportsEndpointFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1a

    .line 59
    :cond_12
    :try_start_12
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/FileBackedNativeSessionFile;->file:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    :cond_1a
    :goto_1a
    return-object v1
.end method
