.class public final Lcom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
        Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;,
        Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;
    }
.end annotation


# static fields
.field public static final LOCAL:I = -0x1

.field public static final NONE:I = 0x0

.field public static final NO_SELECTION:I = 0x0

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final REMOTE:I = 0x1

.field public static final zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final zzb:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field private static zzc:Ljava/lang/Boolean; = null

.field private static zzd:Ljava/lang/String; = null

.field private static zze:Z = false

.field private static zzf:I = -0x1

.field private static zzg:Ljava/lang/Boolean;

.field private static final zzh:Ljava/lang/ThreadLocal;

.field private static final zzi:Ljava/lang/ThreadLocal;

.field private static final zzj:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

.field private static zzl:Lcom/google/android/gms/dynamite/zzp;

.field private static zzm:Lcom/google/android/gms/dynamite/zzq;


# instance fields
.field private final zzk:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/dynamite/zze;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

    new-instance v0, Lcom/google/android/gms/dynamite/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Landroid/content/Context;

    return-void
.end method

.method public static getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 11

    .line 1
    const-string v0, "DynamiteModule"

    const-string v1, "\'"

    const-string v2, "\' didn\'t match expected id \'"

    const-string v3, "Module descriptor id \'"

    const-string v4, ".ModuleDescriptor"

    const-string v5, "com.google.android.gms.dynamite.descriptors."

    const/4 v6, 0x0

    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x3d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v4, "MODULE_ID"

    .line 4
    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const-string v5, "MODULE_VERSION"

    .line 5
    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_85

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 9
    :cond_85
    invoke-virtual {p0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_89
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_89} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_89} :catch_8a

    return p0

    :catch_8a
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to load module descriptor class: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    .line 11
    :catch_a0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x2d

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Local module descriptor class for "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c3
    return v6
.end method

