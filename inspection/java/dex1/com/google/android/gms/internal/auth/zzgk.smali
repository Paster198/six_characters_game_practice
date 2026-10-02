.class final Lcom/google/android/gms/internal/auth/zzgk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Ljava/lang/Class;

.field private static final zzc:Lcom/google/android/gms/internal/auth/zzgz;

.field private static final zzd:Lcom/google/android/gms/internal/auth/zzgz;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-string v1, "com.google.protobuf.GeneratedMessage"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-object v1, v0

    :goto_9
    sput-object v1, Lcom/google/android/gms/internal/auth/zzgk;->zzb:Ljava/lang/Class;

    :try_start_b
    const-string v1, "com.google.protobuf.UnknownFieldSetSchema"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_12

    goto :goto_13

    :catchall_12
    move-object v1, v0

    :goto_13
    if-nez v1, :cond_16

    goto :goto_26

    :cond_16
    const/4 v2, 0x0

    :try_start_17
    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/zzgz;
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_26

    move-object v0, v1

    .line 2
    :catchall_26
    :goto_26
    sput-object v0, Lcom/google/android/gms/internal/auth/zzgk;->zzc:Lcom/google/android/gms/internal/auth/zzgz;

    new-instance v0, Lcom/google/android/gms/internal/auth/zzhb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzhb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzgk;->zzd:Lcom/google/android/gms/internal/auth/zzgz;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/auth/zzgz;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgk;->zzc:Lcom/google/android/gms/internal/auth/zzgz;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/auth/zzgz;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgk;->zzd:Lcom/google/android/gms/internal/auth/zzgz;

    return-object v0
.end method

.method static zzc(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/auth/zzgz;)Ljava/lang/Object;
    .registers 7

    if-nez p3, :cond_6

    .line 1
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/auth/zzgz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_6
    int-to-long v0, p2

    .line 2
    invoke-virtual {p4, p3, p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->zzd(Ljava/lang/Object;IJ)V

    return-object p3
.end method

.method static zzd(Lcom/google/android/gms/internal/auth/zzgz;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/auth/zzgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzgz;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgz;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static zze(Ljava/lang/Class;)V
    .registers 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/auth/zzev;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgk;->zzb:Ljava/lang/Class;

    if-eqz v0, :cond_1b

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_1b

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 3
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    return-void
.end method

.method static zzf(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_e

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    return v0

    :cond_d
    return v1

    :cond_e
    return v0
.end method
