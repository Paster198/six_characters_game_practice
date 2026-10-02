.class public final Lcom/google/android/gms/measurement/internal/zzba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field public static final zza:Lcom/google/android/gms/measurement/internal/zzba;


# instance fields
.field private final zzb:I

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/Boolean;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/util/EnumMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzba;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    const/16 v2, 0x64

    .line 2
    invoke-direct {v0, v1, v2, v1, v1}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzba;->zza:Lcom/google/android/gms/measurement/internal/zzba;

    return-void
.end method

.method constructor <init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzf:Ljava/util/EnumMap;

    .line 2
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzh(Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object p1

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzb:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzd:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzba;->zze:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V
    .registers 7

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzf:Ljava/util/EnumMap;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzb:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzba;->zzl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzd:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzba;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zzc(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzba;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 1
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzba;

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    .line 2
    invoke-direct {p0, v0, p1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p0

    :cond_c
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/google/android/gms/measurement/internal/zzjw;

    .line 3
    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 4
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjv;->zzb:Lcom/google/android/gms/measurement/internal/zzjv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjv;->zzb()[Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_2f

    aget-object v5, v2, v4

    .line 5
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzjw;->zze:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzjx;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v6

    .line 8
    invoke-virtual {v1, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_2f
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzba;

    .line 9
    const-string v3, "is_dma_region"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 10
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_41
    const-string v3, "cps_display_str"

    .line 11
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object v2
.end method

.method static zzd(Lcom/google/android/gms/measurement/internal/zzju;I)Lcom/google/android/gms/measurement/internal/zzba;
    .registers 4

    .line 1
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p1, v0, p0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/google/android/gms/measurement/internal/zzba;

    const/16 v0, -0xa

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p0
.end method

.method public static zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzba;
    .registers 10

    if-eqz p0, :cond_44

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_44

    :cond_9
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/google/android/gms/measurement/internal/zzjw;

    .line 3
    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 4
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjv;->zzb:Lcom/google/android/gms/measurement/internal/zzjv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjv;->zzb()[Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    move v6, v0

    :goto_26
    if-ge v6, v4, :cond_3d

    aget-object v7, v3, v6

    add-int/lit8 v8, v5, 0x1

    .line 5
    aget-object v5, p0, v5

    .line 6
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzjx;->zzg(C)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v5

    .line 5
    invoke-virtual {v2, v7, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_26

    :cond_3d
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzba;

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v2, v1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p0

    .line 1
    :cond_44
    :goto_44
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzba;->zza:Lcom/google/android/gms/measurement/internal/zzba;

    return-object p0
.end method

.method public static zzg(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .registers 2

    if-nez p0, :cond_3

    goto :goto_26

    .line 1
    :cond_3
    const-string v0, "ad_personalization"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzjx;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzju;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    goto :goto_26

    :cond_1a
    const/4 p0, 0x1

    .line 4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_20
    const/4 p0, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_26
    :goto_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private final zzl()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzb:I

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjv;->zzb:Lcom/google/android/gms/measurement/internal/zzjv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjv;->zzb()[Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_2d

    aget-object v4, v1, v3

    const-string v5, ":"

    .line 4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzf:Ljava/util/EnumMap;

    .line 5
    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzju;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzjx;->zza(Lcom/google/android/gms/measurement/internal/zzju;)C

    move-result v4

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzba;

    if-nez v0, :cond_5

    goto :goto_24

    :cond_5
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzba;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzc:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzba;->zzc:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzd:Ljava/lang/Boolean;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzba;->zzd:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zze:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzba;->zze:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_24
    :goto_24
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzd:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x3

    goto :goto_11

    :cond_6
    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_10

    const/16 v0, 0xd

    goto :goto_11

    :cond_10
    const/4 v0, 0x7

    .line 3
    :goto_11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zze:Ljava/lang/String;

    if-nez v1, :cond_18

    const/16 v1, 0x11

    goto :goto_1c

    .line 2
    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 3
    :goto_1c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzc:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1d

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit16 v1, v1, 0x89

    add-int/2addr v2, v1

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzb:I

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjv;->zzb:Lcom/google/android/gms/measurement/internal/zzjv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjv;->zzb()[Lcom/google/android/gms/measurement/internal/zzjw;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_63

    .line 5
    aget-object v4, v1, v3

    const-string v5, ","

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzjw;->zze:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzf:Ljava/util/EnumMap;

    .line 9
    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzju;

    const-string v5, "uninitialized"

    if-nez v4, :cond_3b

    .line 10
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 11
    :cond_3b
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzju;->ordinal()I

    move-result v4

    if-eqz v4, :cond_5d

    const/4 v5, 0x1

    if-eq v4, v5, :cond_57

    const/4 v5, 0x2

    if-eq v4, v5, :cond_51

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4b

    goto :goto_60

    :cond_4b
    const-string v4, "granted"

    .line 12
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    :cond_51
    const-string v4, "denied"

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    :cond_57
    const-string v4, "eu_consent_policy"

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 15
    :cond_5d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_63
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzd:Ljava/lang/Boolean;

    if-eqz v1, :cond_6f

    const-string v2, ",isDmaRegion="

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zze:Ljava/lang/String;

    if-eqz v1, :cond_7b

    const-string v2, ",cpsDisplayStr="

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzb:I

    return v0
.end method

.method public final zzb()Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzf:Ljava/util/EnumMap;

    .line 2
    invoke-virtual {v1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzju;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzo(Lcom/google/android/gms/measurement/internal/zzju;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzjw;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjw;->zze:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzd:Ljava/lang/Boolean;

    if-eqz v1, :cond_40

    const-string v2, "is_dma_region"

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zze:Ljava/lang/String;

    if-eqz v1, :cond_49

    const-string v2, "cps_display_str"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzju;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzf:Ljava/util/EnumMap;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzju;

    if-nez v0, :cond_e

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    :cond_e
    return-object v0
.end method

.method public final zzh()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzd:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzf:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzju;

    .line 2
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    if-eq v1, v2, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method
