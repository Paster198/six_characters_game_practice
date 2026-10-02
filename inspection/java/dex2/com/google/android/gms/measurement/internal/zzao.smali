.class final Lcom/google/android/gms/measurement/internal/zzao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field private final zza:Ljava/util/EnumMap;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/util/EnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumMap;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/util/EnumMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;
    .registers 8

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzjw;->values()[Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_3d

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-eq v2, v3, :cond_1c

    goto :goto_3d

    .line 5
    :cond_1c
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzjw;->values()[Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    :goto_22
    if-ge v1, v3, :cond_37

    aget-object v5, v2, v1

    add-int/lit8 v6, v4, 0x1

    .line 6
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzan;->zzb(C)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v4

    .line 7
    invoke-virtual {v0, v5, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    move v4, v6

    goto :goto_22

    :cond_37
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzao;

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Ljava/util/EnumMap;)V

    return-object p0

    .line 3
    :cond_3d
    :goto_3d
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzao;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzao;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzjw;->values()[Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_27

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/util/EnumMap;

    .line 3
    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzan;

    if-nez v4, :cond_1d

    .line 4
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzan;->zza:Lcom/google/android/gms/measurement/internal/zzan;

    .line 5
    :cond_1d
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzan;)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzjw;)Lcom/google/android/gms/measurement/internal/zzan;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzan;

    if-nez p1, :cond_c

    .line 2
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzan;->zza:Lcom/google/android/gms/measurement/internal/zzan;

    :cond_c
    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/measurement/internal/zzjw;I)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Lcom/google/android/gms/measurement/internal/zzan;

    const/16 v1, -0x1e

    if-eq p2, v1, :cond_1e

    const/16 v1, -0x14

    if-eq p2, v1, :cond_1b

    const/16 v1, -0xa

    if-eq p2, v1, :cond_18

    if-eqz p2, :cond_1b

    const/16 v1, 0x1e

    if-eq p2, v1, :cond_15

    goto :goto_20

    .line 2
    :cond_15
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzan;->zze:Lcom/google/android/gms/measurement/internal/zzan;

    goto :goto_20

    :cond_18
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzan;->zzd:Lcom/google/android/gms/measurement/internal/zzan;

    goto :goto_20

    :cond_1b
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzan;->zzf:Lcom/google/android/gms/measurement/internal/zzan;

    goto :goto_20

    :cond_1e
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzan;->zzh:Lcom/google/android/gms/measurement/internal/zzan;

    .line 1
    :goto_20
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/util/EnumMap;

    .line 2
    invoke-virtual {p2, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzan;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzao;->zza:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