.method public static getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    const-string v0, " and remote module "

    const-string v4, ":"

    const-string v5, "Considering local module "

    const-string v6, "VersionPolicy returned invalid code:"

    const-string v7, "."

    const-string v8, " and remote version is "

    const-string v9, " found. Local version is "

    const-string v10, "No acceptable module "

    const-string v11, "Failed to load remote module: "

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_387

    .line 2
    sget-object v14, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/dynamite/zzn;

    move-object/from16 v16, v7

    new-instance v7, Lcom/google/android/gms/dynamite/zzn;

    invoke-direct {v7, v13}, Lcom/google/android/gms/dynamite/zzn;-><init>([B)V

    .line 4
    invoke-virtual {v14, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object/from16 v17, v13

    sget-object v13, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    .line 5
    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    .line 6
    :try_start_41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-object/from16 v24, v8

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v8, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

    .line 7
    invoke-interface {v2, v1, v3, v8}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    move-result-object v8

    move-object/from16 v22, v9

    const-string v9, "DynamiteModule"

    move-object/from16 v23, v10

    .line 8
    iget v10, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    move-object/from16 v25, v6

    iget v6, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, 0x1a

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int v26, v26, v27

    add-int/lit8 v26, v26, 0x13

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int v26, v26, v27

    const/4 v2, 0x1

    add-int/lit8 v26, v26, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int v2, v26, v27

    move-object/from16 v26, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v0, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    if-eqz v0, :cond_313

    const/4 v2, -0x1

    if-ne v0, v2, :cond_bf

    iget v0, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    if-eqz v0, :cond_313

    move v0, v2

    :cond_bf
    const/4 v4, 0x1

    if-ne v0, v4, :cond_c6

    iget v4, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    if-eqz v4, :cond_313

    :cond_c6
    if-ne v0, v2, :cond_e6

    .line 68
    invoke-static {v12, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0
    :try_end_cc
    .catchall {:try_start_41 .. :try_end_cc} :catchall_366

    cmp-long v1, v18, v20

    if-nez v1, :cond_d4

    .line 64
    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_db

    .line 65
    :cond_d4
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 64
    :goto_db
    iget-object v1, v7, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v1, :cond_e2

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_e2
    invoke-virtual {v14, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0

    :cond_e6
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2f1

    const/4 v4, 0x0

    .line 11
    :try_start_ea
    iget v0, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I
    :try_end_ec
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_ea .. :try_end_ec} :catch_28c
    .catchall {:try_start_ea .. :try_end_ec} :catchall_366

    :try_start_ec
    const-class v5, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v5
    :try_end_ef
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_ef} :catch_282
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_ec .. :try_end_ef} :catch_280
    .catchall {:try_start_ec .. :try_end_ef} :catchall_273

    .line 12
    :try_start_ef
    invoke-static {v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_267

    .line 13
    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/Boolean;

    .line 14
    monitor-exit v5
    :try_end_f8
    .catchall {:try_start_ef .. :try_end_f8} :catchall_270

    if-eqz v6, :cond_25e

    .line 16
    :try_start_fa
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_1be

    const-string v5, "DynamiteModule"

    const-string v9, "Selected remote version of "

    const-string v10, ", version >= "

    .line 33
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x28

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v11, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v5, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v5
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_135} :catch_282
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_fa .. :try_end_135} :catch_280
    .catchall {:try_start_fa .. :try_end_135} :catchall_273

    :try_start_135
    sget-object v9, Lcom/google/android/gms/dynamite/DynamiteModule;->zzm:Lcom/google/android/gms/dynamite/zzq;

    .line 34
    monitor-exit v5
    :try_end_138
    .catchall {:try_start_135 .. :try_end_138} :catchall_1bb

    if-eqz v9, :cond_1b2

    .line 36
    :try_start_13a
    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v5, :cond_1a9

    iget-object v10, v5, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v10, :cond_1a9

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v5, v5, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 39
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-class v11, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v11
    :try_end_152
    .catch Landroid/os/RemoteException; {:try_start_13a .. :try_end_152} :catch_282
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_13a .. :try_end_152} :catch_280
    .catchall {:try_start_13a .. :try_end_152} :catchall_273

    :try_start_152
    sget v13, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:I

    if-lt v13, v6, :cond_159

    const/16 v28, 0x1

    goto :goto_15b

    :cond_159
    move/from16 v28, v4

    .line 40
    :goto_15b
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    monitor-exit v11
    :try_end_160
    .catchall {:try_start_152 .. :try_end_160} :catchall_1a6

    .line 42
    :try_start_160
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_17a

    const-string v6, "DynamiteModule"

    const-string v11, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    .line 43
    invoke-static {v6, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {v10}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    .line 45
    invoke-static {v5}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    .line 46
    invoke-virtual {v9, v6, v3, v0, v5}, Lcom/google/android/gms/dynamite/zzq;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    goto :goto_18d

    .line 65
    :cond_17a
    const-string v6, "DynamiteModule"

    const-string v11, "Dynamite loader version < 2, falling back to loadModule2"

    .line 47
    invoke-static {v6, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {v10}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    .line 49
    invoke-static {v5}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    .line 50
    invoke-virtual {v9, v6, v3, v0, v5}, Lcom/google/android/gms/dynamite/zzq;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 51
    :goto_18d
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_19c

    .line 52
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 53
    invoke-direct {v5, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    goto/16 :goto_2c8

    .line 51
    :cond_19c
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "Failed to get module context"

    move-object/from16 v6, v17

    .line 52
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    throw v0
    :try_end_1a6
    .catch Landroid/os/RemoteException; {:try_start_160 .. :try_end_1a6} :catch_282
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_160 .. :try_end_1a6} :catch_280
    .catchall {:try_start_160 .. :try_end_1a6} :catchall_273

    :catchall_1a6
    move-exception v0

    .line 41
    :try_start_1a7
    monitor-exit v11
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_1a6

    :try_start_1a8
    throw v0

    .line 36
    :cond_1a9
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "No result cursor"

    const/4 v6, 0x0

    .line 37
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    throw v0

    .line 34
    :cond_1b2
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "DynamiteLoaderV2 was not cached."

    const/4 v6, 0x0

    .line 35
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    throw v0
    :try_end_1bb
    .catch Landroid/os/RemoteException; {:try_start_1a8 .. :try_end_1bb} :catch_282
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1a8 .. :try_end_1bb} :catch_280
    .catchall {:try_start_1a8 .. :try_end_1bb} :catchall_273

    :catchall_1bb
    move-exception v0

    .line 34
    :try_start_1bc
    monitor-exit v5
    :try_end_1bd
    .catchall {:try_start_1bc .. :try_end_1bd} :catchall_1bb

    :try_start_1bd
    throw v0

    .line 50
    :cond_1be
    const-string v5, "DynamiteModule"

    const-string v9, "Selected remote version of "

    const-string v10, ", version >= "

    .line 17
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x28

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v11, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzp;

    move-result-object v5

    if-eqz v5, :cond_255

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/dynamite/zzp;->zzi()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_21c

    .line 21
    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v6, :cond_213

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v9

    iget-object v6, v6, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 24
    invoke-static {v6}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    .line 25
    invoke-virtual {v5, v9, v3, v0, v6}, Lcom/google/android/gms/dynamite/zzp;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    goto :goto_23d

    .line 21
    :cond_213
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "No cached result cursor holder"

    const/4 v6, 0x0

    .line 22
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    throw v0

    :cond_21c
    if-ne v9, v6, :cond_22e

    .line 32
    const-string v6, "DynamiteModule"

    const-string v9, "IDynamite loader version = 2"

    .line 26
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v0}, Lcom/google/android/gms/dynamite/zzp;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    goto :goto_23d

    :cond_22e
    const-string v6, "DynamiteModule"

    const-string v9, "Dynamite loader version < 2, falling back to createModuleContext"

    .line 28
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v0}, Lcom/google/android/gms/dynamite/zzp;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 30
    :goto_23d
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24c

    .line 31
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 32
    check-cast v0, Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    goto/16 :goto_2c8

    .line 30
    :cond_24c
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "Failed to load remote module."

    const/4 v6, 0x0

    .line 31
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    throw v0

    .line 18
    :cond_255
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "Failed to create IDynamiteLoader."

    const/4 v6, 0x0

    .line 19
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    throw v0

    .line 14
    :cond_25e
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "Failed to determine which loading route to use."

    const/4 v6, 0x0

    .line 15
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    throw v0
    :try_end_267
    .catch Landroid/os/RemoteException; {:try_start_1bd .. :try_end_267} :catch_282
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1bd .. :try_end_267} :catch_280
    .catchall {:try_start_1bd .. :try_end_267} :catchall_273

    .line 12
    :cond_267
    :try_start_267
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v6, "Remote loading disabled"

    const/4 v9, 0x0

    .line 13
    invoke-direct {v0, v6, v9}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    throw v0

    :catchall_270
    move-exception v0

    .line 14
    monitor-exit v5
    :try_end_272
    .catchall {:try_start_267 .. :try_end_272} :catchall_270

    :try_start_272
    throw v0
    :try_end_273
    .catch Landroid/os/RemoteException; {:try_start_272 .. :try_end_273} :catch_282
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_272 .. :try_end_273} :catch_280
    .catchall {:try_start_272 .. :try_end_273} :catchall_273

    :catchall_273
    move-exception v0

    .line 54
    :try_start_274
    invoke-static {v1, v0}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v6, "Failed to load remote module."

    const/4 v9, 0x0

    .line 55
    invoke-direct {v5, v6, v0, v9}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[B)V

    throw v5

    :catch_280
    move-exception v0

    .line 56
    throw v0

    :catch_282
    move-exception v0

    .line 63
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v6, "Failed to load remote module."

    const/4 v9, 0x0

    .line 57
    invoke-direct {v5, v6, v0, v9}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[B)V

    throw v5
    :try_end_28c
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_274 .. :try_end_28c} :catch_28c
    .catchall {:try_start_274 .. :try_end_28c} :catchall_366

    :catch_28c
    move-exception v0

    .line 10
    :try_start_28d
    const-string v5, "DynamiteModule"

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v9, v26

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget v5, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    if-eqz v5, :cond_2e8

    new-instance v6, Lcom/google/android/gms/dynamite/zzo;

    invoke-direct {v6, v5, v4}, Lcom/google/android/gms/dynamite/zzo;-><init>(II)V

    move-object/from16 v4, p1

    .line 60
    invoke-interface {v4, v1, v3, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    move-result-object v1

    .line 61
    iget v1, v1, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    if-ne v1, v2, :cond_2e8

    .line 63
    invoke-static {v12, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v5
    :try_end_2c8
    .catchall {:try_start_28d .. :try_end_2c8} :catchall_366

    :goto_2c8
    cmp-long v0, v18, v20

    if-nez v0, :cond_2d2

    .line 53
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    .line 64
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_2db

    .line 67
    :cond_2d2
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    .line 65
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 64
    :goto_2db
    iget-object v0, v7, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v0, :cond_2e2

    .line 66
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2e2
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 67
    invoke-virtual {v0, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v5

    .line 41
    :cond_2e8
    :try_start_2e8
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Remote load failed. No local fallback found."

    const/4 v6, 0x0

    .line 62
    invoke-direct {v1, v2, v0, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[B)V

    throw v1

    .line 70
    :cond_2f1
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v2, v25

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-direct {v1, v0, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    throw v1

    .line 9
    :cond_313
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 69
    iget v1, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    iget v2, v8, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x17

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    const/16 v28, 0x1

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v4, v23

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    throw v0
    :try_end_366
    .catchall {:try_start_2e8 .. :try_end_366} :catchall_366

    :catchall_366
    move-exception v0

    cmp-long v1, v18, v20

    if-nez v1, :cond_371

    .line 29
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    .line 64
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_37a

    .line 62
    :cond_371
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    .line 65
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 64
    :goto_37a
    iget-object v1, v7, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v1, :cond_381

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_381
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 67
    invoke-virtual {v1, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 70
    throw v0

    .line 1
    :cond_387
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v1, "null application Context"

    const/4 v6, 0x0

    .line 2
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    throw v0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 15

    .line 1
    const-string v1, "Failed to retrieve remote module version: "

    const-string v2, "Failed to load module via V2: "

    :try_start_4
    const-class v3, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1ed

    :try_start_7
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/Boolean;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_1e9

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_e8

    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v6, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    .line 2
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "sClassLoader"

    .line 3
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    monitor-enter v6
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_2a} :catch_c5
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_2a} :catch_c3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_2a} :catch_c1
    .catchall {:try_start_d .. :try_end_2a} :catchall_1e9

    .line 5
    :try_start_2a
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ClassLoader;

    .line 6
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    if-ne v7, v8, :cond_3a

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_be

    goto/16 :goto_bc

    :cond_3a
    if-eqz v7, :cond_43

    .line 7
    :try_start_3c
    invoke-static {v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Ljava/lang/ClassLoader;)V
    :try_end_3f
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_3c .. :try_end_3f} :catch_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_be

    :catch_3f
    :try_start_3f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_bc

    .line 8
    :cond_43
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4c

    .line 9
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_be

    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_1e9

    return v5

    :cond_4c
    :try_start_4c
    sget-boolean v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Z

    if-nez v7, :cond_b3

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v7, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_be

    if-eqz v7, :cond_59

    goto :goto_b3

    :cond_59
    const/4 v7, 0x1

    .line 12
    :try_start_5a
    invoke-static {p0, p1, p2, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result v7

    sget-object v8, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Ljava/lang/String;

    if-eqz v8, :cond_a6

    .line 13
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_69

    goto :goto_a6

    .line 15
    :cond_69
    invoke-static {}, Lcom/google/android/gms/dynamite/zzb;->zza()Ljava/lang/ClassLoader;

    move-result-object v8

    if-eqz v8, :cond_70

    goto :goto_99

    .line 24
    :cond_70
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v8, v9, :cond_88

    .line 16
    new-instance v8, Ldalvik/system/DelegateLastClassLoader;

    sget-object v9, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Ljava/lang/String;

    .line 17
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_99

    .line 18
    :cond_88
    new-instance v8, Lcom/google/android/gms/dynamite/zzd;

    sget-object v9, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Ljava/lang/String;

    .line 19
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/dynamite/zzd;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 20
    :goto_99
    invoke-static {v8}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Ljava/lang/ClassLoader;)V

    .line 21
    invoke-virtual {v0, v4, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v8, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/Boolean;
    :try_end_a3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_5a .. :try_end_a3} :catch_a9
    .catchall {:try_start_5a .. :try_end_a3} :catchall_be

    .line 24
    :try_start_a3
    monitor-exit v6
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_be

    :try_start_a4
    monitor-exit v3
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_1e9

    return v7

    .line 14
    :cond_a6
    :goto_a6
    :try_start_a6
    monitor-exit v6
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_be

    :try_start_a7
    monitor-exit v3
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_1e9

    return v7

    .line 22
    :catch_a9
    :try_start_a9
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_bc

    .line 11
    :cond_b3
    :goto_b3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    :goto_bc
    monitor-exit v6

    goto :goto_e6

    :catchall_be
    move-exception v0

    monitor-exit v6
    :try_end_c0
    .catchall {:try_start_a9 .. :try_end_c0} :catchall_be

    :try_start_c0
    throw v0
    :try_end_c1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c0 .. :try_end_c1} :catch_c5
    .catch Ljava/lang/IllegalAccessException; {:try_start_c0 .. :try_end_c1} :catch_c3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c0 .. :try_end_c1} :catch_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_1e9

    :catch_c1
    move-exception v0

    goto :goto_c6

    :catch_c3
    move-exception v0

    goto :goto_c6

    :catch_c5
    move-exception v0

    .line 26
    :goto_c6
    :try_start_c6
    const-string v6, "DynamiteModule"

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    :goto_e6
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/Boolean;

    .line 26
    :cond_e8
    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_c6 .. :try_end_e9} :catchall_1e9

    .line 27
    :try_start_e9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_ed
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_1ed

    if-eqz v0, :cond_119

    .line 47
    :try_start_ef
    invoke-static {p0, p1, p2, v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result p0
    :try_end_f3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_ef .. :try_end_f3} :catch_f4
    .catchall {:try_start_ef .. :try_end_f3} :catchall_1ed

    return p0

    :catch_f4
    move-exception v0

    move-object p1, v0

    .line 23
    :try_start_f6
    const-string p2, "DynamiteModule"

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 47
    :cond_119
    const-string v1, "Failed to retrieve remote module version: "

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzp;

    move-result-object v6
    :try_end_11f
    .catchall {:try_start_f6 .. :try_end_11f} :catchall_1ed

    if-nez v6, :cond_123

    goto/16 :goto_1df

    .line 29
    :cond_123
    :try_start_123
    invoke-virtual {v6}, Lcom/google/android/gms/dynamite/zzp;->zzi()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_18e

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 30
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v0, :cond_13e

    iget-object v0, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v0, :cond_13e

    .line 39
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    goto/16 :goto_1df

    .line 31
    :cond_13e
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v7

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object v8, p1

    move v9, p2

    .line 32
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/dynamite/zzp;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ZJ)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;
    :try_end_15a
    .catch Landroid/os/RemoteException; {:try_start_123 .. :try_end_15a} :catch_1b5
    .catchall {:try_start_123 .. :try_end_15a} :catchall_1e0

    if-eqz p1, :cond_179

    .line 34
    :try_start_15c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_163

    goto :goto_179

    .line 37
    :cond_163
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_170

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Landroid/database/Cursor;)Z

    move-result v0
    :try_end_16d
    .catch Landroid/os/RemoteException; {:try_start_15c .. :try_end_16d} :catch_18a
    .catchall {:try_start_15c .. :try_end_16d} :catchall_186

    if-eqz v0, :cond_170

    goto :goto_171

    :cond_170
    move-object v4, p1

    :goto_171
    if-eqz v4, :cond_176

    .line 36
    :try_start_173
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_176
    .catchall {:try_start_173 .. :try_end_176} :catchall_1ed

    :cond_176
    move v5, p2

    goto/16 :goto_1df

    .line 34
    :cond_179
    :goto_179
    :try_start_179
    const-string p2, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version."

    .line 35
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_180
    .catch Landroid/os/RemoteException; {:try_start_179 .. :try_end_180} :catch_18a
    .catchall {:try_start_179 .. :try_end_180} :catchall_186

    if-eqz p1, :cond_1df

    .line 36
    :try_start_182
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_185
    .catchall {:try_start_182 .. :try_end_185} :catchall_1ed

    goto :goto_1df

    :catchall_186
    move-exception v0

    move-object p2, v0

    move-object v4, p1

    goto :goto_1e3

    :catch_18a
    move-exception v0

    move-object p2, v0

    move-object v4, p1

    goto :goto_1b8

    :cond_18e
    move-object v8, p1

    move v9, p2

    const/4 p1, 0x2

    if-ne v0, p1, :cond_1a3

    :try_start_193
    const-string p1, "DynamiteModule"

    const-string p2, "IDynamite loader version = 2, no high precision latency measurement."

    .line 40
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 42
    invoke-virtual {v6, p1, v8, v9}, Lcom/google/android/gms/dynamite/zzp;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result v5

    goto :goto_1df

    :cond_1a3
    const-string p1, "DynamiteModule"

    const-string p2, "IDynamite loader version < 2, falling back to getModuleVersion2"

    .line 43
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {v6, p1, v8, v9}, Lcom/google/android/gms/dynamite/zzp;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result v5
    :try_end_1b2
    .catch Landroid/os/RemoteException; {:try_start_193 .. :try_end_1b2} :catch_1b5
    .catchall {:try_start_193 .. :try_end_1b2} :catchall_1e0

    goto :goto_1df

    :goto_1b3
    move-object p2, p1

    goto :goto_1e3

    :catch_1b5
    move-exception v0

    move-object p1, v0

    move-object p2, p1

    .line 48
    :goto_1b8
    :try_start_1b8
    const-string p1, "DynamiteModule"

    .line 45
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1da
    .catchall {:try_start_1b8 .. :try_end_1da} :catchall_1e0

    if-eqz v4, :cond_1df

    .line 36
    :try_start_1dc
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1df
    :goto_1df
    return v5

    :catchall_1e0
    move-exception v0

    move-object p1, v0

    goto :goto_1b3

    :goto_1e3
    if-eqz v4, :cond_1e8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_1e8
    throw p2
    :try_end_1e9
    .catchall {:try_start_1dc .. :try_end_1e9} :catchall_1ed

    :catchall_1e9
    move-exception v0

    move-object p1, v0

    .line 26
    :try_start_1eb
    monitor-exit v3
    :try_end_1ec
    .catchall {:try_start_1eb .. :try_end_1ec} :catchall_1e9

    :try_start_1ec
    throw p1
    :try_end_1ed
    .catchall {:try_start_1ec .. :try_end_1ed} :catchall_1ed

    :catchall_1ed
    move-exception v0

    move-object p1, v0

    .line 49
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 50
    throw p1
