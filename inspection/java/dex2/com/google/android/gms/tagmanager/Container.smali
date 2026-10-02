.class public Lcom/google/android/gms/tagmanager/Container;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;,
        Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/tagmanager/DataLayer;

.field private zzd:Lcom/google/android/gms/tagmanager/zzeu;

.field private zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzg:J

.field private volatile zzh:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/gtm/zzai;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zze:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzf:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzh:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/Container;->zzc:Lcom/google/android/gms/tagmanager/DataLayer;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/Container;->zzb:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/Container;->zzg:J

    .line 3
    invoke-virtual {p6}, Lcom/google/android/gms/internal/gtm/zzai;->zzc()Lcom/google/android/gms/internal/gtm/zzaa;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    :try_start_24
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzsa;->zzb(Lcom/google/android/gms/internal/gtm/zzaa;)Lcom/google/android/gms/internal/gtm/zzrs;

    move-result-object p1
    :try_end_28
    .catch Lcom/google/android/gms/internal/gtm/zzrz; {:try_start_24 .. :try_end_28} :catch_2c

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/Container;->zzg(Lcom/google/android/gms/internal/gtm/zzrs;)V

    goto :goto_64

    :catch_2c
    move-exception p2

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrz;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x2e

    add-int/2addr p3, p4

    invoke-direct {p5, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Not loading resource: "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because it is invalid: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    .line 7
    :goto_64
    invoke-virtual {p6}, Lcom/google/android/gms/internal/gtm/zzai;->zza()I

    move-result p1

    if-eqz p1, :cond_96

    .line 8
    invoke-virtual {p6}, Lcom/google/android/gms/internal/gtm/zzai;->zzi()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    new-array p3, p2, [Lcom/google/android/gms/internal/gtm/zzag;

    invoke-interface {p1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/gtm/zzag;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzf()Lcom/google/android/gms/tagmanager/zzeu;

    move-result-object p3

    if-nez p3, :cond_83

    const-string p1, "evaluateTags called for closed container."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    return-void

    :cond_83
    new-instance p4, Ljava/util/ArrayList;

    .line 10
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    array-length p5, p1

    :goto_89
    if-ge p2, p5, :cond_93

    aget-object p6, p1, p2

    .line 12
    invoke-interface {p4, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_89

    .line 13
    :cond_93
    invoke-virtual {p3, p4}, Lcom/google/android/gms/tagmanager/zzeu;->zze(Ljava/util/List;)V

    :cond_96
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/gtm/zzrs;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/util/HashMap;

    .line 15
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/Container;->zze:Ljava/util/Map;

    new-instance p4, Ljava/util/HashMap;

    .line 16
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/Container;->zzf:Ljava/util/Map;

    const-string p4, ""

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/Container;->zzh:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/Container;->zzc:Lcom/google/android/gms/tagmanager/DataLayer;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/Container;->zzb:Ljava/lang/String;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzg:J

    .line 17
    invoke-direct {p0, p6}, Lcom/google/android/gms/tagmanager/Container;->zzg(Lcom/google/android/gms/internal/gtm/zzrs;)V

    return-void
.end method

.method private final declared-synchronized zzf()Lcom/google/android/gms/tagmanager/zzeu;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzd:Lcom/google/android/gms/tagmanager/zzeu;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method private final zzg(Lcom/google/android/gms/internal/gtm/zzrs;)V
    .registers 11

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrs;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzh:Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/tagmanager/zzdl;

    invoke-direct {v7}, Lcom/google/android/gms/tagmanager/zzdl;-><init>()V

    .line 1
    new-instance v1, Lcom/google/android/gms/tagmanager/zzeu;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zza:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzc:Lcom/google/android/gms/tagmanager/DataLayer;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/tagmanager/DataLayer;

    new-instance v5, Lcom/google/android/gms/tagmanager/zzv;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/google/android/gms/tagmanager/zzv;-><init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzu;)V

    new-instance v6, Lcom/google/android/gms/tagmanager/zzx;

    invoke-direct {v6, p0, v0}, Lcom/google/android/gms/tagmanager/zzx;-><init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzw;)V

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/tagmanager/zzeu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzrs;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzaq;Lcom/google/android/gms/tagmanager/zzaq;Lcom/google/android/gms/tagmanager/zzdl;[B)V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/Container;->zzh(Lcom/google/android/gms/tagmanager/zzeu;)V

    const-string p1, "_gtm.loadEventEnabled"

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/Container;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzc:Lcom/google/android/gms/tagmanager/DataLayer;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzb:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gtm.id"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gtm.load"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->pushEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_51
    return-void
.end method

.method private final declared-synchronized zzh(Lcom/google/android/gms/tagmanager/zzeu;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->zzd:Lcom/google/android/gms/tagmanager/zzeu;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzf()Lcom/google/android/gms/tagmanager/zzeu;

    move-result-object v0

    if-nez v0, :cond_14

    const-string p1, "getBoolean called for closed container."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzf()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 3
    :cond_14
    :try_start_14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzeu;->zza(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzds;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzak;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzg(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2a} :catch_2b

    return p1

    :catch_2b
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x42

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Calling getBoolean() threw an exception: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Returning default value."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzf()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getContainerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzf()Lcom/google/android/gms/tagmanager/zzeu;

    move-result-object v0

    if-nez v0, :cond_14

    const-string p1, "getDouble called for closed container."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_14
    :try_start_14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzeu;->zza(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzds;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzak;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzi(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2a} :catch_2b

    return-wide v0

    :catch_2b
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x41

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Calling getDouble() threw an exception: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Returning default value."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRefreshTime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzg:J

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzf()Lcom/google/android/gms/tagmanager/zzeu;

    move-result-object v0

    if-nez v0, :cond_14

    const-string p1, "getLong called for closed container."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzj()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_14
    :try_start_14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzeu;->zza(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzds;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzak;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzk(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2a} :catch_2b

    return-wide v0

    :catch_2b
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x3f

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Calling getLong() threw an exception: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Returning default value."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzj()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzf()Lcom/google/android/gms/tagmanager/zzeu;

    move-result-object v0

    if-nez v0, :cond_10

    const-string p1, "getString called for closed container."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzm()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_10
    :try_start_10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzeu;->zza(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzds;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzak;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_22} :catch_23

    return-object p1

    :catch_23
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x41

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Calling getString() threw an exception: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Returning default value."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfv;->zzm()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDefault()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public registerFunctionCallMacroCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;)V
    .registers 5

    if-eqz p2, :cond_f

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zze:Ljava/util/Map;

    .line 2
    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zze:Ljava/util/Map;

    .line 3
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1

    .line 0
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Macro handler must be non-null"

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerFunctionCallTagCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;)V
    .registers 5

    if-eqz p2, :cond_f

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzf:Ljava/util/Map;

    .line 2
    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzf:Ljava/util/Map;

    .line 3
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1

    .line 0
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Tag callback must be non-null"

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterFunctionCallMacroCallback(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zze:Ljava/util/Map;

    .line 1
    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zze:Ljava/util/Map;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public unregisterFunctionCallTagCallback(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzf:Ljava/util/Map;

    .line 1
    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzf:Ljava/util/Map;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method final zza(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zze:Ljava/util/Map;

    .line 1
    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zze:Ljava/util/Map;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzf:Ljava/util/Map;

    .line 1
    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->zzf:Ljava/util/Map;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->zzf()Lcom/google/android/gms/tagmanager/zzeu;

    move-result-object v0

    if-nez v0, :cond_c

    const-string p1, "evaluateTags called for closed container."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_c
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzeu;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method final zze()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->zzd:Lcom/google/android/gms/tagmanager/zzeu;

    return-void
.end method
