.class final Lcom/google/android/gms/internal/fido/zzee;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/fido/zzeg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzeg;->zzo()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzee;->zzb([Ljava/lang/String;)Lcom/google/android/gms/internal/fido/zzeg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzee;->zza:Lcom/google/android/gms/internal/fido/zzeg;

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/fido/zzeg;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzee;->zza:Lcom/google/android/gms/internal/fido/zzeg;

    return-object v0
.end method

.method private static zzb([Ljava/lang/String;)Lcom/google/android/gms/internal/fido/zzeg;
    .registers 8

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzeh;->zza()Lcom/google/android/gms/internal/fido/zzeg;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_44

    aget-object v4, p0, v3

    .line 4
    :try_start_15
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/fido/zzeg;
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_28

    return-object v5

    :catchall_28
    move-exception v5

    .line 5
    instance-of v6, v5, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v6, :cond_31

    .line 6
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    :cond_31
    const/16 v6, 0xa

    .line 7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 4
    :cond_44
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v1, "No logging platforms found:"

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
