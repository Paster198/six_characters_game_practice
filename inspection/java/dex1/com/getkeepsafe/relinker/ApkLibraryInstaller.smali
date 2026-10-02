.class public Lcom/getkeepsafe/relinker/ApkLibraryInstaller;
.super Ljava/lang/Object;
.source "ApkLibraryInstaller.java"

# interfaces
.implements Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;
    }
.end annotation


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x1000

.field private static final MAX_TRIES:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "closeable"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 259
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 239
    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 241
    :goto_6
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    .line 248
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-wide v1

    :cond_11
    const/4 v4, 0x0

    .line 245
    invoke-virtual {p2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_6
.end method

.method private findAPKWithLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinkerInstance;)Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "abis",
            "mappedLibraryName",
            "instance"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 72
    invoke-direct/range {p0 .. p1}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->sourceDirectories(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    const/4 v5, 0x0

    if-ge v4, v2, :cond_80

    aget-object v6, v1, v4

    move v7, v3

    :goto_f
    add-int/lit8 v8, v7, 0x1

    const/4 v9, 0x5

    if-ge v7, v9, :cond_23

    .line 77
    :try_start_14
    new-instance v7, Ljava/util/zip/ZipFile;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-direct {v7, v10, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_21

    move-object v5, v7

    goto :goto_23

    :catch_21
    move v7, v8

    goto :goto_f

    :cond_23
    :goto_23
    if-nez v5, :cond_2a

    move-object/from16 v12, p3

    move-object/from16 v15, p4

    goto :goto_7d

    :cond_2a
    move v7, v3

    :goto_2b
    add-int/lit8 v8, v7, 0x1

    if-ge v7, v9, :cond_76

    .line 92
    array-length v7, v0

    move v10, v3

    :goto_31
    if-ge v10, v7, :cond_70

    aget-object v11, v0, v10

    .line 93
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "lib"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-char v12, Ljava/io/File;->separatorChar:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v12, p3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 96
    const-string v13, "Looking for %s in APK %s..."

    filled-new-array {v11, v6}, [Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v15, p4

    invoke-virtual {v15, v13, v14}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v5, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11

    if-eqz v11, :cond_6d

    .line 101
    new-instance v0, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;

    invoke-direct {v0, v5, v11}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-object v0

    :cond_6d
    add-int/lit8 v10, v10, 0x1

    goto :goto_31

    :cond_70
    move-object/from16 v12, p3

    move-object/from16 v15, p4

    move v7, v8

    goto :goto_2b

    :cond_76
    move-object/from16 v12, p3

    move-object/from16 v15, p4

    .line 107
    :try_start_7a
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7d

    :catch_7d
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_80
    return-object v5
.end method

.method private getSupportedABIs(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "mappedLibraryName"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lib"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "([^\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 121
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 124
    invoke-direct {p0, p1}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->sourceDirectories(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v1, :cond_74

    aget-object v3, p1, v2

    .line 126
    :try_start_40
    new-instance v4, Ljava/util/zip/ZipFile;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v4, v5, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4b} :catch_71

    .line 131
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 132
    :cond_4f
    :goto_4f
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 133
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 134
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 135
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 136
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :catch_71
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 141
    :cond_74
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 142
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private sourceDirectories(Landroid/content/Context;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 45
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_22

    .line 48
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 50
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p1, p1

    invoke-static {v3, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 53
    :cond_22
    new-array v0, v2, [Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object p1, v0, v1

    return-object v0
.end method


# virtual methods
.method public installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/getkeepsafe/relinker/ReLinkerInstance;)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "abis",
            "mappedLibraryName",
            "destination",
            "instance"
        }
    .end annotation

    const/4 v0, 0x0

    .line 162
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->findAPKWithLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinkerInstance;)Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_ae

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_96

    move p1, v2

    :goto_a
    add-int/lit8 p2, p1, 0x1

    const/4 v4, 0x5

    if-ge p1, v4, :cond_89

    .line 180
    :try_start_f
    const-string p1, "Found %s! Extracting..."

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p5, p1, v4}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_9b

    .line 182
    :try_start_18
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_26

    invoke-virtual {p4}, Ljava/io/File;->createNewFile()Z

    move-result p1
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_22} :catch_87
    .catchall {:try_start_18 .. :try_end_22} :catchall_9b

    if-nez p1, :cond_26

    goto/16 :goto_87

    .line 193
    :cond_26
    :try_start_26
    iget-object p1, v1, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v4, v1, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {p1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2e} :catch_81
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_7b
    .catchall {:try_start_26 .. :try_end_2e} :catchall_72

    .line 194
    :try_start_2e
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_33} :catch_70
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_6e
    .catchall {:try_start_2e .. :try_end_33} :catchall_6a

    .line 195
    :try_start_33
    invoke-direct {p0, p1, v4}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v5

    .line 196
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 197
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v7
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_42} :catch_83
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_42} :catch_7d
    .catchall {:try_start_33 .. :try_end_42} :catchall_68

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4d

    .line 208
    :try_start_46
    invoke-direct {p0, p1}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 209
    :goto_49
    invoke-direct {p0, v4}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_87

    .line 208
    :cond_4d
    invoke-direct {p0, p1}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 209
    invoke-direct {p0, v4}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 213
    invoke-virtual {p4, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 214
    invoke-virtual {p4, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 215
    invoke-virtual {p4, v3}, Ljava/io/File;->setWritable(Z)Z
    :try_end_5c
    .catchall {:try_start_46 .. :try_end_5c} :catchall_9b

    if-eqz v1, :cond_95

    .line 222
    :try_start_5e
    iget-object p1, v1, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p1, :cond_95

    .line 223
    :goto_62
    iget-object p1, v1, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_67} :catch_95

    goto :goto_95

    :catchall_68
    move-exception p2

    goto :goto_6c

    :catchall_6a
    move-exception p2

    move-object v4, v0

    :goto_6c
    move-object v0, p1

    goto :goto_74

    :catch_6e
    move-object v4, v0

    goto :goto_7d

    :catch_70
    move-object v4, v0

    goto :goto_83

    :catchall_72
    move-exception p2

    move-object v4, v0

    .line 208
    :goto_74
    :try_start_74
    invoke-direct {p0, v0}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 209
    invoke-direct {p0, v4}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 210
    throw p2

    :catch_7b
    move-object p1, v0

    move-object v4, p1

    .line 208
    :catch_7d
    :goto_7d
    invoke-direct {p0, p1}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_49

    :catch_81
    move-object p1, v0

    move-object v4, p1

    :catch_83
    :goto_83
    invoke-direct {p0, p1}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_49

    :catch_87
    :goto_87
    move p1, p2

    goto :goto_a

    .line 219
    :cond_89
    const-string p1, "FATAL! Couldn\'t extract the library from the APK!"

    invoke-virtual {p5, p1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_74 .. :try_end_8e} :catchall_9b

    if-eqz v1, :cond_95

    .line 222
    :try_start_90
    iget-object p1, v1, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_92} :catch_95

    if-eqz p1, :cond_95

    goto :goto_62

    :catch_95
    :cond_95
    :goto_95
    return-void

    .line 168
    :cond_96
    :try_start_96
    invoke-direct {p0, p1, p3}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->getSupportedABIs(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9a} :catch_9e
    .catchall {:try_start_96 .. :try_end_9a} :catchall_9b

    goto :goto_a8

    :catchall_9b
    move-exception p1

    move-object v0, v1

    goto :goto_af

    :catch_9e
    move-exception p1

    .line 172
    :try_start_9f
    new-array p4, v3, [Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v2

    move-object p1, p4

    .line 175
    :goto_a8
    new-instance p4, Lcom/getkeepsafe/relinker/MissingLibraryException;

    invoke-direct {p4, p3, p2, p1}, Lcom/getkeepsafe/relinker/MissingLibraryException;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    throw p4
    :try_end_ae
    .catchall {:try_start_9f .. :try_end_ae} :catchall_9b

    :catchall_ae
    move-exception p1

    :goto_af
    if-eqz v0, :cond_ba

    .line 222
    :try_start_b1
    iget-object p2, v0, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p2, :cond_ba

    .line 223
    iget-object p2, v0, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_ba} :catch_ba

    .line 226
    :catch_ba
    :cond_ba
    throw p1
.end method
