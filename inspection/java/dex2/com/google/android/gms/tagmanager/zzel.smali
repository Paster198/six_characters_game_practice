.class final Lcom/google/android/gms/tagmanager/zzel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzrl;

.field final synthetic zzb:Lcom/google/android/gms/tagmanager/zzem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzem;Lcom/google/android/gms/internal/gtm/zzrl;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzel;->zzb:Lcom/google/android/gms/tagmanager/zzem;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzel;->zza:Lcom/google/android/gms/internal/gtm/zzrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    const-string v0, "error closing stream for writing resource to disk"

    const-string v1, " to a byte array threw an IOException (should never happen)."

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzel;->zzb:Lcom/google/android/gms/tagmanager/zzem;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzel;->zza:Lcom/google/android/gms/internal/gtm/zzrl;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzem;->zze()Ljava/io/File;

    move-result-object v2

    :try_start_c
    new-instance v4, Ljava/io/FileOutputStream;

    .line 2
    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_73

    .line 4
    :try_start_11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzsh;->zzX()I

    move-result v5

    .line 5
    new-array v5, v5, [B

    .line 6
    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzto;->zzF([B)Lcom/google/android/gms/internal/gtm/zzto;

    move-result-object v6

    .line 4
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/gtm/zzsh;->zzaq(Lcom/google/android/gms/internal/gtm/zzto;)V

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzto;->zzG()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_21} :catch_2e
    .catchall {:try_start_11 .. :try_end_21} :catchall_2c

    .line 4
    :try_start_21
    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_5b
    .catchall {:try_start_21 .. :try_end_24} :catchall_2c

    .line 12
    :try_start_24
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    return-void

    .line 13
    :catch_28
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    return-void

    :catchall_2c
    move-exception v1

    goto :goto_6b

    :catch_2e
    move-exception v5

    .line 3
    :try_start_2f
    new-instance v6, Ljava/lang/RuntimeException;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x48

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Serializing "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-direct {v6, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_5b} :catch_5b
    .catchall {:try_start_2f .. :try_end_5b} :catchall_2c

    .line 14
    :catch_5b
    :try_start_5b
    const-string v1, "Error writing resource to disk. Removing resource from disk."

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_2c

    .line 12
    :try_start_63
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    return-void

    .line 13
    :catch_67
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    return-void

    .line 12
    :goto_6b
    :try_start_6b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_72

    .line 13
    :catch_6f
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    .line 14
    :goto_72
    throw v1

    .line 12
    :catch_73
    const-string v0, "Error opening resource file for writing"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    return-void
.end method
