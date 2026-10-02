.class public final Lcom/google/android/gms/dynamite/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# static fields
.field private static zza:Ljava/lang/ClassLoader;

.field private static zzb:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static declared-synchronized zza()Ljava/lang/ClassLoader;
    .registers 13

    const-class v0, Lcom/google/android/gms/dynamite/zzb;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;

    if-nez v1, :cond_e6

    const-string v1, "Failed to get thread context classloader "

    sget-object v2, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    const/4 v3, 0x0

    if-nez v2, :cond_b2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v2

    const-string v4, "Failed to enumerate thread/threadgroup "

    if-nez v2, :cond_21

    move-object v2, v3

    goto/16 :goto_ab

    .line 20
    :cond_21
    const-class v5, Ljava/lang/Void;

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_ea

    .line 2
    :try_start_24
    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v6

    new-array v7, v6, [Ljava/lang/ThreadGroup;

    .line 3
    invoke-virtual {v2, v7}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;)I

    const/4 v8, 0x0

    move v9, v8

    :goto_2f
    if-ge v9, v6, :cond_43

    .line 4
    aget-object v10, v7, v9

    const-string v11, "dynamiteLoader"

    .line 5
    invoke-virtual {v10}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_40

    goto :goto_44

    :cond_40
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    :cond_43
    move-object v10, v3

    :goto_44
    if-nez v10, :cond_4d

    new-instance v10, Ljava/lang/ThreadGroup;

    const-string v6, "dynamiteLoader"

    .line 6
    invoke-direct {v10, v2, v6}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 7
    :cond_4d
    invoke-virtual {v10}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v2

    new-array v6, v2, [Ljava/lang/Thread;

    .line 8
    invoke-virtual {v10, v6}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    :goto_56
    if-ge v8, v2, :cond_6a

    .line 9
    aget-object v7, v6, v8

    const-string v9, "GmsDynamite"

    .line 10
    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_64
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_64} :catch_84
    .catchall {:try_start_24 .. :try_end_64} :catchall_82

    if-eqz v9, :cond_67

    goto :goto_6b

    :cond_67
    add-int/lit8 v8, v8, 0x1

    goto :goto_56

    :cond_6a
    move-object v7, v3

    :goto_6b
    if-nez v7, :cond_a9

    :try_start_6d
    new-instance v2, Lcom/google/android/gms/dynamite/zza;

    const-string v6, "GmsDynamite"

    .line 11
    invoke-direct {v2, v10, v6}, Lcom/google/android/gms/dynamite/zza;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/SecurityException; {:try_start_6d .. :try_end_74} :catch_7f
    .catchall {:try_start_6d .. :try_end_74} :catchall_82

    .line 12
    :try_start_74
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 13
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_7a
    .catch Ljava/lang/SecurityException; {:try_start_74 .. :try_end_7a} :catch_7c
    .catchall {:try_start_74 .. :try_end_7a} :catchall_82

    move-object v7, v2

    goto :goto_a9

    :catch_7c
    move-exception v6

    move-object v7, v2

    goto :goto_87

    :catch_7f
    move-exception v2

    move-object v6, v2

    goto :goto_87

    :catchall_82
    move-exception v1

    goto :goto_b0

    :catch_84
    move-exception v2

    move-object v6, v2

    move-object v7, v3

    .line 21
    :goto_87
    :try_start_87
    const-string v2, "DynamiteLoaderV2CL"

    .line 14
    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x27

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_a9
    :goto_a9
    monitor-exit v5
    :try_end_aa
    .catchall {:try_start_87 .. :try_end_aa} :catchall_82

    move-object v2, v7

    .line 1
    :goto_ab
    :try_start_ab
    sput-object v2, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;
    :try_end_ad
    .catchall {:try_start_ab .. :try_end_ad} :catchall_ea

    if-nez v2, :cond_b2

    goto :goto_e1

    .line 16
    :goto_b0
    :try_start_b0
    monitor-exit v5
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_82

    :try_start_b1
    throw v1

    .line 17
    :cond_b2
    monitor-enter v2
    :try_end_b3
    .catchall {:try_start_b1 .. :try_end_b3} :catchall_ea

    :try_start_b3
    sget-object v4, Lcom/google/android/gms/dynamite/zzb;->zzb:Ljava/lang/Thread;

    .line 18
    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_b9
    .catch Ljava/lang/SecurityException; {:try_start_b3 .. :try_end_b9} :catch_bd
    .catchall {:try_start_b3 .. :try_end_b9} :catchall_bb

    move-object v3, v1

    goto :goto_e0

    :catchall_bb
    move-exception v1

    goto :goto_e4

    :catch_bd
    move-exception v4

    .line 15
    :try_start_be
    const-string v5, "DynamiteLoaderV2CL"

    .line 19
    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x29

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_e0
    monitor-exit v2
    :try_end_e1
    .catchall {:try_start_be .. :try_end_e1} :catchall_bb

    .line 1
    :goto_e1
    :try_start_e1
    sput-object v3, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;
    :try_end_e3
    .catchall {:try_start_e1 .. :try_end_e3} :catchall_ea

    goto :goto_e6

    .line 21
    :goto_e4
    :try_start_e4
    monitor-exit v2
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_bb

    :try_start_e5
    throw v1

    .line 1
    :cond_e6
    :goto_e6
    sget-object v1, Lcom/google/android/gms/dynamite/zzb;->zza:Ljava/lang/ClassLoader;
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_ea

    monitor-exit v0

    return-object v1

    :catchall_ea
    move-exception v1

    :try_start_eb
    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    throw v1
.end method