.end method

.method private static zzb(Landroid/content/Context;)Z
    .registers 7

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    return v1

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    :cond_16
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/Boolean;

    const-string v2, "DynamiteModule"

    const/4 v3, 0x0

    if-nez v0, :cond_6a

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastQ()Z

    move-result v4

    if-eq v1, v4, :cond_29

    move v4, v3

    goto :goto_2b

    :cond_29
    const/high16 v4, 0x10000000

    :goto_2b
    const-string v5, "com.google.android.gms.chimera"

    .line 4
    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v4

    const v5, 0x989680

    .line 6
    invoke-virtual {v4, p0, v5}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p0

    if-nez p0, :cond_4b

    if-eqz v0, :cond_4b

    const-string p0, "com.google.android.gms"

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    move v3, v1

    .line 5
    :cond_4b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 9
    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_6a

    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x81

    if-nez p0, :cond_6a

    const-string p0, "Non-system-image GmsCore APK, forcing V1"

    .line 10
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Z

    :cond_6a
    if-nez v3, :cond_71

    const-string p0, "Invalid GmsCore APK, remote loading disabled."

    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    return v3
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;ZZ)I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    const-string v1, "V2 version check failed: "

    const/4 v2, 0x0

    :try_start_3
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v0, "api_force_staging"

    const-string v5, "api"

    const/4 v6, 0x1

    move/from16 v7, p2

    if-eq v6, v7, :cond_19

    move-object v0, v5

    :cond_19
    new-instance v5, Landroid/net/Uri$Builder;

    .line 2
    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v7, "content"

    .line 3
    invoke-virtual {v5, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v7, "com.google.android.gms.chimera"

    .line 4
    invoke-virtual {v5, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 5
    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "requestStartUptime"

    .line 7
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v7
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_48} :catch_150
    .catchall {:try_start_3 .. :try_end_48} :catchall_14d

    const/4 p0, 0x2

    const/4 v3, 0x0

    if-nez v7, :cond_4f

    :goto_4c
    move-object v8, v2

    goto/16 :goto_e3

    :cond_4f
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 10
    :try_start_53
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_57} :catch_59
    .catchall {:try_start_53 .. :try_end_57} :catchall_dd

    if-nez v4, :cond_5d

    .line 24
    :catch_59
    :try_start_59
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_150
    .catchall {:try_start_59 .. :try_end_5c} :catchall_14d

    goto :goto_4c

    .line 11
    :cond_5d
    :try_start_5d
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 12
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    new-instance v8, Landroid/database/MatrixCursor;

    .line 13
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move v9, v3

    :goto_6f
    if-ge v9, v0, :cond_cb

    .line 14
    invoke-interface {v4, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    if-eqz v10, :cond_c3

    .line 15
    new-array v10, v5, [Ljava/lang/Object;

    move v11, v3

    :goto_7a
    if-ge v11, v5, :cond_bd

    .line 16
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getType(I)I

    move-result v12

    if-eqz v12, :cond_b8

    if-eq v12, v6, :cond_ad

    if-eq v12, p0, :cond_a2

    const/4 v13, 0x3

    if-eq v12, v13, :cond_9b

    const/4 v13, 0x4

    if-ne v12, v13, :cond_93

    .line 17
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    aput-object v12, v10, v11

    goto :goto_ba

    .line 26
    :cond_93
    new-instance v0, Landroid/os/RemoteException;

    const-string v5, "Unknown column type"

    invoke-direct {v0, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_9b
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    goto :goto_ba

    .line 19
    :cond_a2
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    goto :goto_ba

    .line 20
    :cond_ad
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    goto :goto_ba

    .line 21
    :cond_b8
    aput-object v2, v10, v11

    :goto_ba
    add-int/lit8 v11, v11, 0x1

    goto :goto_7a

    .line 22
    :cond_bd
    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6f

    .line 25
    :cond_c3
    new-instance v0, Landroid/os/RemoteException;

    const-string v5, "Cursor read incomplete (ContentProvider dead?)"

    invoke-direct {v0, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_cb
    .catchall {:try_start_5d .. :try_end_cb} :catchall_d2

    .line 23
    :cond_cb
    :try_start_cb
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_ce} :catch_59
    .catchall {:try_start_cb .. :try_end_ce} :catchall_dd

    .line 24
    :try_start_ce
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_150
    .catchall {:try_start_ce .. :try_end_d1} :catchall_14d

    goto :goto_e3

    :catchall_d2
    move-exception v0

    move-object v5, v0

    .line 10
    :try_start_d4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d8

    goto :goto_dc

    :catchall_d8
    move-exception v0

    :try_start_d9
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_dc
    throw v5
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_dd} :catch_59
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_dd

    :catchall_dd
    move-exception v0

    move-object p0, v0

    .line 24
    :try_start_df
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    .line 27
    throw p0
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e3} :catch_150
    .catchall {:try_start_df .. :try_end_e3} :catchall_14d

    :goto_e3
    if-eqz v8, :cond_13e

    .line 28
    :try_start_e5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 31
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_128

    const-class v4, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v4
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_f4} :catch_135
    .catchall {:try_start_e5 .. :try_end_f4} :catchall_17b

    .line 32
    :try_start_f4
    invoke-interface {v8, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Ljava/lang/String;

    const-string p0, "loaderVersion"

    .line 33
    invoke-interface {v8, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_108

    .line 34
    invoke-interface {v8, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    sput p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:I

    :cond_108
    const-string p0, "disableStandaloneDynamiteLoader2"

    .line 35
    invoke-interface {v8, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_11b

    .line 36
    invoke-interface {v8, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eqz p0, :cond_117

    goto :goto_118

    :cond_117
    move v6, v3

    :goto_118
    sput-boolean v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Z

    move v3, v6

    .line 37
    :cond_11b
    monitor-exit v4
    :try_end_11c
    .catchall {:try_start_f4 .. :try_end_11c} :catchall_124

    .line 38
    :try_start_11c
    invoke-static {v8}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Landroid/database/Cursor;)Z

    move-result p0
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_120} :catch_135
    .catchall {:try_start_11c .. :try_end_120} :catchall_17b

    if-eqz p0, :cond_128

    move-object v8, v2

    goto :goto_128

    :catchall_124
    move-exception v0

    move-object p0, v0

    .line 37
    :try_start_126
    monitor-exit v4
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_124

    :try_start_127
    throw p0

    :cond_128
    :goto_128
    if-eqz p3, :cond_138

    if-nez v3, :cond_12d

    goto :goto_138

    :cond_12d
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v0, "forcing fallback to container DynamiteLoader impl"

    .line 40
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    throw p0
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_135} :catch_135
    .catchall {:try_start_127 .. :try_end_135} :catchall_17b

    :catch_135
    move-exception v0

    move-object p0, v0

    goto :goto_153

    :cond_138
    :goto_138
    if-eqz v8, :cond_13d

    .line 39
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_13d
    return v0

    .line 28
    :cond_13e
    :try_start_13e
    const-string p0, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version."

    .line 29
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v0, "Failed to connect to dynamite module ContentResolver."

    .line 30
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    throw p0
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_14d} :catch_135
    .catchall {:try_start_13e .. :try_end_14d} :catchall_17b

    :catchall_14d
    move-exception v0

    move-object p0, v0

    goto :goto_17e

    :catch_150
    move-exception v0

    move-object p0, v0

    move-object v8, v2

    .line 24
    :goto_153
    :try_start_153
    instance-of v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    if-nez v0, :cond_17a

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[B)V

    throw v0

    .line 42
    :cond_17a
    throw p0
    :try_end_17b
    .catchall {:try_start_153 .. :try_end_17b} :catchall_17b

    :catchall_17b
    move-exception v0

    move-object p0, v0

    move-object v2, v8

    :goto_17e
    if-eqz v2, :cond_183

    .line 39
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_183
    throw p0
.end method

.method private static zzd(Landroid/database/Cursor;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-nez v1, :cond_12

    iput-object p0, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private static zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DynamiteModule"

    const-string v1, "Selected local version of "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private static zzf(Ljava/lang/ClassLoader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_1a

    move-object v1, v0

    goto :goto_2c

    :cond_1a
    const-string v1, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    .line 2
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/dynamite/zzq;

    if-eqz v2, :cond_27

    .line 3
    check-cast v1, Lcom/google/android/gms/dynamite/zzq;

    goto :goto_2c

    .line 4
    :cond_27
    new-instance v1, Lcom/google/android/gms/dynamite/zzq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/dynamite/zzq;-><init>(Landroid/os/IBinder;)V

    .line 1
    :goto_2c
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzm:Lcom/google/android/gms/dynamite/zzq;
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2e} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2e} :catch_35
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_2e} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2e} :catch_31
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p0

    goto :goto_38

    :catch_31
    move-exception p0

    goto :goto_38

    :catch_33
    move-exception p0

    goto :goto_38

    :catch_35
    move-exception p0

    goto :goto_38

    :catch_37
    move-exception p0

    .line 3
    :goto_38
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to instantiate dynamite loader"

    .line 4
    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[B)V

    throw v1
