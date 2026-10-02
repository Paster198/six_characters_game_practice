.class public Lcom/getkeepsafe/relinker/ReLinkerInstance;
.super Ljava/lang/Object;
.source "ReLinkerInstance.java"


# static fields
.field private static final LIB_DIR:Ljava/lang/String; = "lib"


# instance fields
.field protected force:Z

.field protected final libraryInstaller:Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;

.field protected final libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

.field protected final loadedLibraries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected logger:Lcom/getkeepsafe/relinker/ReLinker$Logger;

.field protected recursive:Z


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 43
    new-instance v0, Lcom/getkeepsafe/relinker/SystemLibraryLoader;

    invoke-direct {v0}, Lcom/getkeepsafe/relinker/SystemLibraryLoader;-><init>()V

    new-instance v1, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;

    invoke-direct {v1}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;-><init>(Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;)V

    return-void
.end method

.method protected constructor <init>(Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "libraryLoader",
            "libraryInstaller"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/Set;

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_13

    .line 56
    iput-object p1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    .line 57
    iput-object p2, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryInstaller:Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;

    return-void

    .line 53
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass null library installer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass null library loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/getkeepsafe/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibraryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadLibraryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "library",
            "version"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->force:Z

    if-nez v0, :cond_16

    .line 158
    const-string p1, "%s already loaded previously!"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 163
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    invoke-interface {v0, p2}, Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;->loadLibrary(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v0, "%s (%s) was loaded normally!"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_16 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v0

    .line 169
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Loading the library normally failed: %s"

    invoke-virtual {p0, v1, v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    const-string v0, "%s (%s) was not loaded normally, re-linking..."

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 174
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->force:Z

    if-eqz v0, :cond_50

    goto :goto_53

    :cond_50
    move-object v7, p0

    move-object v3, p1

    goto :goto_76

    .line 175
    :cond_53
    :goto_53
    iget-boolean v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->force:Z

    if-eqz v0, :cond_60

    .line 176
    const-string v0, "Forcing a re-link of %s (%s)..."

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_60
    invoke-virtual {p0, p1, p2, p3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->cleanupOldLibFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryInstaller:Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;

    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    invoke-interface {v0}, Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;->supportedAbis()[Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    .line 181
    invoke-interface {v0, p2}, Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, p0

    move-object v3, p1

    .line 180
    invoke-interface/range {v2 .. v7}, Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;->installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/getkeepsafe/relinker/ReLinkerInstance;)V

    .line 185
    :goto_76
    :try_start_76
    iget-boolean p1, v7, Lcom/getkeepsafe/relinker/ReLinkerInstance;->recursive:Z
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_78} :catch_aa

    if-eqz p1, :cond_aa

    const/4 p1, 0x0

    .line 189
    :try_start_7b
    new-instance v1, Lcom/getkeepsafe/relinker/elf/ElfParser;

    invoke-direct {v1, v6}, Lcom/getkeepsafe/relinker/elf/ElfParser;-><init>(Ljava/io/File;)V
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_a3

    .line 190
    :try_start_80
    invoke-virtual {v1}, Lcom/getkeepsafe/relinker/elf/ElfParser;->parseNeededDependencies()Ljava/util/List;

    move-result-object p1
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_a1

    .line 192
    :try_start_84
    invoke-virtual {v1}, Lcom/getkeepsafe/relinker/elf/ElfParser;->close()V

    .line 194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    iget-object v1, v7, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    invoke-interface {v1, v0}, Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;->unmapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8b

    :catchall_a1
    move-exception v0

    goto :goto_a5

    :catchall_a3
    move-exception v0

    move-object v1, p1

    :goto_a5
    move-object p1, v0

    .line 192
    invoke-virtual {v1}, Lcom/getkeepsafe/relinker/elf/ElfParser;->close()V

    .line 193
    throw p1
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_aa} :catch_aa

    .line 204
    :catch_aa
    :cond_aa
    iget-object p1, v7, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;->loadPath(Ljava/lang/String;)V

    .line 205
    iget-object p1, v7, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadedLibraries:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    const-string p1, "%s (%s) was re-linked!"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected cleanupOldLibFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "library",
            "currentVersion"
        }
    .end annotation

    .line 248
    invoke-virtual {p0, p1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 249
    invoke-virtual {p0, p1, p2, p3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 250
    iget-object p3, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    invoke-interface {p3, p2}, Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 251
    new-instance p3, Lcom/getkeepsafe/relinker/ReLinkerInstance$2;

    invoke-direct {p3, p0, p2}, Lcom/getkeepsafe/relinker/ReLinkerInstance$2;-><init>(Lcom/getkeepsafe/relinker/ReLinkerInstance;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_1a

    goto :goto_38

    .line 260
    :cond_1a
    array-length p3, p2

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, p3, :cond_38

    aget-object v1, p2, v0

    .line 261
    iget-boolean v2, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->force:Z

    if-nez v2, :cond_32

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 262
    :cond_32
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_38
    :goto_38
    return-void
.end method

.method public force()Lcom/getkeepsafe/relinker/ReLinkerInstance;
    .registers 2

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->force:Z

    return-object p0
.end method

.method protected getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 215
    const-string v0, "lib"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected getWorkaroundLibFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "library",
            "version"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->libraryLoader:Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;

    invoke-interface {v0, p2}, Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 229
    invoke-static {p3}, Lcom/getkeepsafe/relinker/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 230
    new-instance p3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p3

    .line 233
    :cond_16
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->getWorkaroundLibDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "library"
        }
    .end annotation

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "library",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "library",
            "version"
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    return-void
.end method

.method public loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "library",
            "version",
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_32

    .line 130
    invoke-static {p2}, Lcom/getkeepsafe/relinker/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 134
    const-string v0, "Beginning load of %s..."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p4, :cond_17

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibraryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_17
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;-><init>(Lcom/getkeepsafe/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 131
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given library is either null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public log(Lcom/getkeepsafe/relinker/ReLinker$Logger;)Lcom/getkeepsafe/relinker/ReLinkerInstance;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "logger"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->logger:Lcom/getkeepsafe/relinker/ReLinker$Logger;

    return-object p0
.end method

.method public log(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->logger:Lcom/getkeepsafe/relinker/ReLinker$Logger;

    if-eqz v0, :cond_7

    .line 273
    invoke-interface {v0, p1}, Lcom/getkeepsafe/relinker/ReLinker$Logger;->log(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .line 268
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;)V

    return-void
.end method

.method public recursively()Lcom/getkeepsafe/relinker/ReLinkerInstance;
    .registers 2

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance;->recursive:Z

    return-object p0
.end method