.end method

.method private static zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzp;
    .registers 7

    .line 1
    const-string v0, "Failed to load IDynamiteLoader from GmsCore: "

    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v1

    :try_start_5
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzl:Lcom/google/android/gms/dynamite/zzp;

    if-eqz v2, :cond_b

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_64

    return-object v2

    :cond_b
    const/4 v2, 0x0

    :try_start_c
    const-string v3, "com.google.android.gms"

    const/4 v4, 0x3

    .line 2
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v3, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_27

    move-object v3, v2

    goto :goto_39

    .line 9
    :cond_27
    const-string v3, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 6
    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/dynamite/zzp;

    if-eqz v4, :cond_34

    .line 7
    check-cast v3, Lcom/google/android/gms/dynamite/zzp;

    goto :goto_39

    :cond_34
    new-instance v3, Lcom/google/android/gms/dynamite/zzp;

    invoke-direct {v3, p0}, Lcom/google/android/gms/dynamite/zzp;-><init>(Landroid/os/IBinder;)V

    :goto_39
    if-eqz v3, :cond_62

    .line 5
    sput-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->zzl:Lcom/google/android/gms/dynamite/zzp;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_3f
    .catchall {:try_start_c .. :try_end_3d} :catchall_64

    .line 10
    :try_start_3d
    monitor-exit v1

    return-object v3

    :catch_3f
    move-exception p0

    .line 9
    const-string v3, "DynamiteModule"

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_62
    monitor-exit v1

    return-object v2

    :catchall_64
    move-exception p0

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_3d .. :try_end_66} :catchall_64

    throw p0
.end method


# virtual methods
.method public getModuleContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Landroid/content/Context;

    return-object v0
.end method

.method public instantiate(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_15
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_10} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    goto :goto_16

    :catch_13
    move-exception v0

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Failed to instantiate module class: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[B)V

    throw v1
.end method
